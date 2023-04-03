
local NPC_ID = {
    -- NPC List
    764000
}


function TransmogVendor(event, plr, unit)
	plr:Dismount()
    	plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "          |cFF1b1f46AmdWoW Transmog Vendor|r", 1, 1)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 1)
	plr:GossipMenuAddItem(1, "                              |cffCC00CC|TInterface\\CURSOR\\Repair:50:50|t|r                                                   |cFFaa7a3c.|r", 1, 1)
	plr:GossipMenuAddItem(1, "                |cffCC00CC|TInterface\\Calendar\\EventNotification:20:20|t|rHow does it work?                                                                |cFFaa7a3c.|r ", 1, 10)
	plr:GossipMenuAddItem(1, "        |TInterface\\CURSOR\\Inspect:22:22:|t|r Search for transmog items                                                  |cFFaa7a3c.|r ", 0, 0, 7)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r", 1, 1)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    	plr:GossipSendMenu(0x7FFFFFFF, unit)
end



-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function TransmogVendorSelect(event, plr, unit, sender, id, code)
	itementry = tostring(code)
    	if (id == 0) then
		ItemQuery = CharDBQuery("SELECT item_entry, name, honor_cost, arena_cost, mg_cost  FROM transmog_vendor WHERE item_entry = '"..itementry.."';")
		if(ItemQuery) then
			itemquality = ItemQuery:GetUInt32(1)
			Name = ItemQuery:GetString(1)
			Honor = ItemQuery:GetString(2)
			Arena = ItemQuery:GetString(3)
			Magicgold = ItemQuery:GetString(4)
			PlayerHonor = plr:GetHonorPoints()
			PlayerArena = plr:GetArenaPoints()
			PlayerMagicGold = plr:GetCustomOnlinePoints()
			ItemQuery1 = WorldDBQuery("SELECT quality FROM item_template WHERE entry = '"..itementry.."';")

				plr:GossipMenuAddItem(1, "          |cFF1b1f46AmdWoW Transmog Vendor|r", 1, 1)
				plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 1)

				if(ItemQuery1) then
					itemquality = ItemQuery1:GetUInt32(0)
					if(itemquality == 0) then
						plr:GossipMenuAddItem(0, "Item:|cFF393939 ["..Name.."]|r", 1, 1)
					elseif(itemquality == 1) then
						plr:GossipMenuAddItem(0, "Item:|cFFffffff ["..Name.."]|r", 1, 1)
					elseif(itemquality == 2) then
						plr:GossipMenuAddItem(0, "Item:|cFF18ff00 ["..Name.."]|r", 1, 1)
					elseif(itemquality == 3) then
						plr:GossipMenuAddItem(0, "Item:|cFF1d13e5 ["..Name.."]|r", 1, 1)
					elseif(itemquality == 4) then
						plr:GossipMenuAddItem(0, "Item:|cFF9600ff ["..Name.."]|r", 1, 1)
					elseif(itemquality == 5) then
						plr:GossipMenuAddItem(0, "Item:|cFFff7200 ["..Name.."]|r", 1, 1)
					else

					end

				end

				plr:GossipMenuAddItem(0, "Honor Cost: "..Honor.."/"..PlayerHonor.." |cffCC00CC|TInterface\\BattlefieldFrame\\Battleground-Horde:20:20:0:4|t|r|cffCC00CC|TInterface\\BattlefieldFrame\\Battleground-Alliance:20:20:0:4|t|r", 1, 1)
				plr:GossipMenuAddItem(0, "Arena Cost: "..Arena.."/"..PlayerArena.." |cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:15:15:|t|r", 1, 1)
				plr:GossipMenuAddItem(0, "MG Cost: "..Magicgold.."/"..PlayerMagicGold.."                                                                                  |cFFaa7a3c.|r", 1, 1)
				plr:GossipMenuAddItem(0, "                            Buy item                                                                                   |cFFaa7a3c.|r", 1, 7)
				itementry1 = tostring(code)
				plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r", 1, 1)
				plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:20:20|t|r Back", 1, 6)
        			plr:GossipSendMenu(1, unit, 1403)

		elseif (Itemquery == nill) then
			
			plr:GossipMenuAddItem(1, "          |cFF1b1f46AmdWoW Transmog Vendor|r", 1, 1)
			plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 1)
			plr:GossipMenuAddItem(0, "No item with that id has been found", 1, 1)
			plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r", 1, 1)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:20:20|t|r Back", 1, 6)
        		plr:GossipSendMenu(1, unit, 1403)
		end

	elseif (id == 999) then
		plr:GossipComplete()
	end
	if (id == 6) then
		TransmogVendor(event, plr, unit)

	end
	if (id == 1) then
		TransmogVendor(event, plr, unit)
	end
	if (id == 7) then
		ItemQuery2 = CharDBQuery("SELECT item_entry, name, honor_cost, arena_cost, mg_cost  FROM transmog_vendor WHERE item_entry = '"..itementry1.."';")
		if(ItemQuery2) then
			Honor1 = ItemQuery2:GetUInt32(2)
			Arena1 = ItemQuery2:GetUInt32(3)
			Magicgold1 = ItemQuery2:GetUInt32(4)
			PlayerHonor1 = plr:GetHonorPoints()
			PlayerArena1 = plr:GetArenaPoints()
			PlayerMagicGold1 = plr:GetCustomOnlinePoints()

			if(Honor1 <= PlayerHonor1) then
				if(Arena1 <= PlayerArena1) then
					if(Magicgold1 <= PlayerMagicGold1) then				
						plr:SendBroadcastMessage("[Transmog Vendor]: Item has been added")
						plr:AddItem(itementry1, 1)
						plr:ModifyHonorPoints(-Honor1)
						plr:ModifyArenaPoints(-Arena1)
						plr:SetCustomOnlinePoints(PlayerMagicGold1 - Magicgold1)
						plr:CastSpell(plr, 55420, true)
						plr:SaveToDB()
					else
						plr:SendBroadcastMessage("[Transmog Vendor]: You do not have enough honor, arena or MG to buy this transmog item")
					end
					
				else
				   plr:SendBroadcastMessage("[Transmog Vendor]: You do not have enough honor, arena or MG to buy this transmog item")
				end

			else
				plr:SendBroadcastMessage("[Transmog Vendor]: You do not have enough honor, arena or MG to buy this transmog item")
			end


		end
		TransmogVendor(event, plr, unit)
	end
	if (id == 10) then
		plr:GossipMenuAddItem(1, "          |cFF1b1f46AmdWoW Transmog Vendor|r", 1, 1)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 1)
		plr:GossipMenuAddItem(0, "Enter the |cFFf50000ID|r of an item. You can find the |cFFf50000ID|r by going to |cFFf50000wowhead.com|r or |cFFf50000wotlk.evowow.com|r and take the |cFFf50000ID from the |cFFf50000URL|r. Example: If i wanted to get |cFF9600ff[Glorenzelg, High-Blade of the Silver Hand]|r for transmog, i would search the name on |cFFf50000wotlk.evowow.com|r and click on the item. In the URL i would get https://wotlk.evowow.com/?item=|r|cFFf5000050730|r. This is the the |cFFf50000ID|r i put into the vendor and search for.", 1, 1)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r", 1, 1)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:20:20|t|r Back", 1, 6)
        	plr:GossipSendMenu(1, unit, 1403)
	end

end

for  _,v in pairs (NPC_ID) do
RegisterCreatureGossipEvent(v, 1, TransmogVendor)
RegisterCreatureGossipEvent(v, 2, TransmogVendorSelect)
end