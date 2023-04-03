local class_template = {
    [1]     =   {164910}, -- Warrior
    [2]     =   {164911}, -- Paladin  //  164912 SPELL ID FOR HEALING
    [3]     =   {164913}, -- Hunter
    [4]     =   {164914}, -- Rogue
    [5]     =   {164915}, -- Priest
    [6]     =   {164916}, -- Death Knight
    [7]     =   {164917}, -- Shaman // 	  164918 SPELL ID FOR SPELL/HEALING
    [8]     =   {164919}, -- Mage
    [9]     =   {164920}, -- Warlock
    [11]    =   {164921}, -- Druid //     164922 SPELL ID FOR SPELL/HEALING

}
local zone_apply = {400, 206, 4265, 4277, 4196, 4416}

local remove_spells = {164910, 164911, 164912, 164913, 164914, 164915, 164916, 164917, 164918, 164919, 164920, 164921, 164922}

local function Stat_scaling_system(event, player, newZone, newArea)
	local player_zone = player:GetZoneId()
	for k, zone in pairs(zone_apply) do 
		if(newZone == zone) then
		-- HERE WE CHECK IF THE PLAYER HAS ALL ITEMS EQUIPPED TO PREVENT ABUSE!
			local slot_id = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17}
			for k,v in pairs(slot_id) do
				item = player:GetEquippedItemBySlot(v) 
				if(item == nil) then
					item_equipped = false
					break;
				else
					item_equipped = true
				end
			end
			if(item_equipped == false) then
				player:SendAreaTriggerMessage("|cFF76ff30[PvP System] You can't recieve PvP buffs, because you do not have an item in every slot!")
				return false;
			end
		
	
			local class_id = player:GetClass()
			for c, class_spell in pairs(class_template[class_id] or {}) do
				if(player:GetAura(class_spell) == nil) then
					local player_strenght = player:GetStat(0)
					local player_agility = player:GetStat(1)
					local player_stamina = player:GetStat(2)
					local player_intellect = player:GetStat(3)
					local player_spirit = player:GetStat(4)
					local player_spell_power = player:GetBaseSpellPower(1)
					-- This is where the magic begins, we will calculate the stats and add buffs until each player reaches the wanted stats. 
					if(class_id == 1) then -- Warrior
						if(player_strenght <= 8000 and player_agility <= 2000) then
							local current_strenght = player_strenght
							local stack_amount = 0
							while current_strenght < 8000 do
								current_strenght = current_strenght + 100
								stack_amount = stack_amount + 1
							end
							player:CastSpell(player, class_spell, true)
							local aura = player:GetAura(class_spell)
							aura:SetStackAmount(stack_amount)
							player:SetHealth(player:GetMaxHealth())
							player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
							return false;
						end
					elseif(class_id == 2) then -- Paladin
						if(player_spell_power > player_strenght) then
							if(player:HasSpell(31841)) then
								if(player_spell_power <= 13000 and player_strenght <= 2000) then
									local current_spell_power = player_spell_power
									local stack_amount = 0
									while current_spell_power < 13000 do
										current_spell_power = current_spell_power + 200
										stack_amount = stack_amount + 1
									end
									if(player:GetAura(164912) == nil) then
										player:CastSpell(player, 164912, true)
										local aura = player:GetAura(164912)
										aura:SetStackAmount(stack_amount)
										player:SetHealth(player:GetMaxHealth())
										player:SetPower(player:GetMaxPower(0), 0)
										player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
									end
									return false;
								end
							else
								player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Please pick holy talents in order to benefit from the healer PvP Template!")
							end
						elseif(player_strenght > player_spell_power) then
							if(player:HasSpell(35395) or player:HasSpell(31935)) then
								if(player_strenght <= 8000 and player_agility <= 2000) then
									player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
									local current_strenght = player_strenght
									local stack_amount = 0
									while current_strenght < 8000 do
										current_strenght = current_strenght + 100
										stack_amount = stack_amount + 1
									end
									player:CastSpell(player, class_spell, true)
									local aura = player:GetAura(class_spell)
									aura:SetStackAmount(stack_amount)
									player:SetHealth(player:GetMaxHealth())
									player:SendAreaTriggerMessage("|cFF76ff30[PvP System] You will recieve buff!")
									return false;
								end
							else
								player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Please pick prot or ret talents in order to benefit from the dps PvP Template!")
							end
						else
							player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Can't Determine if you are healer or dps")
						end
					elseif(class_id == 3) then -- Hunter
						if(player_agility <= 8000 and player_strenght <= 1500) then
							local current_agility = player_agility
							local stack_amount = 0
							while current_agility < 8000 do
								current_agility = current_agility + 100
								stack_amount = stack_amount +1
							end
							player:CastSpell(player, class_spell, true)
							local aura = player:GetAura(class_spell)
							aura:SetStackAmount(stack_amount)
							player:SetHealth(player:GetMaxHealth())
							player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
						end
					elseif(class_id == 4) then -- Rogue
						if(player_agility <= 8000 and player_strenght <= 2000) then
							local current_agility = player_agility
							local stack_amount = 0
							while current_agility < 8000 do
								current_agility = current_agility + 100
								stack_amount = stack_amount +1
							end
							player:CastSpell(player, class_spell, true)
							local aura = player:GetAura(class_spell)
							aura:SetStackAmount(stack_amount)
							player:SetHealth(player:GetMaxHealth())
							player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
						end
					elseif(class_id == 5) then -- Priest
						if(player_spell_power <= 13000) then
							local current_spell_power = player_spell_power
							local stack_amount = 0
							while current_spell_power < 13000 do
								current_spell_power = current_spell_power + 200
								stack_amount = stack_amount + 1
							end
								player:CastSpell(player, class_spell, true)
								local aura = player:GetAura(class_spell)
								aura:SetStackAmount(stack_amount)
								player:SetHealth(player:GetMaxHealth())
								player:SetPower(player:GetMaxPower(0), 0)
								player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
								return false;
						end
					elseif(class_id == 6) then -- Death Knight
						if(player_strenght <= 8000 and player_agility <= 2000) then
							local current_strenght = player_strenght
							local stack_amount = 0
							while current_strenght < 8000 do
								current_strenght = current_strenght + 100
								stack_amount = stack_amount + 1
							end
							player:CastSpell(player, class_spell, true)
							local aura = player:GetAura(class_spell)
							aura:SetStackAmount(stack_amount)
							player:SetHealth(player:GetMaxHealth())
							player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
							return false;
						end
					elseif(class_id == 7) then -- Shaman
						if(player:HasSpell(51490) or player:HasSpell(974)) then
							print("true")
							if(player_spell_power > player_agility) then
								if(player_spell_power <= 13000 and player_agility <= 2000) then
									local current_spell_power = player_spell_power
									local stack_amount = 0
									while current_spell_power < 13000 do
										current_spell_power = current_spell_power + 200
										stack_amount = stack_amount + 1
									end
									if(player:GetAura(164918) == nil) then -- ADD RIGHT BUFF
										player:CastSpell(player, 164918, true)
										local aura = player:GetAura(164918)
										aura:SetStackAmount(stack_amount)
										player:SetHealth(player:GetMaxHealth())
										player:SetPower(player:GetMaxPower(0), 0)
										player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
									end
									return false;
								end
							else
							
							end
						elseif(player:HasSpell(30823)) then
							if(player_agility > player_intellect ) then
								if(player_agility <= 7000 and player_strenght <= 3000) then
									local current_agility = player_agility
									local stack_amount = 0
									while current_agility < 7000 do
										current_agility = current_agility + 100
										stack_amount = stack_amount +1
									end
									player:CastSpell(player, class_spell, true)
									local aura = player:GetAura(class_spell)
									aura:SetStackAmount(stack_amount)
									player:SetHealth(player:GetMaxHealth())
									player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
								end
							else
							
							end
						end
					elseif(class_id == 8) then -- Mage
						if(player_spell_power <= 13000) then
							local current_spell_power = player_spell_power
							local stack_amount = 0
							while current_spell_power < 13000 do
								current_spell_power = current_spell_power + 200
								stack_amount = stack_amount + 1
							end
								player:CastSpell(player, class_spell, true)
								local aura = player:GetAura(class_spell)
								aura:SetStackAmount(stack_amount)
								player:SetHealth(player:GetMaxHealth())
								player:SetPower(player:GetMaxPower(0), 0)
								player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
								return false;
						end
					elseif(class_id == 9) then -- Warlock
						if(player_spell_power <= 13000) then
							local current_spell_power = player_spell_power
							local stack_amount = 0
							while current_spell_power < 13000 do
								current_spell_power = current_spell_power + 200
								stack_amount = stack_amount + 1
							end
								player:CastSpell(player, class_spell, true)
								local aura = player:GetAura(class_spell)
								aura:SetStackAmount(stack_amount)
								player:SetHealth(player:GetMaxHealth())
								player:SetPower(player:GetMaxPower(0), 0)
								player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
								return false;
						end
					elseif(class_id == 11) then -- Druid
						if(player_spell_power > player_agility) then
							if(player:HasSpell(50516) or player:HasSpell(18562)) then
								if(player_spell_power <= 13000 and player_agility <= 2000) then
									local current_spell_power = player_spell_power
									local stack_amount = 0
									while current_spell_power < 13000 do
										current_spell_power = current_spell_power + 200
										stack_amount = stack_amount + 1
									end
									if(player:GetAura(164922) == nil) then -- ADD RIGHT BUFF
										player:CastSpell(player, 164922, true)
										local aura = player:GetAura(164922)
										aura:SetStackAmount(stack_amount)
										player:SetHealth(player:GetMaxHealth())
										player:SetPower(player:GetMaxPower(0), 0)
										player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
									end
									return false;
								end
							else
							
							end
						elseif(player_agility > player_spell_power) then
							if(player:HasSpell(33917)) then
								if(player_agility <= 7000 and player_strenght <= 3000) then
									local current_agility = player_agility
									local stack_amount = 0
									while current_agility < 7000 do
										current_agility = current_agility + 100
										stack_amount = stack_amount +1
									end
									player:CastSpell(player, class_spell, true)
									local aura = player:GetAura(class_spell)
									aura:SetStackAmount(stack_amount)
									player:SetHealth(player:GetMaxHealth())
									player:SendAreaTriggerMessage("|cFF76ff30[PvP System] Your PvP template has been activated, because your gear is weak!")
								end
							else
							
							end
						end
					end
				else
					-- here we check if the player already has the buff!
				end
			end
			return false;
		else
			for s, spell in pairs(remove_spells) do
				if(player:HasAura(spell)) then
				print(newZone)
				print(zone)
				player:RemoveAura(spell)
				
				end
			end
		end
	end
end
RegisterPlayerEvent(27, Stat_scaling_system)

local function talent_change(event, player, points)
		for s, spell in pairs(remove_spells) do
			if(player:HasAura(spell)) then
				player:RemoveAura(spell)
				player:SendAreaTriggerMessage("|cFF76ff30[PvP System] You have lost the PvP Stat Increase because you equipped a new item (This is to prevent abuse!)")
			end
		end
end

RegisterPlayerEvent(16, talent_change)


local function Change_item_equip(event, player, item, bag, slot)
	for k, zone in pairs(zone_apply) do 
		local player_zone = player:GetZoneId()
		if(player_zone == zone) then
			if(player:GetClass() == 1 or player:GetClass() == 2 or player:GetClass() == 4 or player:GetClass() == 7 or player:GetClass() == 11) then
				if(slot == 15 or slot == 16) then
					return false;
				else
					for s, spell in pairs(remove_spells) do
						if(player:HasAura(spell)) then
							player:RemoveAura(spell)
							player:SendAreaTriggerMessage("You have lost the PvP Stat Increase because you equipped a new item (This is to prevent abuse!)")
						end
					end
				end
			else
				for s, spell in pairs(remove_spells) do
					if(player:HasAura(spell)) then
						player:RemoveAura(spell)
						player:SendAreaTriggerMessage("|cFF76ff30[PvP System] You have lost the PvP Stat Increase because you equipped a new item (This is to prevent abuse!)")
					end
				end
			end
		end
	end
	
end

RegisterPlayerEvent(29, Change_item_equip)