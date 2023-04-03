local CreatureList = { 
		180005,
		180008
} -- Add all the creature entry ID's here. This is to allow the script to trigger. Sadly we can't get those entries from the database, since it would probably lag too much.
	

local function CreatureDropItem(event, creature, killer)
    group = killer:GetGroup()
    DropQuery = WorldDBQuery("SELECT * FROM creature_custom_loot WHERE creature_entry = '"..creature:GetEntry().."';")
	if(DropQuery) then
		item1 = DropQuery:GetUInt32(1)
		item1_chance = DropQuery:GetUInt32(2)
		item1_amount = DropQuery:GetUInt32(3)
	
		item2 = DropQuery:GetUInt32(4)
		item2_chance = DropQuery:GetUInt32(5)
		item2_amount = DropQuery:GetUInt32(6)
	
		item3 = DropQuery:GetUInt32(7)
		item3_chance = DropQuery:GetUInt32(8)
		item3_amount = DropQuery:GetUInt32(9)
	
		item4 = DropQuery:GetUInt32(10)
		item4_chance = DropQuery:GetUInt32(11)
		item4_amount = DropQuery:GetUInt32(12)
	
		item5 = DropQuery:GetUInt32(13)
		item5_chance = DropQuery:GetUInt32(14)
		item5_amount = DropQuery:GetUInt32(15)
	end
	
    if ( group ) then
        for _,v in pairs(group:GetMembers()) do
            loot_chance1 = math.random(1, 100)
			if(item1_chance <= loot_chance1) then
				v:AddItem(item1, item1_amount)
			end
			loot_chance2 = math.random(1, 100)
			if(item2_chance <= loot_chance2) then
				v:AddItem(item2, item1_amount)
			end
			loot_chance3 = math.random(1, 100)
			if(item1_chance <= loot_chance3) then
				v:AddItem(item3, item1_amount)
			end
			loot_chance4 = math.random(1, 100)
			if(item1_chance <= loot_chance) then
				v:AddItem(item4, item1_amount4)
			end
			loot_chance5 = math.random(1, 100)
			if(item1_chance <= loot_chance) then
				v:AddItem(item5, item1_amount5)
			end
        end
    else
            loot_chance1 = math.random(1, 100)
			if(item1_chance <= loot_chance1) then
				v:AddItem(item1, item1_amount)
			end
			loot_chance2 = math.random(1, 100)
			if(item2_chance <= loot_chance2) then
				v:AddItem(item2, item1_amount)
			end
			loot_chance3 = math.random(1, 100)
			if(item1_chance <= loot_chance3) then
				v:AddItem(item3, item1_amount)
			end
			loot_chance4 = math.random(1, 100)
			if(item1_chance <= loot_chance) then
				v:AddItem(item4, item1_amount4)
			end
			loot_chance5 = math.random(1, 100)
			if(item1_chance <= loot_chance) then
				v:AddItem(item5, item1_amount5)
			end
    end
    
end

for  k,v in pairs (CreatureList) do
    RegisterCreatureEvent(k, 4, CreatureDropItem)
end
