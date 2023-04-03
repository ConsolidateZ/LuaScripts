
NPC_ID = 896300

function CrateKeyHello(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "|cff63121a[Donation]|r Crate Keys: "..plr:GetItemCount(159300), 1, 1)
	plr:GossipMenuAddItem(1, "|cff103838[Vote]|r Crate Keys: "..plr:GetItemCount(159301), 1, 2)
	plr:GossipMenuAddItem(1, "|cff275a35[Normal]|r Crate Keys: "..plr:GetItemCount(159302).."                                                                                  |cffaa7a3f.|r", 1, 3)
	plr:GossipMenuAddItem(1, "|cffaa7a3f.|r               |cffaa7a3f.|rRoll Donation Crate Key                                                                                |cffaa7a3f.|r                  |cffaa7a3f.|r             |cffaa7a3f.|cff00ff00|TInterface\\BUTTONS/UI-GroupLoot-Dice-Up.png:40|t|r", 1, 4)
	plr:GossipMenuAddItem(1, "|cffaa7a3f.|r                   |cffaa7a3f.|rRoll Vote Crate Key                                                                                |cffaa7a3f.|r                  |cffaa7a3f.|r             |cffaa7a3f.|cff00ff00|TInterface\\BUTTONS/UI-GroupLoot-Dice-Up.png:40|t|r", 1, 5)
	plr:GossipMenuAddItem(1, "|cffaa7a3f.|r                 |cffaa7a3f.|rRoll Normal Crate Key                                                                                |cffaa7a3f.|r                  |cffaa7a3f.|r             |cffaa7a3f.|cff00ff00|TInterface\\BUTTONS/UI-GroupLoot-Dice-Up.png:40|t|r", 1, 6)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSendMenu(1, obj)
end

--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)
	if (id == 1) then
		plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You currently have: "..plr:GetItemCount(44844).." Donation Crate Keys. You can obtain more Crate Keys by purchasing them on the website.")
		CrateKeyHello(event, plr, obj)
	elseif (id == 2) then
		plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You currently have: "..plr:GetItemCount(44844).." Vote Crate Keys. You can obtain more Crate Keys by voting on the website.")
		CrateKeyHello(event, plr, obj)
	elseif (id == 3) then
		plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You currently have: "..plr:GetItemCount(44844).." Normal Crate Keys. You can obtain more Crate Keys by joining events, and doing different objectives within our server.")
		CrateKeyHello(event, plr, obj)
		
	elseif (id == 4) then -- Donation Crate Key
		if(plr:GetItemCount(159300) >= 1) then
			plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] Your crate key are being rolled!")
			plr:RemoveItem(159300, 1)
			plr:RegisterEvent(Donationcratekeyevent, 100, 1)
			plr:GossipComplete()
		else
			plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You do not have any Donation Crate Keys")
			CrateKeyHello(event, plr, obj)
		end
	
	elseif (id == 5) then -- Vote Crate Key
		if(plr:GetItemCount(159301) >= 1) then
			plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] Your crate key are being rolled!")
			plr:RemoveItem(159301, 1)
			plr:RegisterEvent(Votecratekeyevent, 100, 1)
			plr:GossipComplete()
		else
			plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You do not have any Vote Crate Keys")
			CrateKeyHello(event, plr, obj)
		end
		
	elseif (id == 6) then -- Donation Crate Key
		if(plr:GetItemCount(159302) >= 1) then
			plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] Your crate key are being rolled!")
			plr:RemoveItem(159302, 1)
			plr:RegisterEvent(Normalcratekeyevent, 100, 1)
			plr:GossipComplete()
		else
			plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You do not have any Normal Crate Keys")
			CrateKeyHello(event, plr, obj)
		end
	end

	if (id == 999) then
		plr:GossipComplete()
	end
end

function Donationcratekeyevent(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem1, 200, 1)
end


function DonationItem1(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem2, 200, 1)
end

function DonationItem2(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem3, 200, 1)
end

function DonationItem3(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem4, 200, 1)
end

function DonationItem4(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem5, 200, 1)
end

function DonationItem5(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem6, 200, 1)
end

function DonationItem6(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem7, 200, 1)
end

function DonationItem7(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem8, 200, 1)
end

function DonationItem8(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem9, 200, 1)
end

function DonationItem9(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem10, 200, 1)
end

function DonationItem10(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem11, 200, 1)
end

function DonationItem11(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem12, 200, 1)
end

function DonationItem12(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem13, 200, 1)
end

function DonationItem13(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationItem14, 200, 1)
end

function DonationItem14(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(DonationCrateKeyRoll, 200, 1)
end


-- VOTE CRATE KEYS --
--                 --
--                 --
---------------------
function Votecratekeyevent(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem1, 200, 1)
end

function VoteItem1(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem2, 200, 1)
end

function VoteItem2(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem3, 200, 1)
end

function VoteItem3(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem4, 200, 1)
end

function VoteItem4(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem5, 200, 1)
end

function VoteItem5(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem6, 200, 1)
end

function VoteItem6(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem7, 200, 1)
end

function VoteItem7(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem8, 200, 1)
end

function VoteItem8(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem9, 200, 1)
end

function VoteItem9(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem10, 200, 1)
end

function VoteItem10(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem11, 200, 1)
end

function VoteItem11(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem12, 200, 1)
end

function VoteItem12(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem13, 200, 1)
end

function VoteItem13(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteItem14, 200, 1)
end

function VoteItem14(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(VoteCrateKeyRoll, 200, 1)
end






function Normalcratekeyevent(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem1, 200, 1)
end

function NormalItem1(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem2, 200, 1)
end
function NormalItem2(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem3, 200, 1)
end
function NormalItem3(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem4, 200, 1)
end
function NormalItem4(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem5, 200, 1)
end
function NormalItem5(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem6, 200, 1)
end
function NormalItem6(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem7, 200, 1)
end
function NormalItem7(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem8, 200, 1)
end
function NormalItem8(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem9, 200, 1)
end
function NormalItem9(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem10, 200, 1)
end
function NormalItem10(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem11, 200, 1)
end
function NormalItem11(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem12, 200, 1)
end
function NormalItem12(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem13, 200, 1)
end
function NormalItem13(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalItem14, 200, 1)
end
function NormalItem14(eventId, time, repeats, plr)
		ItemQuery2 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 ORDER BY RAND() LIMIT 1")
		win2 = ItemQuery2:GetUInt32(0)
		plr:SendNotification(GetItemLink(win2))
		plr:RegisterEvent(NormalCrateKeyRoll, 200, 1)
end



function DonationCrateKeyRoll(eventId, time, repeats, plr)
			plr:CastSpell(plr, 55420, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			local m = math.random(0, 100)
			if(m <= 40) then --Common Win
				plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You have successfully rolled your Donation Crate Key")
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 AND win_type = 1 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				plr:SendBroadcastMessage("Common Win: "..GetItemLink(win1))
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 40 and m <= 70) then --Uncommon Win
				plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You have successfully rolled your Donation Crate Key")
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 AND win_type = 2 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				plr:SendBroadcastMessage("Uncommon Win: "..GetItemLink(win1))
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 70 and m <= 89) then --Rare Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 AND win_type = 3 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is an|r |cff0038ffRARE|r |cff1ce116win, from rolling "..GetItemLink(159300).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 89 and m <= 97) then --Epic Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 AND win_type = 4 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is an|r |cffa741ffEPIC|r |cff1ce116win, from rolling "..GetItemLink(159300).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 97 and m <= 100) then --Legendary Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 3 AND win_type = 5 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is a|r |cffe19b16LEGENDARY|r |cff1ce116win, from rolling "..GetItemLink(159300).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			else
				lr:SendBroadcastMessage(m)
			end
			--CrateKeyHello(event, plr, obj)
end

function VoteCrateKeyRoll(eventId, time, repeats, plr)
			plr:CastSpell(plr, 55420, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			local m = math.random(0, 100)
			if(m <= 40) then --Common Win
				plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You have successfully rolled your Vote Crate Key")
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 AND win_type = 1 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				plr:SendBroadcastMessage("Common Win: "..GetItemLink(win1))
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 40 and m <= 70) then --Uncommon Win
				plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You have successfully rolled your Vote Crate Key")
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 AND win_type = 2 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				plr:SendBroadcastMessage("Uncommon Win: "..GetItemLink(win1))
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 70 and m <= 89) then --Rare Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 AND win_type = 3 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is an|r |cff0038ffRARE|r |cff1ce116win, from rolling "..GetItemLink(159301).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 89 and m <= 97) then --Epic Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 AND win_type = 4 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is an|r |cffa741ffEPIC|r |cff1ce116win, from rolling "..GetItemLink(159301).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 97 and m <= 100) then --Legendary Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 2 AND win_type = 5 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is a|r |cffe19b16LEGENDARY|r |cff1ce116win, from rolling "..GetItemLink(159301).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			else
				lr:SendBroadcastMessage(m)
			end
end

function NormalCrateKeyRoll(eventId, time, repeats, plr)
			plr:CastSpell(plr, 55420, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			plr:CastSpell(plr, 46847, true)
			local m = math.random(0, 100)
			if(m <= 40) then --Common Win
				plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You have successfully rolled your Normal Crate Key")
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 AND win_type = 1 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				plr:SendBroadcastMessage("Common Win: "..GetItemLink(win1))
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 40 and m <= 70) then --Uncommon Win
				plr:SendBroadcastMessage("|cff1ce116[AmdWoW Crate Key] You have successfully rolled your Normal Crate Key")
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 AND win_type = 2 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				plr:SendBroadcastMessage("Uncommon Win: "..GetItemLink(win1))
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 70 and m <= 89) then --Rare Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 AND win_type = 3 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is an|r |cff0038ffRARE|r |cff1ce116win, from rolling "..GetItemLink(159302).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 89 and m <= 97) then --Epic Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 AND win_type = 4 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is an|r |cffa741ffEPIC|r |cff1ce116win, from rolling "..GetItemLink(159302).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			elseif (m > 97 and m <= 100) then --Legendary Win
				ItemQuery1 = CharDBQuery("SELECT item_entry FROM cratekey_rolls WHERE cratekey_type = 1 AND win_type = 5 ORDER BY RAND() LIMIT 1")
				win1 = ItemQuery1:GetUInt32(0)
				SendWorldMessage("|cffff4141[AmdWoW Crate Key]|r |cff16dce1["..plr:GetName().."]|r |cff1ce116has just won "..GetItemLink(win1).." |cff1ce116which is a|r |cffe19b16LEGENDARY|r |cff1ce116win, from rolling "..GetItemLink(159302).."")
				plr:SendNotification(GetItemLink(win1))
				plr:AddItem(win1, 1)
			else
				lr:SendBroadcastMessage(m)
			end
end

RegisterCreatureGossipEvent(NPC_ID, 1, CrateKeyHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)