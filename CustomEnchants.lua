
local NPC_ID = {
    -- NPC List
    987700,
}

require "base/sc_default"

function EnchantVendor(event, plr, unit)
	plr:Dismount()
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "          |cFF1b1f46AmdWoW Custom Enchants|r", 1, 1)
	plr:GossipMenuAddItem(1, "              |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
	
	plr:GossipMenuAddItem(1, "Enchant: Head", 1, 3)
	plr:GossipMenuAddItem(1, "Enchant: Shoulder", 1, 4)
	plr:GossipMenuAddItem(1, "Enchant: Chest", 1, 5)
	plr:GossipMenuAddItem(1, "Enchant: Wrist", 1, 6)
	plr:GossipMenuAddItem(1, "Enchant: Weapons", 1, 7)
	plr:GossipMenuAddItem(1, "Enchant: Cloak", 1, 8)
	plr:GossipMenuAddItem(1, "Enchant: Hands", 1, 9)
	plr:GossipMenuAddItem(1, "Enchant: Leg", 1, 10)
	plr:GossipMenuAddItem(1, "Enchant: Boots                                                                              |cFFaa7a3c.|r ", 1, 11)
	plr:GossipMenuAddItem(1, "              |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r", 1, 12)

	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSetText("AmdWoW")
    plr:GossipSendMenu(0x7FFFFFFF, unit)
end



-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function TransmogVendorSelect(event, plr, unit, sender, id, code)
    if (id == 3) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                         |cFF1b1f46Head Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Stamina and 100 Resilience|r |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 101)
		plr:GossipMenuAddItem(1, "|cFF0a0735600 Spellpower and 100 Resilience|r  |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 102)
		plr:GossipMenuAddItem(1, "|cFF0a07351600 Attackpower and 100 Resilience|r  |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 103)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)

		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 4) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                     |cFF1b1f46Shoulder Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735300 Stamina and 75 Resilience|r |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 201)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Spellpower and 75 Resilience|r  |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 202)
		plr:GossipMenuAddItem(1, "|cFF0a07351200 Attackpower and 75 Resilience|r  |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 203)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 5) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                       |cFF1b1f46Chest Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735100 Resilience|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 301)
		plr:GossipMenuAddItem(1, "|cFF0a0735800 Attack Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 302)
		plr:GossipMenuAddItem(1, "|cFF0a0735600 Spell Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 303)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 6) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                       |cFF1b1f46Wrist Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735100 Hit Rating|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 401)
		plr:GossipMenuAddItem(1, "|cFF0a0735600 Attack Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 402)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Spell Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 403)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 7) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                      |cFF1b1f46Weapon Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a07352300 Attack Power|r |cFFef1818[Costs: 75000 Honor, 15000 Arena Points and 1500 MG]|r", 1, 501)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Haste Rating|r |cFFef1818[Costs: 75000 Honor, 15000 Arena Points and 1500 MG]|r", 1, 502)
		plr:GossipMenuAddItem(1, "|cFF0a07351600 Spell Power|r |cFFef1818[Costs: 75000 Honor, 15000 Arena Points and 1500 MG]|r", 1, 503)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 8) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                       |cFF1b1f46Cloak Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735100 Haste Rating|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 601)
		plr:GossipMenuAddItem(1, "|cFF0a0735600 Attack Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 602)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Spell Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 603)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 9) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                       |cFF1b1f46Hands Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735100 Haste Rating|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 701)
		plr:GossipMenuAddItem(1, "|cFF0a0735600 Attack Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 702)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Spell Power|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 703)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 10) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                       |cFF1b1f46Legs Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735300 Stamina and 75 Resilience|r |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 801)
		plr:GossipMenuAddItem(1, "|cFF0a0735400 Spellpower and 75 Resilience|r  |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 802)
		plr:GossipMenuAddItem(1, "|cFF0a07351200 Attackpower and 75 Resilience|r  |cFFef1818[Costs: 50000 Honor, 10000 Arena Points and 1000 MG]|r", 1, 803)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 11) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "                       |cFF1b1f46Boots Enchants|r", 1, 1)
		plr:GossipMenuAddItem(1, "                |cFF4becff------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 2)
		plr:GossipMenuAddItem(1, "|cFF0a0735300 Stamina and Increased Movement Speed|r |cFFef1818[Costs: 30000 Honor, 6000 Arena Points and 600 MG]|r", 1, 901)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 999) then
		plr:GossipComplete()
	end
	
	-----------------------------------------------------
	--					Head Enchant				   --
	-----------------------------------------------------
	
	if (id == 101) then -- Head Enchant
	item = plr:GetEquippedItemBySlot(0)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3900
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 102) then -- Head Enchant
	item = plr:GetEquippedItemBySlot(0)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3901
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 103) then -- Head Enchant
	item = plr:GetEquippedItemBySlot(0)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3902
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	
	-----------------------------------------------------
	--				Shoulder Enchant				   --
	-----------------------------------------------------
	
	if (id == 201) then -- Shoulder Enchant
	item = plr:GetEquippedItemBySlot(2)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3903
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 202) then -- Shoulder Enchant
	item = plr:GetEquippedItemBySlot(2)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3904
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 203) then -- Shoulder Enchant
	item = plr:GetEquippedItemBySlot(2)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3905
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-----------------------------------------------------
	--				  Chest Enchant	     			   --
	-----------------------------------------------------
	
	if (id == 301) then -- Chest Enchant
	item = plr:GetEquippedItemBySlot(4)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3906
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 302) then -- Chest Enchant
	item = plr:GetEquippedItemBySlot(4)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3907
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 303) then -- Chest Enchant
	item = plr:GetEquippedItemBySlot(4)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3908
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	
	-----------------------------------------------------
	--				  Wrist Enchant	     			   --
	-----------------------------------------------------
	
	if (id == 401) then -- Wrist Enchant
	item = plr:GetEquippedItemBySlot(8)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3909
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 402) then -- Wrist Enchant
	item = plr:GetEquippedItemBySlot(8)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3910
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 403) then -- Wrist Enchant
	item = plr:GetEquippedItemBySlot(8)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3911
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	
	-----------------------------------------------------
	--				  Weapon Enchant	     		 --
	-----------------------------------------------------
	
	if (id == 501) then -- Weapon Enchant
	item = plr:GetEquippedItemBySlot(15)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 75000) then
			if(plr:GetArenaPoints() >= 15000) then
				if(plr:GetCustomOnlinePoints() >= 1500) then
						enchantmentid = 3912
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-15000)
						plr:ModifyHonorPoints(-75000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1500)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 502) then -- Weapon Enchant
	item = plr:GetEquippedItemBySlot(15)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 75000) then
			if(plr:GetArenaPoints() >= 15000) then
				if(plr:GetCustomOnlinePoints() >= 1500) then
						enchantmentid = 3913
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-15000)
						plr:ModifyHonorPoints(-75000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1500)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 503) then -- Weapon Enchant
	item = plr:GetEquippedItemBySlot(15)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 75000) then
			if(plr:GetArenaPoints() >= 15000) then
				if(plr:GetCustomOnlinePoints() >= 1500) then
						enchantmentid = 3914
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-15000)
						plr:ModifyHonorPoints(-75000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1500)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	
	-----------------------------------------------------
	--				   Cloak Enchant	           	   --
	-----------------------------------------------------
	
	if (id == 601) then -- Cloak Enchant
	item = plr:GetEquippedItemBySlot(14)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3915
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 602) then -- Cloak Enchant
	item = plr:GetEquippedItemBySlot(14)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3910
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 603) then -- Cloak Enchant
	item = plr:GetEquippedItemBySlot(14)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3911
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-----------------------------------------------------
	--				   Hands Enchant	           	   --
	-----------------------------------------------------
	
	if (id == 701) then -- Hands Enchant
	item = plr:GetEquippedItemBySlot(9)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3915
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 702) then -- Hands Enchant
	item = plr:GetEquippedItemBySlot(9)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3910
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 703) then -- Hands Enchant
	item = plr:GetEquippedItemBySlot(9)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3911
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	
	-----------------------------------------------------
	--				    Legs Enchant	           	   --
	-----------------------------------------------------
	
	if (id == 801) then -- Legs Enchant
	item = plr:GetEquippedItemBySlot(6)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3903
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 802) then -- Legs Enchant
	item = plr:GetEquippedItemBySlot(6)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3904
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	
	if (id == 803) then -- Legs Enchant
	item = plr:GetEquippedItemBySlot(6)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 50000) then
			if(plr:GetArenaPoints() >= 10000) then
				if(plr:GetCustomOnlinePoints() >= 1000) then
						enchantmentid = 3905
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-10000)
						plr:ModifyHonorPoints(-50000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-1000)
						
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-----------------------------------------------------
	--				    Boots Enchant	           	   --
	-----------------------------------------------------
	
	if (id == 901) then -- Boots Enchant
	item = plr:GetEquippedItemBySlot(7)
	if(item == nil) then
		plr:SendAreaTriggerMessage("No Item is equipped")

	else
		if(plr:GetHonorPoints() >= 30000) then
			if(plr:GetArenaPoints() >= 6000) then
				if(plr:GetCustomOnlinePoints() >= 600) then
						enchantmentid = 3916
						plr:SendAreaTriggerMessage("Your item has been Enchanted!")
						item:ClearEnchantment(0)
						item:SetEnchantment(enchantmentid, 0)
						plr:ModifyArenaPoints(-6000)
						plr:ModifyHonorPoints(-30000)
						plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()-600)
				else
					plr:SendAreaTriggerMessage("You do not have enough Magic Gold!")
				end
			else
				plr:SendAreaTriggerMessage("You do not have enough Arena Points!")
			end
		else
			plr:SendAreaTriggerMessage("You do not have enough honor!")
		end
	end
	EnchantVendor(event, plr, unit)
	end
	
	-------------------------------------------------------
	

end

for  _,v in pairs (NPC_ID) do
RegisterCreatureGossipEvent(v, 1, EnchantVendor)
RegisterCreatureGossipEvent(v, 2, TransmogVendorSelect)
end