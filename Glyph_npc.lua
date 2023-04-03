
local NPC_ID = {
    -- NPC List
    958320, 958321
}

require "base/sc_default"

function Glyphs(event, plr, unit)
	unit:Emote(412)
	plr:Dismount()
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "               |cFF1b1f46AmdWoW Glyph Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "Warrior Glyphs", 1, 1)
	plr:GossipMenuAddItem(1, "Paladin Glyphs", 1, 2)
	plr:GossipMenuAddItem(1, "Hunter Glyphs", 1, 3)
	plr:GossipMenuAddItem(1, "Shaman Glyphs", 1, 4)
	plr:GossipMenuAddItem(1, "Death knight Glyphs", 1, 5)
	plr:GossipMenuAddItem(1, "Druid Glyphs", 1, 6)
	plr:GossipMenuAddItem(1, "Rogue Glyphs", 1, 7)
	plr:GossipMenuAddItem(1, "Warlock Glyphs", 1, 8)
	plr:GossipMenuAddItem(1, "Priest Glyphs", 1, 9)
	plr:GossipMenuAddItem(1, "Mage Glyphs                                                                                     |cFFaa7a3c.|r", 1, 10)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSetText("AmdWoW")
    plr:GossipSendMenu(0x7FFFFFFF, unit)
end



-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function GlyphsSelect(event, plr, unit, sender, id, code)
    if (id == 1) then
		plr:CustomVendor(unit, 958300, true)
	elseif (id == 2) then
		plr:CustomVendor(unit, 958301, true)
	elseif (id == 3) then
		plr:CustomVendor(unit, 958302, true)
	elseif (id == 4) then
		plr:CustomVendor(unit, 958303, true)
	elseif (id == 5) then
		plr:CustomVendor(unit, 958304, true)
	elseif (id == 6) then
		plr:CustomVendor(unit, 958305, true)
	elseif (id == 7) then
		plr:CustomVendor(unit, 958306, true)
	elseif (id == 8) then
		plr:CustomVendor(unit, 958307, true)
	elseif (id == 9) then
		plr:CustomVendor(unit, 958308, true)
	elseif (id == 10) then
		plr:CustomVendor(unit, 958309, true)
	elseif (id == 999) then
		plr:GossipComplete()
	end
end

for  _,v in pairs (NPC_ID) do
RegisterCreatureGossipEvent(v, 1, Glyphs)
RegisterCreatureGossipEvent(v, 2, GlyphsSelect)
end