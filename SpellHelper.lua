

local MenuId = 754252;



local function HelpingBook(event, player, object)
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "                        Welcome "..player:GetName(), 1, 0)
		player:GossipMenuAddItem(0, "                  --------------------------------                                                  |cFFaa7a3c.|r", 1, 0)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Book_11:40:40:-22|t|rGeneral Information", 1, 1)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\amd_wow:40:40:-22|t|rMall Teleports", 1, 2)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Crop_01:40:40:-22|t|rRules", 1, 3)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\discord:40:40:-22|t|rDiscord                                                                    |cFFaa7a3c.|r", 1, 4)
		player:GossipMenuAddItem(0, "                  --------------------------------                                                  |cFFaa7a3c.|r", 1, 0)
		player:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 99)
		player:GossipSendMenu(1, object, MenuId)
end

local function HelpingBookSelect(event, player, object, sender, intid, code, menuid)
	if(intid == 1 )then
	player:GossipClearMenu()
			player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Book_11:40:40:-22|t|rGeneral Information                                                                    |cFFaa7a3c.|r", 1, 1)
		player:GossipMenuAddItem(0, "Welcome "..player:GetName().." we hope you will enjoy AmdWoW. To begin with you should pick up the starting quest in mall from Starter Quest. Then pick up some armor to the right of him at Starting Vendor. After turn in [The Beginning] to the same guy, and pick up the the next quest. Then you turn in that quest left of the Starter Quest. This will unlock [T1] quests. You can use the teleporter behind you to teleport to T1. T1-T6 is soloable, and future dungeons and raids require a group.", 1, 2)
		player:GossipMenuAddItem(0, "Everyone starts with 3 spells: Helping Book, Magic Stone and Race Changer. The Magic Stone can be used to do different things, such as teleport, morphs etc. The Race Changer enables you to pick any racial you want. ", 1, 1)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 99)
		player:GossipSendMenu(1, object, MenuId)
	elseif(intid == 2) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\amd_wow:40:40:-22|t|rMall Teleports                                                                    |cFFaa7a3c.|r", 1, 2)
		player:GossipMenuAddItem(0, "Starting Area", 1, 10)
		player:GossipMenuAddItem(0, "Teleporter & VIP", 1, 11)
		player:GossipMenuAddItem(0, "Crate key", 1, 12)
		player:GossipMenuAddItem(0, "Transmog", 1, 13)
		player:GossipMenuAddItem(0, "Tier Armor", 1, 14)
		player:GossipMenuAddItem(0, "Bounty Hunter", 1, 15)
		player:GossipMenuAddItem(0, "Custom Enchants", 1, 16)
		player:GossipMenuAddItem(0, "Custom Gems", 1, 17)
		player:GossipMenuAddItem(0, "Playtime Rewards                                                                    |cFFaa7a3c.|r", 1, 18)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 99)
		player:GossipSendMenu(1, object, MenuId)
	elseif(intid == 3) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Crop_01:40:40:-22|t|rServer Rules                                                                    |cFFaa7a3c.|r", 1, 3)
		player:GossipMenuAddItem(0, "NO HACKING", 1, 3)
		player:GossipMenuAddItem(0, "NO SOCIAL MISTREATMENT OR ANNOYANCE", 1, 3)
		player:GossipMenuAddItem(0, "NO BUG EXPLOITING", 1, 3)
		player:GossipMenuAddItem(0, "NO PVP EXPLOITING", 1, 3)
		player:GossipMenuAddItem(0, "NO SCAMMING", 1, 3)
		player:GossipMenuAddItem(0, "NO DONOR BASHING", 1, 3)
		player:GossipMenuAddItem(0, "NO ACCOUNT TRADING OR SELLING", 1, 3)
		player:GossipMenuAddItem(0, "NO STAFF OR SERVER DISRESPECT", 1, 3)
		player:GossipMenuAddItem(0, "NO ADVERTISEMENT OR PROPAGANDA", 1, 3)
		player:GossipMenuAddItem(0, "For more detailed rules please visit: https://tinyurl.com/y9gsufj2                                                                    |cFFaa7a3c.|r", 1, 3)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 99)
		player:GossipSendMenu(1, object, MenuId)
	elseif(intid == 4) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Discord:40:40:-22|t|rDiscord                                                                    |cFFaa7a3c.|r", 1, 3)
		player:GossipMenuAddItem(0, "Join discord at: https://discord.gg/yn35gBH                                                                    |cFFaa7a3c.|r", 1, 4)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 99)
		player:GossipSendMenu(1, object, MenuId)
	elseif(intid == 99)then
		player:GossipComplete()
	end
	
	if(intid == 10) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3880.21, -1583.62, 134.81, 2.8)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3880.21, -1583.62, 134.81, 2.8)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 11) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3852.10, -1587.70, 135.14, 0.58)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3852.10, -1587.70, 135.14, 0.58)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 12) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3892.10, -1673.12, 136.89, 3.5)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3892.10, -1673.12, 136.89, 3.5)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 13) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3964.49, -1619.11, 136.61, 1.86)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3964.49, -1619.11, 136.61, 1.86)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 14) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3865.20, -1616.82, 132.78, 4.6)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3865.20, -1616.82, 132.78, 4.6)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 15) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3841.15, -1657.77, 134.38, 6.13)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3841.15, -1657.77, 134.38, 6.13)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 16) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3952.22, -1621.60, 134.87, 1.34)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3952.22, -1621.60, 134.87, 1.34)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 17) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3924.79, -1623.48, 132.66, 1.49)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3924.79, -1623.48, 132.66, 1.49)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	if(intid == 18) then
		if(player:GetZoneId() == 11) then
			player:Teleport(0, -3912.57, -1638.80, 132.98, 4.6)
		elseif(player:GetZoneId() == 1) then
			player:Teleport(0, -3912.57, -1638.80, 132.98, 4.6)
		else
			player:SendBroadcastMessage("This function can only be used in mall!")
		end
		HelpingBook(event, player, object)
	end
	

end




local function Spell_Gossip(event, player, spell, skipCheck)
	if(spell:GetEntry() == 159301) then
		HelpingBook(event, player, player)
	return false;
	end

end

RegisterPlayerEvent(5 , Spell_Gossip)
RegisterPlayerGossipEvent(MenuId, 2, HelpingBookSelect)

local function ManyLogin(event, player)
	if(player:HasSpell(159300) == true) then
	
	else
			player:LearnSpell(153900)
	end
	if(player:HasSpell(159301) == true) then
	
	else
			player:LearnSpell(153901)
	end
	if(player:HasSpell(159302) == true) then
	
	else
			player:LearnSpell(153902)
	end
	if(player:HasSpell(1648000) == true) then -- 2800 RESILIENCE
		
	else
		player:LearnSpell(1648000)
	end
	if(player:HasSpell(1648001) == true) then
	
	else
		player:LearnSpell(1648001)
	end
end

RegisterPlayerEvent(3, ManyLogin)