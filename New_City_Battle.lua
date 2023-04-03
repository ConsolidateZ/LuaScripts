
local CityWar = {}

local CityWarState = 4 -- 4 neutral, 1 capturing, 2 captured, 3 won
local WarFactionTaken = 2 -- 0 alliance, 1 horde, 2 neutral / none

local CityWarScores = { [0] = { 0 }, [1] = { 0 } } -- 0 alliance 1 horde -- DO NOT TOUCH

local FlagPosition = { 1, -6200.186, -3902.394, -60.281, 3.130 } -- mapid, x, y, z, o
local FlagObjectId = { 
    [0] = { 500008, 500009, 500010 }, -- alliance   [0][1]:A1, [0][2]:A2, [0][3]:A3
    [1] = { 500011, 500012, 500013 }, -- horde      [1][1]:H1, [1][2]:H2, [1][3]:H3
    [2] = { 0, 0, 0, 500007 },        -- neutral    [2][1]:N
} 

local StagesTimer = { 60, 600, 3600 } -- time in seconds

local SetCoachDelay = 1500 -- delay between action
local CoachDelay = 0 -- DO NOT TOUCH
local CoachGobjs = { 500007, 500008, 500009, 500010, 500011, 500012, 500013 } -- DO NOT TOUCH
local CoachScheduler = {} -- timestamp, warState, factionTaken

local SMSG_INIT_WORLD_STATES = 0x2C2
local SMSG_UPDATE_WORLD_STATE = 0x2C3

function Player:InitializeWorldState(Map, Zone, StateID, Value)
    local data = CreatePacket(SMSG_INIT_WORLD_STATES, 18);
    data:WriteULong(Map);
    data:WriteULong(Zone);
    data:WriteULong(0);
    data:WriteUShort(1);
    data:WriteULong(StateID);
    data:WriteULong(Value);
    self:SendPacket(data)
end

function Player:UpdateWorldState(StateID, Value)
    local data = CreatePacket(SMSG_UPDATE_WORLD_STATE, 8);
    data:WriteULong(StateID);
    data:WriteULong(Value);
    self:SendPacket(data)
end

local function contains(table, val)
   for i=1,#table do
      if table[i] == val then 
         return true
      end
   end
   return false
end

local function HandleCityWarFlags(event, creature, diff)
    CoachDelay = CoachDelay + diff
    if (CoachDelay >= SetCoachDelay) then
        CityWar.HandleFlags(creature) -- this will handle the flags if need to spawn
        CoachDelay = 0
    end
end
RegisterCreatureEvent(190014, 7, HandleCityWarFlags)

-- [[ Give winner faction rewards
function CityWar.RewardFactionWinner(factionId)
    for _,v in pairs(GetPlayersInWorld(factionId)) do
        if (v:GetZoneId() == 400 ) then -- is in thousand needless
            v:GivePvPCredit(5000, 1000)
            v:SetCustomOnlinePoints(v:GetCustomOnlinePoints() + 200)
            v:SendBroadcastMessage("|ccc00FF00Your faction has won the battle in City War, you have been rewarded:")
            v:SendBroadcastMessage("+5.000 honor points")
            v:SendBroadcastMessage("+1.000 arena points")
            v:SendBroadcastMessage("+200 magic gold")
			v:RemoveItem( 111111, 1 )
			if (freebagslots(v) < 1) then
				SendMail("City Battle Reward", "Your faction has won the battle", v:GetGUIDLow(), v:GetGUIDLow(), 61, 0, 0, 0, 111111, 1)
				v:SendBroadcastMessage("|ccc00FF00You have to check your mailbox too as you did not have enough space in your bag, if there is nothing then please relog.")
			else
				v:AddItem( 111111, 1 )
			end
            v:UpdateWorldState(2313, CityWarScores[factionId][1] ) -- Set correct Alliance score
        end
    end
    CityWarScores[factionId][1] = CityWarScores[factionId][1] + 1
end

function CityWar.HandleFactionStage(stage, factionId)
    if (WarFactionTaken == 0) then
        if (stage == 2) then
            SendWorldMessage("|cffFF5733[City War]|cff137AFD The Alliance has claimed the flag and will win in 10 minutes if left unchallenged!")
			for _,v in pairs(GetPlayersInWorld(factionId)) do
				v:PlayAll(8174)
			end		
        elseif (stage == 3) then
            SendWorldMessage("|cffFF5733[City War]|cff137AFD The Alliance has won the war!")
            SendWorldMessage("|cffFF5733[City War]|r Next battle starts in 1 hour!")
            CityWar.RewardFactionWinner(factionId)
			for _,v in pairs(GetPlayersInWorld()) do
			v:PlayAll(8455)	
			end			
        end
    else
        if (stage == 2) then
            SendWorldMessage("|cffFF5733[City War]|cffFD8F13 The Horde has claimed the flag and will win in 10 minutes if left unchallenged!")
			for _, v in pairs(GetPlayersInWorld()) do
				v:PlayAll(8212)
			end	
        elseif (stage == 3) then
            SendWorldMessage("|cffFF5733[City War]|cffFD8F13 The Horde has won the war!")
            SendWorldMessage("|cffFF5733[City War]|r Next battle starts in 1 hour!")
            CityWar.RewardFactionWinner(factionId)
			for _,v in pairs(GetPlayersInWorld()) do
			v:PlayAll(8454)	
			end
        end
    end
end

function CityWar.HandleFlags(handler)
    _spawned, _spawns, _flagid = false, 0, 0
    worldObjectList = handler:GetNearObjects( 50, 0 )
    for _,v1 in pairs(worldObjectList) do
        if (v1:ToGameObject()) then -- make sure its gameObject
            if (v1:GetEntry() == FlagObjectId[WarFactionTaken][CityWarState]) then
                -- make sure dont spawn the same flag because it is already spawned here
                _spawned = true
                _spawns = _spawns + 1
                _flagid = FlagObjectId[WarFactionTaken][CityWarState]
            else
                -- now delete all city war gameobjects that dont belong to this war state
                if contains(CoachGobjs, v1:GetEntry()) then
                    print("[City War] Removed not needed flag with GUIDLow: "..v1:GetDBTableGUIDLow().." "..v1:GetName())
                    v1:RemoveFromWorld(true)
                end
            end
        end
    end
    
    if (CoachScheduler[1] ~= nil) then
        if (CoachScheduler[1] > 0 and os.time() >= CoachScheduler[1]) then
            if (CoachScheduler[2] < 4) then -- if the new war state is < 4
                CityWarState = CoachScheduler[2]
                print("[City War] State is set to ["..CoachScheduler[2].."] and faction taken is ["..WarFactionTaken.."].")
                

                CoachScheduler[1] = os.time() + StagesTimer[CityWarState]
                    
                CoachScheduler[2] = CoachScheduler[2] + 1
                
                CityWar.HandleFactionStage(CityWarState, WarFactionTaken)
                
                print("[City War] Coach set new schedule at "..CoachScheduler[1]-os.time().." seconds until war state ["..CoachScheduler[2].."] and factionTaken ["..WarFactionTaken.."].")
            elseif (CoachScheduler[2] >= 4) then
                CityWarState = 4
                WarFactionTaken = 2
                CoachScheduler[1] = nil
                CoachScheduler[2] = nil
                
                SendWorldMessage("|cffFF5733[City War] The War has begun! Good luck everyone!")
				for _, v in pairs(GetPlayersInWorld()) do
					v:PlayAll(8232)
				end	
                print("[City-War] The war has begun!")
            end
        end
    end
    
    if (_spawned) then
        for i=1,_spawns do
            worldObject = handler:GetNearObject( 50 )
            if (i < _spawns and worldObject:ToGameObject()) then
                worldObject:RemoveFromWorld(true)
                print("[City War] Removed duplicate city war flag entry (".._flagid..").") 
            end
        end
    else
        if (FlagObjectId[WarFactionTaken][CityWarState] ~= nil) then
            handler:AddGameObject(FlagObjectId[WarFactionTaken][CityWarState], FlagPosition[2], FlagPosition[3], FlagPosition[4], FlagPosition[5])
            print("[City War] Spawned flag acording to war state ["..CityWarState.."] and faction taken["..WarFactionTaken.."].")
        end
    end
end

function Player:HasCapturedFlag(go)
    captured = false
    if (go:GetGoState() == 0 ) then
        captured = true
    end
    return captured
end

local _clicks1 = 0
local function CityWarFirstFlag(event, object, player)
    player:RemoveAura( 642 )
    
    if (object:GetGoState() == 0 and _clicks1 == 0) then -- this check if cast completed and only 1 click has been done
        
        CityWarState = 1
        WarFactionTaken = player:GetTeam()
       
        if (WarFactionTaken == 0) then
            SendWorldMessage("|cffFF5733[City War]|cff137AFD The Alliance will claim the flag in 1 minute by ["..player:GetName().."], prepare..")
			for _,v in pairs(GetPlayersInWorld()) do
			v:PlayAll(8174)	
			end
        else
            SendWorldMessage("|cffFF5733[City War]|cffFD8F13 The Horde will claim the flag in 1 minute by ["..player:GetName().."], prepare..")
			for _,v in pairs(GetPlayersInWorld()) do
			player:PlayAll(8212)
			end
        end
        
        CoachScheduler = { os.time() + StagesTimer[CityWarState], 1 }
        print("[City War] Coach time stamp set for "..StagesTimer[CityWarState].." seconds until war state: 2 and factionTaken: "..WarFactionTaken)
        object:RemoveFromWorld(true)
	end
end

RegisterGameObjectEvent(FlagObjectId[2][4], 14, CityWarFirstFlag)

local _clicks2 = 0
local function AssaultAllianceFlag(event, object, player)
    player:RemoveAura( 642 )
    
    if (player:IsAlliance()) then
        player:CastSpell( player, 54899, true )
    else
        if (object:GetGoState() == 0 and _clicks2 == 0) then -- this check if cast completed and only 1 click has been done
            
            CityWarState = 4
            WarFactionTaken = 2
            
            SendWorldMessage("|cffFF5733[City War]|cffFD8F13 The Horde has burned the alliance flag by ["..player:GetName().."]!")
            player:PlayAll(8192)
			
            CoachScheduler[1] = nil
            CoachScheduler[2] = nil
            
            print("[City War] The alliance flag has been burned by ["..player:GetName().."].")
            object:RemoveFromWorld(true)
        end
    end
end

RegisterGameObjectEvent(FlagObjectId[0][2], 14, AssaultAllianceFlag)

local _clicks3 = 0
local function AssaultHordeFlag(event, object, player)
    player:RemoveAura( 642 )
    
    if (player:IsHorde()) then
        player:CastSpell( player, 54899, true )
    else
        if (object:GetGoState() == 0 and _clicks3 == 0) then -- this check if cast completed and only 1 click has been done
            
            CityWarState = 4
            WarFactionTaken = 2
            
            SendWorldMessage("|cffFF5733[City War]|cff137AFD The Alliance has burned the horde flag by ["..player:GetName().."]!")
			player:PlayAll(8213)
            
            CoachScheduler[1] = nil
            CoachScheduler[2] = nil
            
            print("[City War] The horde flag has been burned by ["..player:GetName().."].")
            object:RemoveFromWorld(true)
        end
    end
end

RegisterGameObjectEvent(FlagObjectId[1][2], 14, AssaultHordeFlag)

local function OnZoneUpdate(event, player, newZone, newArea)
    if newZone == 400 then
        player:InitializeWorldState(1, 1377, 0, 1) -- Initialize world state, score 0/0
        player:UpdateWorldState(2317, 1000) -- Sets correct MaxScore
        player:UpdateWorldState(2313, CityWarScores[0][1] ) -- Set correct Alliance score
        player:UpdateWorldState(2314, CityWarScores[1][1] ) -- Set correct Horde score
    end
end

RegisterPlayerEvent(27, OnZoneUpdate)

function freebagslots(player)
	local freebag = 0
	local slot = 23
	local bag = 255
	local bag1 = 0
	local bag2 = 0
	local bag3 = 0
	local bag4 = 0
	while (slot <= 38) do
		if (player:GetItemByPos(bag, slot) == nil) then
			freebag = freebag + 1
		end
		slot = slot + 1
	end
	item = player:GetItemByPos(255, 19)
	if (item ~= nil) then
		bag1 = item:GetBagSize(item) - 1
	end
	item = player:GetItemByPos(255, 20)
	if (item ~= nil) then
		bag2 = item:GetBagSize(item) - 1
	end
	item = player:GetItemByPos(255, 21) 
	if (item ~= nil) then
		bag3 = item:GetBagSize(item) - 1
	end
	item = player:GetItemByPos(255, 22)
	if (item ~= nil) then
		bag4 = item:GetBagSize(item) - 1
	end
	slot = 0
	while (slot <= 35) do
		if (bag1 >= slot) then
			if (player:GetItemByPos(19, slot) == nil) then
				freebag = freebag + 1
			end
		end
		if (bag2 >= slot) then
			if (player:GetItemByPos(20, slot) == nil) then
				freebag = freebag + 1
			end
		end
		if (bag3 >= slot) then
			if (player:GetItemByPos(21, slot) == nil) then
				freebag = freebag + 1
			end
		end
		if (bag4 >= slot) then
			if (player:GetItemByPos(22, slot) == nil) then
				freebag = freebag + 1
			end
		end
		slot = slot + 1
	end
	return freebag
end