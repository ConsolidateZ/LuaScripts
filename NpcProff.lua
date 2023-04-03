
local NPC_ID = 700150
    -- NPC List
    1000010, 1000011
}

require "base/sc_default"

function Professions(event, plr, unit)
	plr:Dismount()
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_03:20|tAlchemy (Recipe)", 1, 1)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_04:20|tTailoring (Recipe)", 1, 2)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_04:20|tTailoring II (Recipe)", 1, 3)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_04:20|tBlacksmithing (Recipe)", 1, 4)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_05:20|tBlacksmithing II (Recipe)", 1, 5)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_misc_note_01:20|tEnchanting (Recipe)", 1, 6)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_enchant_formulasuperior_01:20|tEnchanting II (Recipe)", 1, 7)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_06:20|tJewelcrafting (Recipe)", 1, 8)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_04:20|tJewelcrafting II (Recipe)", 1, 9)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_05:20|tJewelcrafting III (Recipe)", 1, 10)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_misc_book_03:20|tMining (Recipe)", 1, 11)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_05:20|tEngineering (Recipe)", 1, 12)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_06:20|tLeatherworking (Recipe)", 1, 13)
	plr:GossipMenuAddItem(1, "|cff362cbc|TInterface\\icons\\Ability_Vehicle_LoadSelfCatapult:20|t|r Nevermind", 1, 999)
    plr:GossipSetText("DeluxeWoW")
    plr:GossipSendMenu(0x7FFFFFFF, unit)
end



-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function ProfessionsSelect(event, plr, unit, sender, id, code)
    if (id == 1) then
        plr:CustomVendor(unit, 700141, true)
    elseif (id == 2) then
        plr:CustomVendor(unit, 700154, true)
    elseif (id == 3) then
        plr:CustomVendor(unit, 700155, true)
    elseif (id == 4) then
        plr:CustomVendor(unit, 700142, true)
    elseif (id == 5) then
        plr:CustomVendor(unit, 700143, true)
    elseif (id == 6) then
        plr:CustomVendor(unit, 700145, true)
    elseif (id == 7) then
        plr:CustomVendor(unit, 700146, true)
    elseif (id == 8) then
        plr:CustomVendor(unit, 700150, true)
    elseif (id == 9) then
        plr:CustomVendor(unit, 700151, true)
    elseif (id == 10) then
        plr:CustomVendor(unit, 700152, true)
    elseif (id == 11) then
        plr:CustomVendor(unit, 700157, true)
    elseif (id == 12) then
        plr:CustomVendor(unit, 700147, true)
    elseif (id == 13) then
        plr:CustomVendor(unit, 700153, true)   
	elseif(id == 999) then
	plr:GossipComplete()
	end
end

for  _,v in pairs (NPC_ID) do
RegisterCreatureGossipEvent(v, 1, Professions)
RegisterCreatureGossipEvent(v, 2, ProfessionsSelect)
end