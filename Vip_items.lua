
NPC_ID = 60052 --Vip Item Sale vendor ID

function OnGossipHello(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "                  |cFF1b1f46AmdWoW VIP Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(0, "Vip Weapons", 1, 30)
	plr:GossipMenuAddItem(0, "Vip Armors", 1, 31)
	plr:GossipMenuAddItem(0, "Vip Jewelery                                                                                |cFFaa7a3c.|r ", 1, 32)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
	--plr:GossipMenuAddItem(0, "Vip1", 1, 1)
	--plr:GossipMenuAddItem(0, "Vip2", 1, 2)
	--plr:GossipMenuAddItem(0, "Vip3", 1, 3)
	--plr:GossipMenuAddItem(0, "Vip4", 1, 4)
	--plr:GossipMenuAddItem(0, "Vip5", 1, 5)
	--plr:GossipMenuAddItem(0, "Vip6", 1, 6)
	--plr:GossipMenuAddItem(0, "Vip7", 1, 7)
	--plr:GossipMenuAddItem(0, "[Exit]", 0, 999)
    plr:GossipSendMenu(1, obj)
end


--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)

	if (id == 30) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                  |cFF1b1f46AmdWoW VIP Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "Vip1 Weapons", 1, 1)
		plr:GossipMenuAddItem(0, "Vip2 Weapons", 1, 2)
		plr:GossipMenuAddItem(0, "Vip3 Weapons", 1, 3)
		plr:GossipMenuAddItem(0, "Vip4 Weapons", 1, 4)
		plr:GossipMenuAddItem(0, "Vip5 Weapons", 1, 5)
		plr:GossipMenuAddItem(0, "Vip6 Weapons", 1, 6)
		plr:GossipMenuAddItem(0, "Vip7 Weapons                                                                                 |cFFaa7a3c.|r ", 1, 7)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "back", 1, 99)
		plr:GossipSendMenu(1, obj)
    end
	
	if (id == 31) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                  |cFF1b1f46AmdWoW VIP Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "Vip1 Armors", 1, 8)
		plr:GossipMenuAddItem(0, "Vip2 Armors", 1, 9)
		plr:GossipMenuAddItem(0, "Vip3 Armors", 1, 10)
		plr:GossipMenuAddItem(0, "Vip4 Armors", 1, 11)
		plr:GossipMenuAddItem(0, "Vip5 Armors", 1, 12)
		plr:GossipMenuAddItem(0, "Vip6 Armors", 1, 13)
		plr:GossipMenuAddItem(0, "Vip7 Armors                                                                                 |cFFaa7a3c.|r ", 1, 14)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "back", 1, 99)
		plr:GossipSendMenu(1, obj)
    end
	
	if (id == 32) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                  |cFF1b1f46AmdWoW VIP Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "Vip1 Jewelery", 1, 15)
		plr:GossipMenuAddItem(0, "Vip2 Jewelery", 1, 16)
		plr:GossipMenuAddItem(0, "Vip3 Jewelery", 1, 17)
		plr:GossipMenuAddItem(0, "Vip4 Jewelery", 1, 18)
		plr:GossipMenuAddItem(0, "Vip5 Jewelery", 1, 19)
		plr:GossipMenuAddItem(0, "Vip6 Jewelery", 1, 20)
		plr:GossipMenuAddItem(0, "Vip7 Jewelery                                                                                 |cFFaa7a3c.|r ", 1, 21)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "back", 1, 99)
		plr:GossipSendMenu(1, obj)
    end
	
	if (id == 99) then
        plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                  |cFF1b1f46AmdWoW VIP Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "Vip Weapons", 1, 30)
		plr:GossipMenuAddItem(0, "Vip Armors", 1, 31)
		plr:GossipMenuAddItem(0, "Vip Jewelery                                                                                 |cFFaa7a3c.|r ", 1, 32)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "back", 1, 99)
		plr:GossipSendMenu(1, obj)
    end
	
	if (id == 999) then
		plr:GossipComplete()
	end
	----------------------------------------------------------------------------------------------------------------------------------

    if (id == 1) then
        plr:CustomVendor(obj, 60075) --Enter Vip1 Weapon vendor ID
    end
    
    if (id == 2) then
        plr:CustomVendor(obj, 60076) --Enter vip2 Weapon vendor ID here 
    end
    
    if (id == 3) then
        plr:CustomVendor(obj, 60077) --Enter vip3 Weapon vendor ID here
    end
    
    if (id == 4) then
        plr:CustomVendor(obj, 60078) --Enter vip4 Weapon vendor ID here
    end
    
    if (id == 5) then
        plr:CustomVendor(obj, 60079) --Enter vip5 Weapon vendor ID here
    end
	
	if (id == 6) then
        plr:CustomVendor(obj, 60081) --Enter vip6 Weapon vendor ID here
    end
	
	if (id == 7) then
        plr:CustomVendor(obj, 60082) --Enter vip7 Weapon vendor ID here
    end
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (id == 8) then
        plr:CustomVendor(obj, 60067) --Enter vip1 Armor vendor ID here
    end
	
	if (id == 9) then
        plr:CustomVendor(obj, 60068) --Enter vip2 Armor vendor ID here
    end
	
	if (id == 10) then
        plr:CustomVendor(obj, 60069) --Enter vip3 Armor vendor ID here
    end
	
	if (id == 11) then
        plr:CustomVendor(obj, 60070) --Enter vip4 Armor vendor ID here
    end
	
	if (id == 12) then
        plr:CustomVendor(obj, 60071) --Enter vip5 Armor vendor ID here
    end
	
	if (id == 13) then
        plr:CustomVendor(obj, 60072) --Enter vip6 Armor vendor ID here
    end
	
	if (id == 14) then
        plr:CustomVendor(obj, 60073) --Enter vip7 Armor vendor ID here
    end
	
	-------------------------------------------------------------------------------------------------------------------------------------------------------
	
	if (id == 15) then
        plr:CustomVendor(obj, 70001) --Enter vip1 Jewelery vendor ID here
    end
	
	if (id == 16) then
        plr:CustomVendor(obj, 70002) --Enter vip2 Jewelery vendor ID here
    end
	
	if (id == 17) then
        plr:CustomVendor(obj, 70003) --Enter vip3 Jewelery vendor ID here
    end
	
	if (id == 18) then
        plr:CustomVendor(obj, 70004) --Enter vip4 Jewelery vendor ID here
    end
	
	if (id == 19) then
        plr:CustomVendor(obj, 70005) --Enter vip5 Jewelery vendor ID here
    end
	
	if (id == 20) then
        plr:CustomVendor(obj, 70006) --Enter vip6 Jewelery vendor ID here
    end
	
	if (id == 21) then
        plr:CustomVendor(obj, 70007) --Enter vip7 Jewelery vendor ID here
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)