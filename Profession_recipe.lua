
local NPC_ID = {
    -- NPC List
    1000010, 1000011
}

require "base/sc_default"

function Professions(event, plr, unit)
	unit:Emote(412)
	plr:Dismount()
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "          |cFF1b1f46AmdWoW Profession Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/INV_Fabric_Silk_03:30|t Profession Mats", 1, 1)
	plr:GossipMenuAddItem(1, "|TInterface/Icons/inv_scroll_04:30|t Profession Recipes                                                   |cFFaa7a3c.|r ", 1, 2)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSetText("AmdWoW")
    plr:GossipSendMenu(0x7FFFFFFF, unit)
end



-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function ProfessionsSelect(event, plr, unit, sender, id, code)
    if (id == 1) then
            plr:GossipClearMenu()
			plr:GossipMenuAddItem(0, "Inscription", 1, 100)
			plr:GossipMenuAddItem(0, "Engineering", 1, 101)
			plr:GossipMenuAddItem(0, "Tailoring", 1, 102)
			plr:GossipMenuAddItem(0, "Enchanting", 1, 103)
			plr:GossipMenuAddItem(0, "Blacksmithing", 1, 104)
			plr:GossipMenuAddItem(0, "Alchemy", 1, 105)
			plr:GossipMenuAddItem(0, "First Aid", 1, 106)
			plr:GossipMenuAddItem(0, "Leatherworking", 1, 107)
			plr:GossipMenuAddItem(0, "Jewelcrafting", 1, 108)
			plr:GossipMenuAddItem(0, "Cooking", 1, 109)
			plr:GossipMenuAddItem(0, "Fishing", 1, 110)
			plr:GossipSetText("AmdWoW")
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
			plr:GossipSendMenu(1, unit)
    elseif (id == 2) then
            plr:GossipClearMenu()
			plr:GossipMenuAddItem(1, "Alchemy (Recipe)", 1, 200)
			plr:GossipMenuAddItem(1, "Tailoring (Recipe)", 1, 201)
			plr:GossipMenuAddItem(1, "Tailoring II (Recipe)", 1, 202)
			plr:GossipMenuAddItem(1, "Blacksmithing (Recipe)", 1, 203)
			plr:GossipMenuAddItem(1, "Blacksmithing II (Recipe)", 1, 204)
			plr:GossipMenuAddItem(1, "Enchanting (Recipe)", 1, 205)
			plr:GossipMenuAddItem(1, "Enchanting II (Recipe)", 1, 206)
			plr:GossipMenuAddItem(1, "Jewelcrafting (Recipe)", 1, 207)
			plr:GossipMenuAddItem(1, "Jewelcrafting II (Recipe)", 1, 208)
			plr:GossipMenuAddItem(1, "Jewelcrafting III (Recipe)", 1, 209)
			plr:GossipMenuAddItem(1, "Mining (Recipe)", 1, 210)
			plr:GossipMenuAddItem(1, "Engineering (Recipe)", 1, 211)
			plr:GossipMenuAddItem(1, "Leatherworking (Recipe)", 1, 212)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
			plr:GossipSetText("AmdWoW")
			plr:GossipSendMenu(1, unit)
			
			
			
	elseif (id == 100) then
		plr:CustomVendor(unit, 71104, true)
	elseif (id == 101) then
		plr:CustomVendor(unit, 71103, true)
	elseif (id == 102) then
		plr:CustomVendor(unit, 71107, true)
	elseif (id == 103) then
		plr:CustomVendor(unit, 71102, true)
	elseif (id == 104) then
		plr:CustomVendor(unit, 71101, true)
	elseif (id == 105) then
		plr:CustomVendor(unit, 71100, true)
	elseif (id == 106) then
		plr:CustomVendor(unit, 71108, true)
	elseif (id == 107) then
		plr:CustomVendor(unit, 71106, true)
	elseif (id == 108) then
		plr:CustomVendor(unit, 71105, true)
	elseif (id == 109) then
		plr:CustomVendor(unit, 71109, true)
	elseif (id == 110) then
		plr:CustomVendor(unit, 71110, true)
		
	
	elseif (id == 200) then
		plr:CustomVendor(unit, 700141, true)
	elseif (id == 201) then
		plr:CustomVendor(unit, 700154, true)
	elseif (id == 202) then
		plr:CustomVendor(unit, 700155, true)
	elseif (id == 203) then
		plr:CustomVendor(unit, 700142, true)
	elseif (id == 204) then
		plr:CustomVendor(unit, 700143, true)
	elseif (id == 205) then
		plr:CustomVendor(unit, 700145, true)
	elseif (id == 206) then
		plr:CustomVendor(unit, 700146, true)
	elseif (id == 207) then
		plr:CustomVendor(unit, 700150, true)
	elseif (id == 208) then
		plr:CustomVendor(unit, 700151, true)
	elseif (id == 209) then
		plr:CustomVendor(unit, 700152, true)
	elseif (id == 210) then
		plr:CustomVendor(unit, 700157, true)
	elseif (id == 211) then
		plr:CustomVendor(unit, 700147, true)
	elseif (id == 212) then
		plr:CustomVendor(unit, 700153, true)
	elseif (id == 999) then
		plr:GossipComplete()
	end
end

for  _,v in pairs (NPC_ID) do
RegisterCreatureGossipEvent(v, 1, Professions)
RegisterCreatureGossipEvent(v, 2, ProfessionsSelect)
end