
NPC_ID = 60046

function OnGossipHello(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "              |cFF1b1f46AmdWoW Gems Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(0, "Blue Gems", 1, 1)
	plr:GossipMenuAddItem(0, "Green Gems", 1, 2)
	plr:GossipMenuAddItem(0, "Purple Gems", 1, 3)
	plr:GossipMenuAddItem(0, "Red Gems", 1, 4)
	plr:GossipMenuAddItem(0, "Yellow Gems", 1, 5)
	plr:GossipMenuAddItem(0, "Orange Gems", 1, 6)
	plr:GossipMenuAddItem(0, "Meta Gems", 1, 7)
	plr:GossipMenuAddItem(0, "Prismatic Gems                                                                                  |cFFaa7a3c.|r    ", 1, 8)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSendMenu(1, obj)
end


--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)
    if (id == 1) then
        plr:CustomVendor(obj, 500147, true)
    end
    
    if (id == 2) then
        plr:CustomVendor(obj, 500148, true)
    end
    
    if (id == 3) then
        plr:CustomVendor(obj, 500149, true)
    end
    
    if (id == 4) then
        plr:CustomVendor(obj, 500150, true)
    end
    
    if (id == 5) then
        plr:CustomVendor(obj, 500151, true)
    end
	
	if (id == 6) then
        plr:CustomVendor(obj, 500152, true)
    end
	
	if (id == 7) then
        plr:CustomVendor(obj, 500153, true)
    end
	
	if (id == 8) then
        plr:CustomVendor(obj, 500154, true)
    end
	if (id == 999) then
		plr:GossipComplete()
	end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)