






local MenuId = 865910;

local unlearn = {20573, 20574, 20572, 21563, 7744, 5227, 20577, 20579, 20549, 20552, 20550, 20551, 20555, 20558, 26290, 26297, 58943, 20557, 28877, 28730, 822, 20599, 59752, 20864, 58985, 20597, 20598, 2481, 20596, 20595, 59224, 20594, 21009, 20583, 20582, 58984, 20585, 20592, 20593, 20589, 20591, 28875, 59547, 28878, 59540}
local orc = {20573, 20574, 20572, 21563}
local undead = {7744, 5227, 20577, 20579}
local tauren = {20549, 20552, 20550, 20551}
local troll = {20555, 20558, 26290, 26297, 58943, 20557}
local blood_elf = {28877, 28730, 822}
local human = {20599, 59752, 20864, 58985, 20597, 20598}
local dwarf = {2481, 20596, 20595, 59224, 20594}
local night_elf = {21009, 20583, 20582, 58984, 20585}
local gnome = {20592, 20593, 20589, 20591}
local draenei = {28875, 59547, 28878, 59540}


local function RacialPicker(event, player, object)
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Rune_02:40:40:-22|t|rFree Faction change", 1, 8502)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Rune_02:40:40:-22|t|rFree Race change                                                  |cFFaa7a3c.|r", 1, 8503)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Orc_01:40:40:-22|t|rOrc", 1, 1)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Undead_01:40:40:-22|t|rUndead", 1, 2)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Tauren_01:40:40:-22|t|rTauren", 1, 3)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Troll_01:40:40:-22|t|rTroll", 1, 4)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Ability_Warrior_Rampage:40:40:-22|t|rBlood Elf", 1, 5)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Human_01:40:40:-22|t|rHuman", 1, 6)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Dwarf_01:40:40:-22|t|rDwarf", 1, 7)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Elf_01:40:40:-22|t|rNight Elf", 1, 8)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Gnome_01:40:40:-22|t|rGnome", 1, 9)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Ability_Warrior_Rampage:40:40:-22|t|rDraenei", 1, 10)
		player:GossipMenuAddItem(0, "Exit", 1, 99)
		player:GossipSetText("Greetings "..player:GetName().." here you can choose your racial as you wish, just press the race you want, and you will recieve it's racials!")
		player:GossipSendMenu(1, object, MenuId)
end

local function RacialPickerSelect(event, player, object, sender, intid, code, menuid)
	if(intid == 1 )then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Orc_01:40:40:-22|t|rPick Orc Racial                                                  |cFFaa7a3c.|r", 1, 1)
		player:GossipMenuAddItem(0, "|cFF6f1367[Hardiness]|r - Duration of Stun effects reduced by an additonal 15%", 1, 1)
		player:GossipMenuAddItem(0, "|cFF6f1367[Axe Specialization]|r - Expertise with Fist Weapons, Axes and Two-handed Axes increased by 5.", 1, 1)
		player:GossipMenuAddItem(0, "|cFF6f1367[Blood Fury]|r - Increase Attack Power by 322. Lasts 15 sec (2 min cooldown)", 1, 1)
		player:GossipMenuAddItem(0, "|cFF6f1367[Command]|r - Damage dealt by Death Knight, hunter and Warlock pets increased by 5%                                                  |cFFaa7a3c.|r", 1, 1)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 11)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 2) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Undead_01:40:40:-22|t|rPick Undead Racial                                                  |cFFaa7a3c.|r", 1, 2)
		player:GossipMenuAddItem(0, "|cFF6f1367[Underwater Breathing]|r - Underwater breath lasts 233% longer than normal", 1, 2)
		player:GossipMenuAddItem(0, "|cFF6f1367[Will of the Forsaken]|r - Removes any Charm, Fear and Sleep effect. This effect shares a 45 sec cooldown with other similar effects. (2 min cooldown)", 1, 2)
		player:GossipMenuAddItem(0, "|cFF6f1367[Cannibalize]|r - When activiated, regenerates 7% of total health every 2 sec for 10 sec. Only works on humanoid or undead corpses within 5 yds. Any movement action, or damage taken while Cannibalizing will cancel the effect (2 min cooldown)", 1, 2)
		player:GossipMenuAddItem(0, "|cFF6f1367[Shadow Resistance]|r - Reduces the chance you will be hit by shadow spells by 2%                                                  |cFFaa7a3c.|r", 1, 2)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 12)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 3) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Tauren_01:40:40:-22|t|rPick Tauren Racial                                                  |cFFaa7a3c.|r", 1, 3)
		player:GossipMenuAddItem(0, "|cFF6f1367[War Stomp]|r - Stuns up to 5 enemies within 8 yds for 2 sec (2 min cooldown)", 1, 3)
		player:GossipMenuAddItem(0, "|cFF6f1367[Cultivation]|r - Herbalism skill increased by 15", 1, 3)
		player:GossipMenuAddItem(0, "|cFF6f1367[Endurance]|r - Base health increased by 5%", 1, 3)
		player:GossipMenuAddItem(0, "|cFF6f1367[Nature Resistance]|r - Reduces the chance you will be hit by Nature spells by 2%                                                  |cFFaa7a3c.|r", 1, 3)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 13)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 4) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Troll_01:40:40:-22|t|rPick Troll Racial                                                  |cFFaa7a3c.|r", 1, 4)
		player:GossipMenuAddItem(0, "|cFF6f1367[Regeneration]|r - Health regeneration rate increased by 10%. 10% of total health regeneration may continue during combat", 1, 4)
		player:GossipMenuAddItem(0, "|cFF6f1367[Throwing Specialization]|r - Your chance to critically hit with Throwing Weapons is increased by 1%", 1, 4)
		player:GossipMenuAddItem(0, "|cFF6f1367[Berserking]|r - Increases your attack and casting speed by 20% for 10% (3 min cooldown)", 1, 4)
		player:GossipMenuAddItem(0, "|cFF6f1367[Bow Specialization]|r - Your chance to critically hit with Bows is increased by 1%", 1, 4)
		player:GossipMenuAddItem(0, "|cFF6f1367[Da Voodoo Shuffle]|r - Reduces the duration of all movement impairing effects by 15%. Trolls be flippin' out mon!", 1, 4)
		player:GossipMenuAddItem(0, "|cFF6f1367[Beast Slaying]|r - Damage dealt versus Beasts increased by 5%                                                  |cFFaa7a3c.|r", 1, 4)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 14)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 5) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Ability_Warrior_Rampage:40:40:-22|t|rPick Blood elf Racial                                                  |cFFaa7a3c.|r", 1, 5)
		player:GossipMenuAddItem(0, "|cFF6f1367[Arcane Affinity]|r - Enchanting skill increased by 10", 1, 5)
		player:GossipMenuAddItem(0, "|cFF6f1367[Arcane Torrent]|r - Silence all enemies within 8 yards for 2 sec and restores 6% of your man. Non-player victim spellcasting is also interrupted for 3 sec. (2 min cooldown)", 1, 5)
		player:GossipMenuAddItem(0, "|cFF6f1367[Magic Resistance]|r - Reduces the chance you will be hit by spells by 2%                                                  |cFFaa7a3c.|r", 1, 5)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 15)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 6) then 
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Human_01:40:40:-22|t|rPick Human Racial                                                  |cFFaa7a3c.|r", 1, 6)
		player:GossipMenuAddItem(0, "|cFF6f1367[Diplomacy] - Reputation gains increased by 10%", 1, 6)
		player:GossipMenuAddItem(0, "|cFF6f1367[Every Man for Himself]|r - Removes all movement impairing effects and all effects which cause loss of control of your character. This effect shares a cooldown with other similar effects. (2 min cooldown)", 1, 6)
		player:GossipMenuAddItem(0, "|cFF6f1367[Mace Specialization]|r - Expertise with Maces and Two-handed Maces increased by 3. ", 1, 6)
		player:GossipMenuAddItem(0, "|cFF6f1367[Sword Specialization]|r - Expertise with Swords and Two-handed Swords increased by 3. ", 1, 6)
		player:GossipMenuAddItem(0, "|cFF6f1367[The Human Spirit]|r - Spirit increased by 3%. ", 1, 6)
		player:GossipMenuAddItem(0, "|cFF6f1367[Perception]|r - Increases your stealth detection                                                  |cFFaa7a3c.|r", 1, 6)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 16)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 7) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Dwarf_01:40:40:-22|t|rPick Dwarf Racial                                                  |cFFaa7a3c.|r", 1, 7)
		player:GossipMenuAddItem(0, "|cFF6f1367[Find Treasure]|r - Allows the dwarf to sense nearby treasure, making it appear on the minimap. Lasts until cancelled. (1.5 sec cooldown)", 1, 7)
		player:GossipMenuAddItem(0, "|cFF6f1367[Frost Resistance]|r - Reduces the chance you will be hit by Frost spells by 2%.", 1, 7)
		player:GossipMenuAddItem(0, "|cFF6f1367[Gun Specialization]|r - Your chance to critically hit with guns is increased by 1%", 1, 7)
		player:GossipMenuAddItem(0, "|cFF6f1367[Stoneform]|r - removes all poison, disease and bleed effects and increases your armor by 10% for 8 sec.", 1, 7)
		player:GossipMenuAddItem(0, "|cFF6f1367[Mace Specialization]|r - Expertise with Maces and Two-handed Maces increased by 5.                                                  |cFFaa7a3c.|r", 1, 7)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 17)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 8) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Elf_01:40:40:-22|t|rPick Night Elf Racial                                                  |cFFaa7a3c.|r", 1, 8)
		player:GossipMenuAddItem(0, "|cFF6f1367[Elusiveness]|r - Reduces the chance enemies have to detect you while shadowmelded or Stealthed.", 1, 8)
		player:GossipMenuAddItem(0, "|cFF6f1367[Nature Resistance]|r - Reduces the chance you will be hit by Nature spells by 2%", 1, 8)
		player:GossipMenuAddItem(0, "|cFF6f1367[Quickness]|r - Reduces the chance that melee and ranged attackers will hit you by 2%.", 1, 8)
		player:GossipMenuAddItem(0, "|cFF6f1367[Wisp Spirit]|r - transform into a wisp upon death, increasing speed by 75%.", 1, 8)
		player:GossipMenuAddItem(0, "|cFF6f1367[Shadowmeld]|r - Activate to slip into the shadows, reducing the chance for enemies to dettect your presence. Lasts until cancelld or upon moving. Any threat is restored versus enemies still in combat upon cancellation of this effect. (2 min cooldown)                                                  |cFFaa7a3c.|r", 1, 8)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 18)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 9) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\INV_Misc_Head_Gnome_01:40:40:-22|t|rPick Gnome Racial                                                  |cFFaa7a3c.|r", 1, 9)
		player:GossipMenuAddItem(0, "|cFF6f1367[Arcane Resistance]|r - Reduces the chance you will be hit by Arcane spells by 2%.", 1, 9)
		player:GossipMenuAddItem(0, "|cFF6f1367[Engineering Specialization]|r - Engineering skill increased by 15.", 1, 9)
		player:GossipMenuAddItem(0, "|cFF6f1367[Escape Artist]|r - Escape the effects of any immobilization or movement speed effect.(1.75 min cooldown)", 1, 9)
		player:GossipMenuAddItem(0, "|cFF6f1367[Expansive Mind]|r - Intellect increased by 5%                                                  |cFFaa7a3c.|r", 1, 9)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 19)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 10) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Icons\\Ability_Warrior_Rampage:40:40:-22|t|rPick Draenei Racial                                                  |cFFaa7a3c.|r", 1, 10)
		player:GossipMenuAddItem(0, "|cFF6f1367[Gemcutting] - Jewelcrafting skill increased by 5.", 1, 10)
		player:GossipMenuAddItem(0, "|cFF6f1367[Gift of the Naaru]|r - heals the target for 1235 over 15 sec. The amount healed is increased by your spell power or attack power, whicever is higher. (3 min cooldown)", 1, 10)
		player:GossipMenuAddItem(0, "|cFF6f1367[Heroic Presence]|r - Increases chance to hit with all spells and attacks by 1% for you and all party members within 30 yards. ", 1, 10)
		player:GossipMenuAddItem(0, "|cFF6f1367[Shadow Resistance]|r - Reduces the chance you will be hit by Shadow spells by 2%.                                                  |cFFaa7a3c.|r", 1, 10)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\Minimap\\UI-Minimap-ZoomInButton-Up:30:30:-30|t|r Choose This Racial                                                  |cFFaa7a3c.|r", 1, 20)
		player:GossipMenuAddItem(0, "|cffCC00CC|TInterface\\BUTTONS\\UI-RotationRight-Button-Down:30:30:-30|t|r Back", 1, 9000)
		player:GossipSendMenu(0x7FFFFFFF, object, MenuId)
	elseif(intid == 99)then
		player:GossipComplete()
	end
	if(intid == 8502) then
		player:SetAtLoginFlag(64)
		player:Announce("You can now relog to faction change",0,player,true)
	end
		if(intid == 8503) then
		player:SetAtLoginFlag(128)
		player:Announce("You can now relog to race change",0,player,true)
	end
	if(intid == 11) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(orc) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 12) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(undead) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 13) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(tauren) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 14) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(troll) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 15) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(blood_elf) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 16) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(human) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 17) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(dwarf) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 18) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(night_elf) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 19) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(gnome) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	if(intid == 20) then
		for k,v in pairs(unlearn) do
			player:RemoveSpell(v)
		end
		for k,v in pairs(draenei) do
			player:LearnSpell(v)
		end
		RacialPicker(event, player, object)
	end
	
	if(intid == 0) then
		RacialPicker(event, player, object)
	end
	
	if(intid == 9000) then
		RacialPicker(event, player, object)
	end	
end


local function Spell_Gossip(event, player, spell, skipCheck)
	if(spell:GetEntry() == 159302) then
		RacialPicker(event, player, player)
	return false;
	end

end

RegisterPlayerEvent(5 , Spell_Gossip)
RegisterPlayerGossipEvent(MenuId, 2, RacialPickerSelect)