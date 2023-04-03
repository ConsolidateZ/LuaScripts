local ItemId = 6948 -- Item needs to have spell on use
local MenuId = 123 -- Unique ID to recognice player gossip menu among others

local MorphData = {
    { 1000, "Teron", 21576 },
    { 1001, "Lich King", 24191 },
    { 1002, "Illidan", 27571 },
    { 1003, "Maiev", 20628 },
    { 1004, "Mediv", 18718 },
    { 1005, "Tyrande", 7274 },
    { 1006, "Sylvanas", 28213 },
    { 1007, "Guitar Artist", 21666 },
    { 1008, "Leotheras", 20514 },
    { 1009, "Belf Marshall", 17377 },
    { 1010, "Sharky Shark", 12193 },
    { 1011, "Angelic Morph", 24991 },
	
}

local ClassTrainersData = 
{ 
--  class id = trainerEntry, className, color
    [1] = { 26332, "Warrior" },
    [2] = { 26327, "Paladin" },
    [3] = { 26325, "Hunter" },
    [4] = { 26329, "Rogue" },
    [5] = { 26328, "Priest" },
    [6] = { 28474, "Deathknight" },
    [7] = { 26330, "Shaman" },
    [8] = { 26326, "Mage" },
    [9] = { 26331, "Warlock" },
    [11] = { 26324, "Druid" }
}

local ProfessionTrainersData = 
{ 
--  id = gossipid, trainerEntry, profName, trainableRank
    { 800001, 3964, "Alchemy", "1 - 300" },
    { 800002, 27023, "Alchemy", "300 - 375" },
    { 800003, 28703, "Alchemy", "375 - 450" },
    { 800004, 2836, "Blacksmithing", "1 - 300" },
    { 800005, 19341, "Blacksmithing", "300 - 375" },
    { 800006, 33591, "Blacksmithing", "375 - 450" },
    { 800007, 29506, "Armorsmithing", "" },
    { 800008, 29505, "Weaponsmithing", "" },
    { 800009, 19251, "Enchanting", "1 - 300" },
    { 800010, 19540, "Enchanting", "300 - 375" },
    { 800011, 33583, "Enchanting", "375 - 450" },
    { 800012, 30710, "Inscription", "1 - 300" },
    { 800013, 33638, "Inscription", "300 - 375" },
    { 800014, 33603, "Inscription", "375 - 450" },
    { 800015, 16667, "Engineering", "1 - 300" },
    { 800016, 19576, "Engineering", "300 - 375" },
    { 800017, 33586, "Engineering", "375 - 450" },
    { 800018, 29514, "Gnomish Engineering", "" },
    { 800019, 29513, "Goblin Engineering", "" },
    { 800020, 33589, "First Aid", "" },
    { 800021, 19775, "Jewelcrafting", "1 - 300" },
    { 800022, 19539, "Jewelcrafting", "300 - 375" },
    { 800023, 33590, "Jewelcrafting", "375 - 450" },
    { 800024, 33590, "Jewelcrafting", "375 - 450" },
    { 800026, 16688, "Leatherworking", "1 - 300" },
    { 800027, 19187, "Leatherworking", "300 - 375" },
    { 800028, 33581, "Leatherworking", "375 - 450" },
    { 800029, 29508, "Dragonscale Leatherworking", "" },
    { 800030, 29507, "Elemental Leatherworking", "" },
    { 800031, 29509, "Tribal Leatherworking", "" },
    { 800032, 16663, "Mining", "1 - 300" },
    { 800033, 33640, "Mining", "300 - 375" },
    { 800034, 28698, "Mining", "375 - 450" },
    { 800035, 16640, "Tailoring", "1 - 300" },
    { 800036, 18749, "Tailoring", "300 - 375" },
    { 800037, 33580, "Tailoring", "375 - 450" },
    { 800038, 4578, "Artisan Shadoweave", "" },
    { 800039, 19185, "Cooking", "1 - 300" },
    { 800040, 18993, "Cooking", "300 - 375" },
    { 800041, 26953, "Cooking", "375 - 450" },
    { 800042, 18018, "Fishing", "1 - 300" },
    { 800043, 18911, "Fishing", "300 - 375" },
    { 800044, 28742, "Fishing", "375 - 450" },
    { 800045, 16644, "Herbalism", "1 - 300" },
    { 800046, 18776, "Herbalism", "300 - 375" },
    { 800047, 28704, "Herbalism", "375 - 450" },
    { 800048, 16692, "Skinning", "1 - 300" },
    { 800049, 18755, "Skinning", "300 - 375" },
    { 800050, 28696, "Skinning", "375 - 450" },
}

local TeleportData = 
{
    { 200, 571, 3646.830, 2045.425, 1.787, 4.316 },
    { 201, 571, 3693.796, 2147.932, 34.869, 2.430 },
    { 202, 571, 8588.419, 791.888, 558.234, 3.238 },
    { 203, 1, -8755.882, -4452.098, -199.943, 4.550 },
    { 204, 571, 4774.600, -2032.920, 229.145, 1.590 },
    { 205, 571, 3857.359, 6991.517, 152.074, 5.843 },
    { 206, 571, 5661.932, 2012.866, 798.042, 5.374 },
    { 207, 571, 6952.323, -4419.985, 450.077, 0.756 },
    { 208, 571, 9182.958, -1384.684, 1110.209, 5.549 },
    { 209, 571, 5631.471, 1998.636, 798.055, 4.614 },
    { 210, 571, 8921.551, -982.265, 1039.310, 1.560 },
    { 211, 571, 5814.672, 2080.984, 636.063, 3.471 },
    { 212, 571, 3668.468, -1266.382, 243.507, 6.106 },
    { 213, 571, 3453.446, 261.910, -112.784, 3.210 },
    { 214, 571, 3878.170, 6983.807, 106.320, 3.093 },
    { 215, 1, -4707.664, -3726.231, 54.676, 3.804 },
    { 216, 571, 5601.998, 2018.042, 798.041, 3.785 },
    { 217, 571, 3600.352, 197.657, -113.756, 5.323 },
    { 218, 571, 3888.053, 6985.290, 70.990, 0.094 },
    { 219, 571, 5696.729, 507.399, 652.969, 4.030 },
    { 220, 571, 8588.419, 791.888, 558.234, 3.238 },
    { 221, 571, 9326.602, -1114.729, 1245.146, 6.279 },
    { 222, 571, 1222.416, -4864.406, 41.247, 0.313 },
    { 223, 571, 1246.401, -4856.612, 216.664, 3.482 },
    { 224, 571, 5453.720, 2840.790, 421.277, 0.000 },
    { 225, 1, -8177.890, -4181.229, -167.552, 0.913 },
    { 226, 530, -3645.589, 316.596, 35.126, 2.942 },
    { 227, 530, 3530.060, 5104.080, 3.508, 5.511 },
    { 228, 0, -11118.900, -2010.329, 47.081, 0.649 },
    { 229, 530, -312.700, 3087.260, -116.519, 5.190 },
    { 230, 530, 820.025, 6864.930, -66.755, 6.281 },
    { 231, 530, 12574.099, -6774.810, 15.090, 3.137 },
    { 232, 530, 3088.489, 1381.569, 184.863, 4.619 },
    { 233, 530, 3308.919, 1340.719, 505.559, 4.946 },
    { 234, 530, -3362.040, 5209.850, -101.050, 1.609 },
    { 235, 530, -291.324, 3149.100, 31.554, 2.157 },
    { 236, 530, 3407.110, 1488.479, 182.837, 5.595 },
    { 237, 1, -8362.229, -4060.719, -208.267, 0.233 },
    { 238, 530, -360.670, 3071.899, -15.097, 1.893 },
    { 239, 530, 12884.599, -7317.689, 65.502, 4.799 },
    { 240, 530, -3104.179, 4945.520, -101.507, 6.223 },
    { 241, 1, -8751.898, -4184.255, -209.499, 2.360 },
    { 242, 530, -3362.361, 4663.258, -101.047, 4.691 },
    { 243, 530, -3627.899, 4941.979, -101.049, 3.160 },
    { 244, 530, -305.790, 3061.629, -2.538, 1.888 },
    { 245, 530, 717.281, 6979.870, -73.028, 1.502 },
    { 246, 530, 2867.120, 1549.420, 252.158, 3.822 },
    { 247, 530, 794.536, 6927.810, -80.475, 0.159 },
    { 248, 530, 763.307, 6767.810, -67.769, 5.997 },
    { 249, 1, 1811.780, -4410.500, -18.470, 5.201 },
    { 250, 0, -11209.320, 1670.333, 24.819, 1.316 },
    { 251, 1, -731.606, -2218.389, 17.028, 2.784 },
    { 252, 0, -234.675, 1561.630, 76.892, 1.240 },
    { 253, 0, -8768.394, 842.781, 89.304, 0.693 },
    { 254, 1, 4249.990, 740.101, -25.671, 1.340 },
    { 255, 0, -5163.540, 925.422, 257.181, 1.157 },
    { 256, 0, 2884.940, -812.846, 160.332, 6.137 },
    { 257, 0, 2874.938, -812.118, 160.332, 4.428 },
    { 258, 1, -4470.279, -1677.770, 81.392, 1.163 },
    { 259, 1, -1464.140, 2615.209, 76.717, 3.213 },
    { 260, 0, -6071.370, -2955.159, 209.781, 0.015 },
    { 261, 1, -3828.010, 1250.219, 160.225, 3.208 },
    { 262, 0, 1269.640, -2556.209, 93.608, 0.620 },
    { 263, 1, -4657.299, -2519.350, 81.052, 4.548 },
    { 264, 0, 3352.919, -3379.030, 144.781, 6.259 },
    { 265, 1, -6801.189, -2893.020, 9.003, 0.158 },
    { 266, 0, -7179.339, -921.211, 165.820, 5.095 },
    { 267, 0, -10183.126, -3993.072, -109.194, 6.107 },
    { 268, 1, -8409.820, 1499.060, 27.71, 2.518 },
    { 269, 409, 10942.256, -468.901, -105.246, 4.152 },
    { 270, 469, -7672.624, -1105.735, 396.809, 0.703 },
    { 271, 1, -8240.089, 1991.319, 129.072, 0.941 },
    { 272, 0, -9058.044, 438.024, 93.056, 0.693 },
    { 273, 0, -4937.906, -934.789, 503.089, 5.411 },
    { 274, 1, 9952.015, 2280.312, 1341.394, 1.599 },
    { 275, 530, -3965.699, -11653.599, -138.843, 0.852 },
    { 276, 571, 5804.149, 624.968, 647.761, 0.084 },
    { 277, 530, -1864.982, 5418.190, -10.464, 2.130 },
    { 278, 0, -14433.769, 449.831, 15.396, 2.901 },
    { 279, 530, -249.323, 992.470, 69.195, 1.599 },
    { 280, 1, 1353.699, -4369.709, 26.252, 0.2457 },
    { 281, 1, -1277.369, 124.804, 131.287, 5.222 },
    { 282, 530, 9487.690, -7279.200, 14.286, 6.164 },
    { 283, 0, 1923.689, 234.216, 49.066, 3.163 },
    { 284, 530, 12572.317, -6774.803, 15.090, 3.137 },
    { 285, 632, 4922.671, 2176.036, 638.733, 2.003 },
    { 286, 658, 435.318, 212.424, 528.708, 6.256 },
    { 287, 668, 5240.129, 1933.129, 707.695, 0.864 },
    { 288, 1, 16199.769, 16205.628, 0.140, 1.178 },
    { 289, 0, -4744.970, 594.025, 401.342, 2.005 },
    { 290, 530, -194.139, 1022.196, 54.285, 3.187 },
    { 291, 530, -304.271, 1028.376, 54.237, 5.757 },
    { 292, 0, -9459.690, 37.734, 56.949, 1.439 },
	{ 598, 0, -3865.90, -1566.64, 132.63, 4.57 },
}

local ProfMenuDataPlayer = { }

-- save by player guid  =  map, x, y, z, o
local pSData = { }

local function OnSummonHello(event, player, object, summoner)
    player:GossipClearMenu() -- required for player gossip
    player:GossipMenuAddItem(2, "Summon Box: Accept or Deny", 1, 9, false, "You are being summoned by "..summoner:GetName()..".")
    player:GossipSendMenu(1, object, MenuId) -- MenuId required for player gossip
end

local function OnSummonSelect(event, player, object, sender, intid, code, menuid)
    player:SendAreaTriggerMessage("it work")
    index = player:GetGUIDLow()
    player:CustomTeleport(pSData[index][1], pSData[index][2], pSData[index][3], pSData[index][4], pSData[index][5]) 
end

RegisterPlayerGossipEvent(MenuId, 2, OnSummonSelect)

local function OnPlayerCommand(event, player, msg, Type, lang)
    if (msg == "test") then
        OnSummonHello(event, player, player, player)
        return false
    end
end

RegisterPlayerEvent(18, OnPlayerCommand)

local function OnGossipHello(event, player, object)
    player:Dismount()
-- Here we set bind data for profession trainer list menu to default
    if (ProfMenuDataPlayer[player:GetGUIDLow()] ~= nil) then
        ProfMenuDataPlayer = { [player:GetGUIDLow()] = { 0, 12, 1 } }
    end
    --player:GossipMenuAddItem(0, "|cff".."163A92".."[Point send to friends]", 1, 95)
    player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_ShadowMend:30:30:-26|t|rPoint summong friends", 1, 97, true, "Enter Player Name, this service cost 100 Magic Gold\nDon't forget to tell your friend don't move while you summon him.")
    --player:GossipMenuAddItem(0, "[Get Items Online]", 1, 98)
	player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Arcane_Arcane04:30:30:-26|t|rTeleport Mall", 1, 1000000)
    player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\INV_Elemental_Primal_Nether:30:30:-26|t|rVip Service", 1, 100)
    --player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_ShadowMend:30:30:-26|t|rVip Drop Chance", 1, 108)
	player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Nature_Invisibilty:30:30:-26|t|rPlayer Services", 1, 1000001)
    --player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_ShadowMend:30:30:-26|t|rMG point check", 1, 91)
    --player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_ShadowMend:30:30:-26|t|rShow my bank", 1, 101)
    --player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_ShadowMend:30:30:-26|t|rRepair Items", 1, 92)
    player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_Twilight:30:30:-26|t|rTeleport", 1, 99)
    --player:GossipMenuAddItem(0, " |cffCC00CC|TInterface\\Icons\\Spell_Shadow_ShadowMend:30:30:-26|t|rTrainers", 1, 102)
    player:GossipSendMenu(1, object, MenuId) -- MenuId required for player gossip
end

local function OnGossipSelect(event, player, object, sender, intid, code, menuid)
	if (intid == 1000000) then
		player:CustomTeleport(0, -3865.90, -1566.64, 132.63, 4.57)
		OnGossipHello(event, player, object)
	elseif (intid == 1000001) then
		player:GossipMenuAddItem(0, "MG point check", 1, 91)
		player:GossipMenuAddItem(0, "Show my bank", 1, 101)
		player:GossipMenuAddItem(0, "Repair Items", 1, 92)
		player:GossipMenuAddItem(0, "Trainers", 1, 102)
		player:GossipMenuAddItem(0, "Racial Morphs Morphs", 1, 19530)
		player:GossipMenuAddItem(0, "Crate Key Morphs", 1, 196840)
		player:GossipMenuAddItem(0, "Back ..", 1, 6)
		player:GossipSendMenu(1, object, MenuId) -- MenuId required for player gossip
	end
	
    if (intid == 0) then
        OnGossipHello(event, player, object)
    elseif (intid == 2) then
        player:CustomVendor(player, 1000010, true)
    elseif (intid == 3) then
        player:GossipMenuAddItem(0, "Back ..", 1, 6)
        player:GossipMenuAddItem(0, "Insert MG to exchange", 1, 90, true, "1 MG > 10 GOLD")
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 4) then
        if (player:GetCoinage() >= 50000) then
            player:ModifyMoney(-50000)
        end
        OnGossipHello(event, player, object)
    elseif (intid == 5) then
        player:GossipComplete()
    elseif (intid == 6) then
        OnGossipHello(event, player, object)
--[[ HANDLE PROFESSIONS TRAINER LIST 

]]--
    elseif (intid == 13) then
-- Here we return to previous page
        player:GossipMenuAddItem(1, "_", 1, 14, nil, nil)
        player:GossipSendMenu(0x7FFFFFFF, object)

-- Here we bind data if the player doesn't have already
        if (ProfMenuDataPlayer[player:GetGUIDLow()] == nil) then
            ProfMenuDataPlayer = { [player:GetGUIDLow()] = { 0, 12, 1 } }
        else
-- Here if player has bind data then we decrease the min and max count and page number
            if (ProfMenuDataPlayer[player:GetGUIDLow()][3] > 1) then
                ProfMenuDataPlayer = { [player:GetGUIDLow()] = { ProfMenuDataPlayer[player:GetGUIDLow()][1]-24, ProfMenuDataPlayer[player:GetGUIDLow()][2]-24, ProfMenuDataPlayer[player:GetGUIDLow()][3]-2 } }
            end
        end
        
    elseif (intid == 14) then
-- Here we bind data if the player doesn't have already
        count = 0
        if (ProfMenuDataPlayer[player:GetGUIDLow()] == nil) then
            ProfMenuDataPlayer = { [player:GetGUIDLow()] = { 0, 12, 1 } }
        end
        
-- Here we show the menu items
        player:GossipSetText("Professions trainer")
        player:GossipMenuAddItem(7, "Main menu ..", 1, 1)
        
-- Here we show the return to previous page menu item
        if (ProfMenuDataPlayer[player:GetGUIDLow()][3] > 1) then
            player:GossipMenuAddItem(7, "Back ..", 1, 13)
        elseif (ProfMenuDataPlayer[player:GetGUIDLow()][3] == 1) then
            player:GossipMenuAddItem(7, "Back ..", 1, 102)
        end
        
-- Here we add professions from data table list
        for k,v in ipairs(ProfessionTrainersData) do 
            count = count + 1
            if (k > ProfMenuDataPlayer[player:GetGUIDLow()][1] and k <= ProfMenuDataPlayer[player:GetGUIDLow()][2]) then
                player:GossipMenuAddItem(3, ProfessionTrainersData[k][3].." ("..ProfessionTrainersData[k][4]..")", 1, ProfessionTrainersData[k][1])
            end
        end
        
-- Here we handle if list exceeds more than 12 professions in menu
        if (count > ProfMenuDataPlayer[player:GetGUIDLow()][2]) then
            player:GossipMenuAddItem(7, "(Page "..ProfMenuDataPlayer[player:GetGUIDLow()][3].." of "..math.ceil(count/12)..") Next Page", 1, 14)
            ProfMenuDataPlayer = { [player:GetGUIDLow()] = { ProfMenuDataPlayer[player:GetGUIDLow()][1]+12, ProfMenuDataPlayer[player:GetGUIDLow()][2]+12, ProfMenuDataPlayer[player:GetGUIDLow()][3]+1 } }
        end
        
-- Here we send the menu list
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 90) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        if (tonumber(code) == nil ) then
            player:GossipMenuAddItem(0, "Amount inserted is not valid", 1, 3)
        else
            if (player:GetCustomOnlinePoints() >= tonumber(code) ) then --check if player has enough MG inserted
                if (player:GetCoinage() >= 4000000000 or (tonumber(code)*100000) >= 4000000000) then
                    player:GossipMenuAddItem(0, "Already have too much gold", 1, 3)
                else
                    player:GossipMenuAddItem(0, "You purchased "..(tonumber(code)*10).." gold in exchange of "..tonumber(code).." magic gold", 1, 0)
                    
                    player:SetCoinage( tostring(player:GetCoinage())+ (tonumber(code)*1000000) )
                    
                    player:SetCustomOnlinePoints(player:GetCustomOnlinePoints() - tonumber(code))
                end
            else
                player:GossipMenuAddItem(0, "You don't have that amount", 1, 3)
            end
        end
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 91) then 
        player:GossipMenuAddItem(0, "Back ..", 1, 0)
        player:GossipMenuAddItem(0, "You have .."..player:GetCustomOnlinePoints().." MG", 1, 0)
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 92) then 
        player:GossipMenuAddItem(0, "Back ..", 1, 0)
        player:GossipMenuAddItem(0, "Items repaired", 1, 0)
        player:GossipSendMenu(1, object, MenuId)
        player:DurabilityRepairAll( true )
    elseif (intid == 93) then 
        player:GossipMenuAddItem(0, "Back ..", 1, 0)
        if (player:GetGender() == 0 ) then
            player:GossipMenuAddItem(0, "Switch gender to Female", 1, 94, false, "Service cost 1000 MG")
        else
            player:GossipMenuAddItem(0, "Switch gender to Male", 1, 94, false, "Service cost 1000 MG")
        end
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 94) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        if (player:GetCustomOnlinePoints() >= 1000 ) then --check if player has enough MG
            if (player:GetGender() == 0 ) then
                player:SetGender( 1 )
            else
                player:SetGender( 0 )
            end
            player:GossipMenuAddItem(0, "Success", 1, 0)
            player:SetCustomOnlinePoints(player:GetCustomOnlinePoints() - 1000)
        else
            player:GossipMenuAddItem(0, "You don't have 1000 MG", 1, 0)
        end
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 95) then 
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Send Magic Gold to |cccFF0000SELECTED|r target player", 1, 96, true, "Enter amount of MG you want to give to selected player.")
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 96) then 
        playerTarget = player:GetSelection()
        playerReceiver = playerTarget:ToPlayer()
        
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        if (tonumber(code) == nil ) then
            player:GossipMenuAddItem(0, "Amount inserted is not valid", 1, 95)
        else
            if (playerReceiver) then
                if (player:GetCustomOnlinePoints() >= tonumber(code) ) then --check if player has enough MG
                    player:GossipMenuAddItem(0, "It worked, player |cccFF0000"..playerTarget:GetName().."|r received "..tonumber(code).." MG.", 1, 0)
                    player:SetCustomOnlinePoints(player:GetCustomOnlinePoints() - tonumber(code))
                    playerTarget:SetCustomOnlinePoints(playerTarget:GetCustomOnlinePoints() + tonumber(code))
                    playerTarget:SendBroadcastMessage("Sent you "..tonumber(code).." MG points.")
                else
                    player:GossipMenuAddItem(0, "You don't have that amount of MG", 1, 0)
                end
            else
                player:GossipMenuAddItem(0, "Target selected is not player or does not exist", 1, 0)
            end
        end
        player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 97) then
        playerToSummon = GetPlayerByName( code )
        
        if (playerToSummon) then
            if (player:GetCustomOnlinePoints() >= 100 ) then --check if player has enough MG
                if (player:GetZoneId() == 0 or player:GetZoneId() == 17 or player:GetZoneId() == 215) then
                    player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
                    player:GossipMenuAddItem(0, "Restricted event area cant summon!", 1, 0)
                    player:GossipSendMenu(1, object, MenuId)
                else
                    player:GossipComplete()
                    player:SendBroadcastMessage("You spent 100 MG to summon |cffFF0000"..playerToSummon:GetName().."|r, he will be here shortly if instructed before summon.")
                    OnSummonHello(event, playerToSummon, playerToSummon, player)
                    pSData[playerToSummon:GetGUIDLow()] = { player:GetMapId(), player:GetX(), player:GetY(), player:GetZ(), player:GetO() }
                    playerToSummon:SendBroadcastMessage("Don't move while "..player:GetName().." tries to summon you.")
                    player:SetCustomOnlinePoints(player:GetCustomOnlinePoints() - 100)
                end
            else
                player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
                player:GossipMenuAddItem(0, "You don't have 100 MG", 1, 0)
                player:GossipSendMenu(1, object, MenuId)
            end
        else
            player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
            player:GossipMenuAddItem(0, "Invalid Player", 1, 0)
            player:GossipSendMenu(1, object, MenuId)
        end
    elseif (intid == 98) then
        player:SendShowMailBox( player:GetGUIDLow() )
    elseif (intid == 99) then
        player:GossipMenuAddItem(0, "Back ..", 1, 0)
        player:GossipMenuAddItem(2, "[Teleport to home !", 1, 107)
        player:GossipMenuAddItem(2, "..Set home here", 1, 118, false, "Are you sure?\n|cffFF0000This service costs 10 magic gold")
        player:GossipMenuAddItem(2, "[Instance Teleport]", 1, 109)
		player:GossipMenuAddItem(2, "|cff257c7a[Mall]|r Teleport", 1, 598)
        if (player:IsAlliance()) then
            player:GossipMenuAddItem(2, "|ccc0000FF [Alliance]|r Stormwind", 1, 272)
            player:GossipMenuAddItem(2, "|ccc0000FF [Alliance]|r Ironforge", 1, 273)
            player:GossipMenuAddItem(2, "|ccc0000FF [Alliance]|r Darnassus", 1, 274)
            player:GossipMenuAddItem(2, "|ccc0000FF [Alliance]|r Exodar", 1, 275)
        else
            player:GossipMenuAddItem(2, "|cccFF0000 [Horde]|r Orgrimmar", 1, 280)
            player:GossipMenuAddItem(2, "|cccFF0000 [Horde]|r Thunderbluff", 1, 281)
            player:GossipMenuAddItem(2, "|cccFF0000 [Horde]|r Silvermoon", 1, 282)
            player:GossipMenuAddItem(2, "|cccFF0000 [Horde]|r Undercity", 1, 283)
        end
        player:GossipMenuAddItem(2, "|ccc008BFF[Neutral]|r The Stair of Destiny", 1, 279)
        player:GossipMenuAddItem(2, "|ccc008BFF[Neutral]|r Profession Area", 1, 290)
        player:GossipMenuAddItem(2, "|ccc008BFF[Neutral]|r Dalaran City", 1, 276)
        player:GossipMenuAddItem(2, "|ccc008BFF[Neutral]|r Shattrath City", 1, 277)
        player:GossipMenuAddItem(2, "|ccc008BFF[Neutral]|r Booty Bay", 1, 278)
        player:GossipSendMenu(1, object, MenuId)
        player:DurabilityRepairAll( true )
    elseif (intid == 100) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        if (player:GetPremiumType() >= 1 ) then
            player:GossipMenuAddItem(0, "<Vip Buff Compensate>", 1, 123) 
            player:GossipMenuAddItem(0, "Morphs", 1, 124)
        else
            player:GossipMenuAddItem(0, "need vip level 1", 1, 0)
        end
        player:GossipSendMenu(1, object, MenuId)
		elseif (intid == 124) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
            player:GossipMenuAddItem(0, "[DEMORPH]", 1, 999) 
            player:GossipMenuAddItem(0, "Morph into Teron", 1, 1000) -- .morph 21576
            player:GossipMenuAddItem(0, "Morph into Lich King", 1, 1001) -- .morph 24191
            player:GossipMenuAddItem(0, "Morph into Illidan", 1, 1002) -- .morph 27571
            player:GossipMenuAddItem(0, "Morph into Maiev", 1, 1003) -- .morph 20628
            player:GossipMenuAddItem(0, "Morph into Mediv", 1, 1004) -- .morph 18718
            player:GossipMenuAddItem(0, "Morph into Tyrande", 1, 1005) -- .morph 7274
            player:GossipMenuAddItem(0, "Morph into Sylvanas", 1, 1006) -- .morph 28213
            player:GossipMenuAddItem(0, "Morph into Guitar Artist", 1, 1007) -- .morph 21666
            player:GossipMenuAddItem(0, "Morph into Leotheras", 1, 1008) -- .morph 20514
            player:GossipMenuAddItem(0, "Morph into Belf Marshall", 1, 1009) -- .morph 17377
            player:GossipMenuAddItem(0, "Morph into Sharky Shark", 1, 1010) -- .morph ?
            player:GossipMenuAddItem(0, "Morph into Angelic Morph", 1, 1011) -- .morph 24991
			player:GossipMenuAddItem(0, "Morph into Hell Man (Requires 5 days played)", 1, 10120) -- .morph 9472
        player:GossipSendMenu(1, object, MenuId)
		elseif(intid == 196840) then
		player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
		player:GossipMenuAddItem(0, "[DEMORPH]", 1, 999) 
		if (player:HasItem(140024, 1, true)) then -- Vote morph 1
			player:GossipMenuAddItem(0, "Morph Demon hunter", 1, 140024)
		end
		if (player:HasItem(155340, 1, true)) then -- Donation 1
			player:GossipMenuAddItem(0, "Morph Saurfang", 1, 155340)
		end
		if (player:HasItem(155341, 1, true)) then -- Donation 2
			player:GossipMenuAddItem(0, "Morph Scuba Diver Red Armor BIG Male Gnome", 1, 155341)
		end
		if (player:HasItem(155342, 1, true)) then -- Donation 3
			player:GossipMenuAddItem(0, "Morph Goblin pimp", 1, 155342)
		end
		if (player:HasItem(155338, 1, true)) then -- DONATION Morph Package
			player:GossipMenuAddItem(0, "Morph Blue Male BE cool armor", 1, 155338)
		end
		if (player:HasItem(155338, 1, true)) then -- DONATION Morph Package
			player:GossipMenuAddItem(0, "Morph Goblin Female", 1, 155348)
		end
		if (player:HasItem(155338, 1, true)) then -- DONATION Morph Package
			player:GossipMenuAddItem(0, "Morph Gobline Male", 1, 155358)
		end
		if (player:HasItem(155338, 1, true)) then -- DONATION Morph Package
			player:GossipMenuAddItem(0, "Morph Small Prof. Putricide", 1, 155368)
		end
		if (player:HasItem(155338, 1, true)) then -- DONATION Morph Package
			player:GossipMenuAddItem(0, "Morph Red Nether ORC", 1, 155378)
		end
		player:GossipSendMenu(1, object, MenuId)
		elseif (intid == 19530) then
			player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
			player:GossipMenuAddItem(0, "[DEMORPH]", 1, 999) 
			if (player:HasItem(672301, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Orc Male", 1, 672301)
			end
			if (player:HasItem(672302, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Orc Female", 1, 672302)
			end
			if (player:HasItem(672303, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Tauren Male", 1, 672303)
			end
			if (player:HasItem(672304, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Tauren Female", 1, 672304)
			end
			if (player:HasItem(672305, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Undead Male", 1, 672305)
			end
			if (player:HasItem(672306, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Undead Female", 1, 672306)
			end
			if (player:HasItem(672307, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Bloodelf Male", 1, 672307)
			end
			if (player:HasItem(672308, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Bloodelf Female", 1, 672308)
			end
			if (player:HasItem(672309, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Troll Male", 1, 672309)
			end
			if (player:HasItem(672310, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Troll Female", 1, 672310)
			end
			if (player:HasItem(672311, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Human Male", 1, 672311)
			end
			if (player:HasItem(672312, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Human Female", 1, 672312)
			end
			if (player:HasItem(672313, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Dwarf Male", 1, 672313)
			end
			if (player:HasItem(672314, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Dwarf Female", 1, 672314)
			end
			if (player:HasItem(672315, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Nightelf Male", 1, 672315)
			end
			if (player:HasItem(672316, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Nightelf Female", 1, 672316)
			end
			if (player:HasItem(672317, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Gnome Male", 1, 672317)
			end
			if (player:HasItem(672318, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Gnome Female", 1, 672318)
			end
			if (player:HasItem(672319, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Draenai Male", 1, 672319)
			end
			if (player:HasItem(672320, 1, true)) then
				player:GossipMenuAddItem(0, "Morph into Draenai Female", 1, 672320)
			end
		
			player:GossipSendMenu(1, object, MenuId)
			
		
		elseif (intid == 125) then
		player:GossipMenuAddItem(0, "Main menu..", 1, 0)
		player:GossipMenuAddItem(0, "You are Small!", 1, 0)
		player:SetScale(0.6)
		player:GossipSendMenu(1, object, MenuId)
    elseif (intid == 101) then 
        player:SendShowBank( player )
    elseif (intid == 102) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "["..player:GetClassAsString(0).."] Class Trainer", 1, 103)
        player:GossipMenuAddItem(0, "[Weapon skill Trainer]", 1, 104)
        player:GossipMenuAddItem(0, "[Riding skill Trainer]", 1, 105)
        player:GossipMenuAddItem(0, "[Profession skill Trainers]", 1, 13)
        player:GossipMenuAddItem(0, "[Talents Reset]", 1, 106, false, "Are you sure?\n|cffFF0000This service will apply money cost")
        player:GossipMenuAddItem(2, "[Visit (Dual Spec) Trainer]", 1, 291)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
        elseif (intid == 103) then
        player:GossipSendMenu(0x7FFFFFFF, player, 0x7FFFFFFF)
        player:SendBroadcastMessage("Sending data class ["..player:GetClass().."] "..player:GetClassAsString(0).." ("..ClassTrainersData[player:GetClass()][1]..")")
        player:CustomTrainer(player, ClassTrainersData[player:GetClass()][1], "Learn "..player:GetClassAsString(0).." Spells", true)
    elseif (intid == 104) then
        player:GossipSendMenu(0x7FFFFFFF, player, 0x7FFFFFFF)
        player:CustomTrainer(player, 100000, "Learn Weapon skill", false)
    elseif (intid == 105) then
        player:GossipSendMenu(0x7FFFFFFF, player, 0x7FFFFFFF)
        player:CustomTrainer(player, 28746, "Learn riding skill", false)
        
        if (player:GetClass() == 6 ) then -- dk learn journeyman riding
            player:LearnSpell(33391) -- journeyman riding
            player:SetSkill( 762, 1, 225, 225 )
        end
    elseif (intid == 106) then
        player:ResetTalents( true )
        OnGossipHello(event, player, object)
    elseif (intid == 107) then
        player:CustomTeleport(player:GetHomeBindMapId(), player:GetHomeBindX(), player:GetHomeBindY(), player:GetHomeBindZ(), player:GetO())
        OnGossipHello(event, player, object)
    elseif (intid == 108) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        
        player:GossipMenuAddItem(0, "You have +"..player:GetTotalCustomBonusDrop().."% drop chance", 1, 0)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
        
        player:SendBroadcastMessage("|ccc00CCFF You have |cff00ff00"..player:GetTotalCustomBonusDrop().."%|ccc00CCFF more drop chance.")
    elseif (intid == 109) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 99)
        player:GossipMenuAddItem(2, "|ccc8E44AD [Vanilla]|r Dungeons", 1, 110)
        player:GossipMenuAddItem(2, "|cccCA0000 [Burning Crusade]|r Dungeons", 1, 112)
        player:GossipMenuAddItem(2, "|cccCA0000 [Burning Crusade]|r Instances", 1, 114)
        player:GossipMenuAddItem(2, "|ccc0070FF [Lich King]|r Instances", 1, 115)
        player:GossipMenuAddItem(2, "|cffBB0000[Pay]|r Reset Instances", 1, 117, false, "Are you sure?\n|cffFF0000This service costs 10 magic gold")
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 110) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 109)
        player:GossipMenuAddItem(2, "[10] Ragefire Chasm", 1, 249)
        player:GossipMenuAddItem(2, "[10] The Deadmines", 1, 250)
        player:GossipMenuAddItem(2, "[10] Wailing Caverns", 1, 251)
        player:GossipMenuAddItem(2, "[11] Shadowfang Keep", 1, 252)
        player:GossipMenuAddItem(2, "[15] Stormwind Stockade", 1, 253)
        player:GossipMenuAddItem(2, "[15] Blackfathom Deeps", 1, 254)
        player:GossipMenuAddItem(2, "[19] Gnomeregan", 1, 255)
        player:GossipMenuAddItem(2, "[21] Scarlet Halls", 1, 256)
        player:GossipMenuAddItem(2, "[23] Scarlet Monastery", 1, 257)
        player:GossipMenuAddItem(2, "[25] Razorfen Kraul", 1, 258)
        player:GossipMenuAddItem(2, "[25] Maraudon", 1, 259)
        player:GossipMenuAddItem(2, "[30] Uldaman", 1, 260)
        player:GossipMenuAddItem(7, "[1 of 2] Next Page", 1, 111)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 111) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 110)
        player:GossipMenuAddItem(2, "[31] Dire Maul", 1, 261)
        player:GossipMenuAddItem(2, "[33] Scholomance", 1, 262)
        player:GossipMenuAddItem(2, "[35] Razorfen Downs", 1, 263)
        player:GossipMenuAddItem(2, "[37] Stratholme", 1, 264)
        player:GossipMenuAddItem(2, "[39] Zul'Farrak", 1, 265)
        player:GossipMenuAddItem(2, "[42] Blackrock Depths", 1, 266)
        player:GossipMenuAddItem(2, "[45] Sunken Temple", 1, 267)
        player:GossipMenuAddItem(2, "[50] Ruins of Ahn'Qiraj", 1, 268)
        player:GossipMenuAddItem(2, "[55] Blackwing Lair", 1, 270)
        player:GossipMenuAddItem(2, "[50] Temple of Ahn'Qiraj", 1, 271)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 112) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 109)
        player:GossipMenuAddItem(2, "[65] Arcatraz", 1, 233)
        player:GossipMenuAddItem(2, "[62] Auchenai Crypts", 1, 234)
        player:GossipMenuAddItem(2, "[58] Blood Furnace", 1, 235)
        player:GossipMenuAddItem(2, "[67] Botanica", 1, 236)
        player:GossipMenuAddItem(2, "[63] Escape from Durnholde Keep", 1, 237)
        player:GossipMenuAddItem(2, "[57] Hellfire Ramparts", 1, 238)
        player:GossipMenuAddItem(2, "[65] Magisters' Terrace", 1, 239)
        player:GossipMenuAddItem(2, "[61] Mana-Tombs", 1, 240)
        player:GossipMenuAddItem(2, "[65] Opening the Dark Portal", 1, 241)
        player:GossipMenuAddItem(2, "[63] Sethekk Halls", 1, 242)
        player:GossipMenuAddItem(2, "[65] Shadow Labyrinth", 1, 243)
        player:GossipMenuAddItem(2, "[65] Shattered Halls", 1, 244)
        player:GossipMenuAddItem(7, "[1 of 2] Next Page", 1, 113)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 113) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 112)
        player:GossipMenuAddItem(2, "[59] Slave Pens", 1, 245)
        player:GossipMenuAddItem(2, "[67] The Mechanar", 1, 246)
        player:GossipMenuAddItem(2, "[65] The Steamvault", 1, 247)
        player:GossipMenuAddItem(2, "[60] Underbog", 1, 248)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 114) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 109)
        player:GossipMenuAddItem(2, "[70] Battle for Mount Hyjal", 1, 225)
        player:GossipMenuAddItem(2, "[70] Black Temple", 1, 226)
        player:GossipMenuAddItem(2, "[70] Gruul's Lair", 1, 227)
        player:GossipMenuAddItem(2, "[70] Karazhan", 1, 228)
        player:GossipMenuAddItem(2, "[70] Magtheridon's Lair", 1, 229)
        player:GossipMenuAddItem(2, "[70] Serpentshrine Cavern", 1, 230)
        player:GossipMenuAddItem(2, "[70] Sunwell Plateau", 1, 231)
        player:GossipMenuAddItem(2, "[70] Tempest Keep: The Eye", 1, 232)
        player:GossipMenuAddItem(2, "[70] Sunwell Plateau", 1, 284)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 115) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 109)
        player:GossipMenuAddItem(2, "[70] Ahn'kahet: The Old Kingdom", 1, 200)
        player:GossipMenuAddItem(2, "[69] Azjol-Nerub", 1, 201)
        player:GossipMenuAddItem(2, "[80] Trial of the Crusader", 1, 202)
        player:GossipMenuAddItem(2, "[75] Culling of Stratholme", 1, 203)
        player:GossipMenuAddItem(2, "[71] Drak'Tharon Keep", 1, 204)
        player:GossipMenuAddItem(2, "[80] Eye of Eternity", 1, 205)
        player:GossipMenuAddItem(2, "[75] Forge of Souls", 1, 206)
        player:GossipMenuAddItem(2, "[73] Gundrak", 1, 207)
        player:GossipMenuAddItem(2, "[75] Halls of Lightning", 1, 208)
        player:GossipMenuAddItem(2, "[75] Halls of Reflection", 1, 209)
        player:GossipMenuAddItem(2, "[74] Halls of Stone", 1, 210)
        player:GossipMenuAddItem(2, "[80] Icecrown Citadel", 1, 211)
        player:GossipMenuAddItem(7, "[1 of 2] Next Page", 1, 116)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 116) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 115)
        player:GossipMenuAddItem(2, "[80] Naxxramas", 1, 212)
        player:GossipMenuAddItem(2, "[80] Obsidian Sanctum", 1, 213)
        player:GossipMenuAddItem(2, "[75] Oculus", 1, 214)
        player:GossipMenuAddItem(2, "[80] Onyxia's Lair", 1, 215)
        player:GossipMenuAddItem(2, "[75] Pit of Saron", 1, 216)
        player:GossipMenuAddItem(2, "[80] Ruby Sanctum", 1, 217)
        player:GossipMenuAddItem(2, "[68] The Nexus", 1, 218)
        player:GossipMenuAddItem(2, "[72] The Violet Hold", 1, 219)
        player:GossipMenuAddItem(2, "[75] Trial of the Champion", 1, 220)
        player:GossipMenuAddItem(2, "[80] Ulduar", 1, 221)
        player:GossipMenuAddItem(2, "[67] Utgarde Keep", 1, 222)
        player:GossipMenuAddItem(2, "[75] Utgarde Pinnacle", 1, 223)
        player:GossipMenuAddItem(2, "[80] Vault of Archavon", 1, 224)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 117) then
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 109)
        if (player:GetCustomOnlinePoints() >= 10) then
            player:GossipMenuAddItem(0, "We reseted all your instances", 1, 109)
            player:UnbindAllInstances()
            player:SetCustomOnlinePoints(player:GetCustomOnlinePoints()-10)
            player:SendBroadcastMessage("|ccc00CCFF All raid instances have been reseted, spent 10 magic gold.")
        else
            player:GossipMenuAddItem(0, "Not enough magic gold", 1, 109)
            player:SendBroadcastMessage("|cffFF0000 Need 10 magic gold, you have "..player:GetCustomOnlinePoints().." points!")
        end
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 118) then
        map = player:GetMap()
        player:GossipMenuAddItem(0, "Main menu ..", 1, 0)
        player:GossipMenuAddItem(0, "Back ..", 1, 99)
        if ( map:IsArena() or map:IsDungeon() or map:IsRaid() or map:IsHeroic() ) then
            player:GossipMenuAddItem(0, "Can't set home instance or arena", 1, 92)
        elseif (player:GetZoneId() == 17 or player:GetZoneId() == 0 or player:GetZoneId() == 215 ) then -- stair event
            player:GossipMenuAddItem(0, "Can't set home event area!", 1, 92)
        else
            if (player:GetCustomOnlinePoints() >= 10) then
                player:GossipMenuAddItem(0, "New home set with Success", 1, 99)
                player:SetBindPoint( player:GetX(), player:GetY(), player:GetZ(), player:GetMapId(), player:GetAreaId() )
                player:SetCustomOnlinePoints(player:GetCustomOnlinePoints()-10)
                player:SendBroadcastMessage(" .. is your new home, spent 10 magic gold.")
                player:CastSpell(player, 61410, true)
                player:SaveToDB()
            else
                player:GossipMenuAddItem(0, "Not enough magic gold", 1, 99)
                player:SendBroadcastMessage("|ccc00CCFF Need 10 magic gold, you have "..player:GetCustomOnlinePoints().." points!")
            end
        end
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 123) then
        player:CastSpell( player, 23735, true )
        player:CastSpell( player, 23736, true )
        player:CastSpell( player, 23737, true )
        player:CastSpell( player, 23738, true )
        player:CastSpell( player, 23766, true )
        player:CastSpell( player, 23767, true )
        player:CastSpell( player, 23768, true )
        player:CastSpell( player, 23769, true )
        OnGossipHello(event, player, object)
    elseif (intid == 999) then
        player:DeMorph()
        OnGossipHello(event, player, object)
    end
	
	if(intid == 672301) then
		player:SetDisplayId(37920)
		OnGossipHello(event, player, object)
	elseif(intid == 672302)then
		player:SetDisplayId(20316)
		OnGossipHello(event, player, object)
	elseif(intid == 672303)then
		player:SetDisplayId(20319)
		OnGossipHello(event, player, object)
	elseif(intid == 672304)then
		player:SetDisplayId(20584)
		OnGossipHello(event, player, object)
	elseif(intid == 672305)then
		player:SetDisplayId(37923)
		OnGossipHello(event, player, object)
	elseif(intid == 672306)then
		player:SetDisplayId(37924)
		OnGossipHello(event, player, object)
	elseif(intid == 672307)then
		player:SetDisplayId(20369)
		OnGossipHello(event, player, object)
	elseif(intid == 672308)then
		player:SetDisplayId(20370)
		OnGossipHello(event, player, object)
	elseif(intid == 672309)then
		player:SetDisplayId(20321)
		OnGossipHello(event, player, object)
	elseif(intid == 672310)then
		player:SetDisplayId(37922)
		OnGossipHello(event, player, object)
	elseif(intid == 672311)then
		player:SetDisplayId(19723)
		OnGossipHello(event, player, object)
	elseif(intid == 672312)then
		player:SetDisplayId(19724)
		OnGossipHello(event, player, object)
	elseif(intid == 672313)then
		player:SetDisplayId(20317)
		OnGossipHello(event, player, object)
	elseif(intid == 672314)then
		player:SetDisplayId(37918)
		OnGossipHello(event, player, object)
	elseif(intid == 672315)then
		player:SetDisplayId(20318)
		OnGossipHello(event, player, object)
	elseif(intid == 672316)then
		player:SetDisplayId(37919)
		OnGossipHello(event, player, object)
	elseif(intid == 672317)then
		player:SetDisplayId(20580)
		OnGossipHello(event, player, object)
	elseif(intid == 672318)then
		player:SetDisplayId(20320)
		OnGossipHello(event, player, object)
	elseif(intid == 672319)then
		player:SetDisplayId(21105)
		OnGossipHello(event, player, object)
	elseif(intid == 672320)then
		player:SetDisplayId(20323)
		OnGossipHello(event, player, object)
	elseif(intid == 140024)then
		player:SetDisplayId(20130)
		OnGossipHello(event, player, object)
	elseif(intid == 155340)then
		player:SetDisplayId(30790)
		OnGossipHello(event, player, object)
	elseif(intid == 155341)then
		player:SetDisplayId(6914)
		OnGossipHello(event, player, object)
	elseif(intid == 155342)then
		player:SetDisplayId(27910)
		OnGossipHello(event, player, object)
	elseif(intid == 155338)then
		player:SetDisplayId(23224)
		OnGossipHello(event, player, object)
	elseif(intid == 155348)then
		player:SetDisplayId(20583)
		OnGossipHello(event, player, object)
	elseif(intid == 155358)then
		player:SetDisplayId(20582)
		OnGossipHello(event, player, object)
	elseif(intid == 155368)then
		player:SetDisplayId(27600)
		OnGossipHello(event, player, object)
	elseif(intid == 155378)then
		player:SetDisplayId(21267)
		OnGossipHello(event, player, object)
	end
    
    -- morph data 1000-2000
    for k,v in pairs(MorphData) do
        if (MorphData[k][1] == intid) then
            player:SetDisplayId( MorphData[k][3] )
            OnGossipHello(event, player, object)
        end
    end
	if(intid == 10120) then
		if(player:GetTotalPlayedTime() == 432000) then
			player:SetDisplayId(9472)
		else
			player:SendBroadcastMessage("You do not have 5 days played!")
		end
	
	end
    -- professions data 800001++
    for k,v in pairs(ProfessionTrainersData) do
        if (ProfessionTrainersData[k][1] == intid) then
            player:GossipSendMenu(0x7FFFFFFF, player, 0x7FFFFFFF)
            player:SendBroadcastMessage("Sending data profession ["..ProfessionTrainersData[k][3].."]  ("..ProfessionTrainersData[k][4]..")")
            player:CustomTrainer(player, ProfessionTrainersData[k][2], "Learn "..ProfessionTrainersData[k][3].." Skills", false)
        end
    end
    -- teleport data 200-1000
    for k,v in pairs(TeleportData) do
        if (TeleportData[k][1] == intid) then
            player:CustomTeleport(TeleportData[k][2],TeleportData[k][3],TeleportData[k][4],TeleportData[k][5],TeleportData[k][6])
            OnGossipHello(event, player, object)
        end
    end
end



RegisterItemGossipEvent(ItemId, 1, OnGossipHello)
RegisterItemGossipEvent(ItemId, 2, OnGossipSelect)
