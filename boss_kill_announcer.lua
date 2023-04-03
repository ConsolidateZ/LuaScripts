
local CombatTimer = {}

local function OnEnterCombat(event, player, enemy)
	creature = enemy:ToCreature()
	if (creature and CombatTimer[creature:GetGUIDLow()] == nil ) then
		if (creature:IsWorldBoss()) then
			tPos = enemy:GetGUIDLow()
			tC1 = os.time()
			tC2 = player:GetName()
			CombatTimer[creature:GetGUIDLow()] = { tC1, tostring(tC2) }
		end
	end
end

local function OnCreatureKill(event, player, killed)
	if (not killed:IsWorldBoss()) then
		return
	end
	
    isGM = player:IsGM()
    
    if ( isGM ) then
        return
    end
	
    if (player:IsInGroup()) then
            if (player:GetGroup():IsRaidGroup()) then
                    method = "in Raid"
            else
                    method = "in Party"
            end
    end
    
	if (CombatTimer[killed:GetGUIDLow()]) then
		pCTimer = os.time() - CombatTimer[killed:GetGUIDLow()][1].." seconds"
		sKiller = "[PVE] |Hplayer:"..player:GetName().."|h["..player:GetName().."]|h|r"
		sKilled = "["..killed:GetName().."]"
		
		if (player:IsInGroup()) then
			sGroup = "with his friends ( Total: "..player:GetGroup():GetMembersCount().." guys )"
		else
			sGroup = "alone!"
		end
	else
		pCTimer = os.date("time assist")
		sKiller = "|Hplayer:"..player:GetName().."|h["..player:GetName().."]|h|r"
		sKilled = "["..killed:GetName().."]"
		
		if (player:IsInGroup()) then
			sGroup = "with his group ( Total: "..player:GetGroup():GetMembersCount().." guys )"
		else
			sGroup = "alone!"
		end
	end
    CombatTimer[killed:GetGUIDLow()] = nil
	SendWorldMessage(""..sKiller.." killed "..sKilled.." "..sGroup.." in "..pCTimer.."!")
end

RegisterPlayerEvent(33, OnEnterCombat)
RegisterPlayerEvent(7, OnCreatureKill)
