
local function NpcOnGossipHello(event, player, object)

	object:SendUnitWhisper( "Dropped in Vault of Archavon, raid difficulty 25 or", 0, player, true )

	object:SendUnitWhisper( "(Normal) Forge of Souls, Pit of Saron", 0, player, true )
    
	player:SendListInventory(object, object:GetEntry(), true)

end


RegisterCreatureGossipEvent(100170, 1, NpcOnGossipHello)



local function NpcOnGossipHello(event, player, object)
    
	object:SendUnitWhisper( "Tokens earned by killing enemies.", 0, player, true )
    
	player:SendListInventory(object, object:GetEntry(), true)

end


RegisterCreatureGossipEvent(190023, 1, NpcOnGossipHello)




local function NpcOnGossipHello(event, player, object)
    
	object:SendUnitWhisper( "teleporter > new area > durnhold keep!", 0, player, true )
    
	object:SendUnitWhisper( "or Level 3 Item Dust is dropable in Gurubashi Arena", 0, player, true )
    
	player:SendListInventory(object, object:GetEntry(), true)

end

RegisterCreatureGossipEvent(190032, 1, NpcOnGossipHello)
