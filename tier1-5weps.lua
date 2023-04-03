NPC_ID = 680039


function Weapons2h(event, plr, unit)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "           |cFF1b1f46AmdWoW Weapons Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(5, "|cFF12114eYour Honor Points:|r "..plr:GetHonorPoints().."", 0, 0)
	plr:GossipMenuAddItem(5, "|cFF12114eYour Arena Points:|r "..plr:GetArenaPoints().."", 0, 0)
	plr:GossipMenuAddItem(5, "|cFF12114eYour Magic Gold:|r "..plr:GetCustomOnlinePoints().."                                                      |cFFaa7a3c.|r ", 0, 0)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Tier 1 Weapons", 0, 1)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Tier 2 Weapons", 0, 2)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Tier 3 Weapons", 0, 3)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Tier 4 Weapons", 0, 4)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Tier 5 Weapons", 0, 5)
	plr:GossipMenuAddItem(1, "|cFF12471d[Buy]:|r Tier 6 Weapons                                                        |cFFaa7a3c.|r         ", 0, 6)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSendMenu(1, unit)
end


-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function Weapons2hSelect(event, plr, unit, sender, id, code)
	if (id == 0) then
		Weapons2h(event, plr, unit)
	end
	
    if (id == 1) then
        plr:CustomVendor(unit, 60207, true)
    end
    
    if (id == 2) then
        plr:CustomVendor(unit, 60201, true)
    end
	
    if (id == 3) then
        plr:CustomVendor(unit, 60202, true)
    end
	
    if (id == 4) then
        plr:CustomVendor(unit, 60203, true)
    end
    
    if (id == 5) then
        plr:CustomVendor(unit, 60204, true)
    end
	
	if (id == 6) then
        plr:CustomVendor(unit, 60208, true)
    end
	if (id == 999) then
		plr:GossipComplete()
	end
end
RegisterCreatureGossipEvent(NPC_ID, 1, Weapons2h)
RegisterCreatureGossipEvent(NPC_ID, 2, Weapons2hSelect)