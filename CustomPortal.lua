local NPC_ID = 310003

local Sanctuary_Range = 7 -- Range in yards
local MESSAGE = "Teleporting to dungeon..."
local MESSAGE1 = "Teleporting out of dungeon..."
local MESSAGE2 = "Dungeon is not unlocked yet, un order to unlock it the wareffort most reach state 1"

 
function AreaTrigger_MoveInLOS(event, creature, plr)
 			

				if (plr:GetObjectType() == "Player" and creature:IsWithinDistInMap(plr, Sanctuary_Range)) then
                			plr:Teleport(547, 38.726, -442.74, 3.0, 3.3)
					plr:SendBroadcastMessage(MESSAGE);
				end	


end

 
RegisterCreatureEvent(NPC_ID, 27, AreaTrigger_MoveInLOS)

