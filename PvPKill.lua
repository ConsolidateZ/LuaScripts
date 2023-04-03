
local SMSG_PVP_CREDIT = 652
function Player:GivePvPCredit(honor, arena)
    data = CreatePacket(SMSG_PVP_CREDIT, 12);
    data:WriteULong(arena)             -- honor
    data:WriteGUID(self:GetGUID())     -- guid
    data:WriteULong(10)                -- rank
    self:SendPacket(data)
    self:ModifyHonorPoints( honor )
    self:ModifyArenaPoints( arena )
end

local function GiveCustomToken(player, victim)
    zoneId = victim:GetZoneId()
    areaOrZoneName = GetAreaName( zoneId )
    player:AddItem(123123, 1)
	local m = math.random(1, 30)
	if(m == 10) then
		player:AddItem(159302, 1)
	end
    SendWorldMessage("|ccc".."00B90B".."["..victim:GetName().."] was killed by ["..player:GetName().."] in "..areaOrZoneName..".")
end

-- prevent honor/arena farming
-- [victimGUID] ={ lastKillerGUID }
local AntiFarm = { }

local function HandlePvPKill(event, player, victim)
    if (player:GetGUIDLow() ~= victim:GetGUIDLow()) then -- do not allow suicide reward
        if (AntiFarm[victim:GetGUIDLow()] == nil) then
            if (player:GetTeam() == victim:GetTeam()) then -- case when kill same faction
                player:GivePvPCredit(140, 100)
                GiveCustomToken(player, victim)
            else
                player:GivePvPCredit(0, 100) -- already give honor
                GiveCustomToken(player, victim)
            end
        elseif (AntiFarm[victim:GetGUIDLow()][1] ~= player:GetGUIDLow()) then
            if (player:GetTeam() == victim:GetTeam()) then -- case when kill same faction
                player:GivePvPCredit(140, 100)
                GiveCustomToken(player, victim)
            else
                player:GivePvPCredit(0, 100) -- already give honor
                GiveCustomToken(player, victim)
            end
        end
        AntiFarm = { [victim:GetGUIDLow()] = { player:GetGUIDLow() } }-- set last killer GUID
    end
end

RegisterPlayerEvent(6, HandlePvPKill)
