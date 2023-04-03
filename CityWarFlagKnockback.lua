local NPC_ID = 36349
local Sanctuary_Range = 7 -- Range in yards
local MESSAGE = "Teleporting to Gundrak"
local MESSAGE1 = "Teleporting out of Gundrak"


function AreaTrigger_MoveInLOS1(event, creature, plr)
			if (plr:GetObjectType() == "Player" and creature:IsWithinDistInMap(plr, Sanctuary_Range)) then
				if(plr:GetZoneId() == 3817) then
                			plr:Teleport(604, 1883.93, 853.51, 178.26, 3.11);
					plr:SendBroadcastMessage(MESSAGE);
				else 
                			plr:Teleport(568, 374, 1407.6, 75, 4.34);
					plr:SendBroadcastMessage(MESSAGE1);
				end
			end	
end
 
RegisterCreatureEvent(NPC_ID, 27, AreaTrigger_MoveInLOS1)
