
local NPC_ID_City_war_teleport = 543282


local City_war_teleport = {}

function City_war_teleport.OnSpawn(event, creature)
	creature:RegisterEvent(City_war_teleport.Teleport, 3000, 0)
end

function City_war_teleport.Teleport(event, delay, pCall, creature)
	local players = creature:GetPlayersInRange(4)
		for _, v in pairs (players) do
            if(v:GetTeam() == 0) then
				v:Teleport(1, -6270.85, -3902.96, -62.01, 0.02)
				creature:Announce("You have been teleported to City War", 0, v, true)
			else
				v:Teleport(1, -6125.40, -3901.27, -59.9, 3.14)
				creature:Announce("You have been teleported to City War", 0, v, true)
			end
		end
end

RegisterCreatureEvent(NPC_ID_City_war_teleport, 5, City_war_teleport.OnSpawn)
