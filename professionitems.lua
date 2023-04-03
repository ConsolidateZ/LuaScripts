
NPC_ID = 60051

function OnGossipHello(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(0, "Inscription", 1, 1)
	plr:GossipMenuAddItem(0, "Engineering", 1, 2)
	plr:GossipMenuAddItem(0, "Tailoring", 1, 3)
	plr:GossipMenuAddItem(0, "Enchanting", 1, 4)
	plr:GossipMenuAddItem(0, "Blacksmithing", 1, 5)
	plr:GossipMenuAddItem(0, "Alchemy", 1, 6)
	plr:GossipMenuAddItem(0, "First Aid", 1, 7)
	plr:GossipMenuAddItem(0, "Leatherworking", 1, 8)
	plr:GossipMenuAddItem(0, "Jewelcrafting", 1, 9)
	plr:GossipMenuAddItem(0, "Cooking", 1, 10)
    plr:GossipMenuAddItem(0, "Fishing", 1, 11)
    plr:GossipSendMenu(1, obj)
end


--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)
    if (id == 1) then
        plr:CustomVendor(obj, 71104, true)
    end
    
    if (id == 2) then
        plr:CustomVendor(obj, 71103, true)
    end
    
    if (id == 3) then
        plr:CustomVendor(obj, 71107, true)
    end
    
    if (id == 4) then
        plr:CustomVendor(obj, 71102, true)
    end
    
    if (id == 5) then
        plr:CustomVendor(obj, 71101, true)
    end
	
	if (id == 6) then
        plr:CustomVendor(obj, 71100, true)
    end
	
	if (id == 7) then
        plr:CustomVendor(obj, 71108, true)
    end
	
	if (id == 8) then
        plr:CustomVendor(obj, 71106, true)
    end
	
	if (id == 9) then
        plr:CustomVendor(obj, 71105, true)
    end
	
	if (id == 10) then
        plr:CustomVendor(obj, 71109, true)
    end
	if (id == 11) then
        plr:CustomVendor(obj, 71110, true)
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)