local ItemId = 111114 -- Item needs to have spell on use
local MenuId = 123 -- Unique ID to recognice player gossip menu among others
local Reward = 1000

local function MG(event, player, object)

    player:GossipClearMenu() -- required for player gossip
		player:SetCustomOnlinePoints(player:GetCustomOnlinePoints() + 1000)
		player:CastSpell(player, 55420, true)
		player:SaveToDB()
		player:SendAreaTriggerMessage("Congratulations! You have won 1000 Magic Gold! , do not forget to keep voting!")
		player:GossipMenuAddItem(2, "Item", 1, 1)
		player:GossipSendMenu(1, object, MenuId) -- MenuId required for player gossip
end

local function Remove(event, player, object, sender, intid, code, menuid)
	if (intid == 1) then
	player:RemoveItem(111114, 1)
	end
end

RegisterItemGossipEvent(ItemId, 1, MG)
RegisterItemGossipEvent(ItemId, 2, Remove)
