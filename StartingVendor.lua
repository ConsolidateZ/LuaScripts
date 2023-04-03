
NPC_ID = 963300

function OnGossipHello(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Starting Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Starter Weapons", 0, 1)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Starter Jewelry", 0, 2)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Starter Armor", 0, 3)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Starter Mounts                                                                                  |cFFaa7a3c.|r    ", 0, 4)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSendMenu(1, obj)
end


--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)
    if (id == 1) then
        plr:CustomVendor(obj, 60042, true)
    end
    
    if (id == 2) then
        plr:CustomVendor(obj, 60045, true)
    end
    
    if (id == 3) then
        plr:CustomVendor(obj, 61100, true)
    end
    
    if (id == 4) then
        plr:CustomVendor(obj, 60038, true)
    end
	
	if (id == 999) then
		plr:GossipComplete()
	end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)