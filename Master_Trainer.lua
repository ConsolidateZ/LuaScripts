
local classData = 
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

local pBindData = {}
local profData = 
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

local TelePortData = 
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
    { 279, 530, -247.322, 921.527, 84.379, 1.599 },
    { 280, 1, 1585.588, -4418.651, 8.686, 1.215 },
    { 281, 1, -1277.369, 124.804, 131.287, 5.222 },
    { 282, 530, 9487.690, -7279.200, 14.286, 6.164 },
    { 283, 0, 1923.689, 234.216, 49.066, 3.163 },
}

local SMSG_NPC_TEXT_UPDATE = 384
local MAX_GOSSIP_TEXT_OPTIONS = 8

function Player:GossipSetText(text)
    data = CreatePacket(SMSG_NPC_TEXT_UPDATE, 100);
    data:WriteULong(0x7FFFFFFF)
    for i = 1, MAX_GOSSIP_TEXT_OPTIONS do
        data:WriteFloat(0)     -- Probability
        data:WriteString(text) -- Text
        data:WriteString(text) -- Text
        data:WriteULong(0)     -- language
        data:WriteULong(0)     -- emote
        data:WriteULong(0)     -- emote
        data:WriteULong(0)     -- emote
        data:WriteULong(0)     -- emote
        data:WriteULong(0)     -- emote
        data:WriteULong(0)     -- emote
    end
    self:SendPacket(data)
end

local MenuId = 123

local NpcId = 100050

local function NpcOnGossipHello(event, player, object)
-- Here we set bind data for profession trainer list menu to default
    if (pBindData[player:GetGUIDLow()] ~= nil) then
        pBindData = { [player:GetGUIDLow()] = { 0, 12, 1 } }
    end
        
    player:GossipClearMenu() -- required for player gossip
    player:GossipMenuAddItem(3, player:GetClassAsString(0).." Skill Training", 1, 100000)
    player:GossipMenuAddItem(3, "Trade Skill Training", 1, 10000)
    player:GossipMenuAddItem(3, "Weapon Skill Training", 1, 100002)
    player:GossipMenuAddItem(3, "Learn Mount Skill", 1, 100001)
    player:GossipMenuAddItem(0, "Talents Reset", 1, 100003, false, "Are you sure?\n|cffFF0000This service will apply money cost")
    player:GossipSetText("WrathWoW")
    player:GossipSendMenu(0x7FFFFFFF, object)
end

local function NpcOnGossipSelect(event, player, object, sender, intid, code, menuid)
    if (intid == 1) then
        player:GossipComplete()
        NpcOnGossipHello(event, player, object)
    
--[[ HANDLE PROFESSIONS TRAINER LIST 

]]--
    elseif (intid == 10001) then
-- Here we return to previous page
        player:GossipMenuAddItem(1, "123", 1, 10000, nil, nil)
        player:GossipSendMenu(0x7FFFFFFF, object)

-- Here we bind data if the player doesn't have already
        if (pBindData[player:GetGUIDLow()] == nil) then
            pBindData = { [player:GetGUIDLow()] = { 0, 12, 1 } }
        else
-- Here if player has bind data then we decrease the min and max count and page number
            if (pBindData[player:GetGUIDLow()][3] > 1) then
                pBindData = { [player:GetGUIDLow()] = { pBindData[player:GetGUIDLow()][1]-24, pBindData[player:GetGUIDLow()][2]-24, pBindData[player:GetGUIDLow()][3]-2 } }
            end
        end
        
    elseif (intid == 10000) then
-- Here we bind data if the player doesn't have already
        count = 0
        if (pBindData[player:GetGUIDLow()] == nil) then
            pBindData = { [player:GetGUIDLow()] = { 0, 12, 1 } }
        end

-- Here we print stuff just for debug info
        print(" ")
        print("----------------------------------------------------")
        print("------< Profession Trainer List Handler >-----------")
        print("----------------------------------------------------")
        print("   Processing list for ("..player:GetName()..") page: "..pBindData[player:GetGUIDLow()][3].."")
        print("----------------------------------------------------")
        
-- Here we show the menu items
        player:GossipSetText("(All Trainers) Spells & Professions")
        player:GossipMenuAddItem(0, "Main Menu", 1, 1)
        
-- Here we show the return to previous page menu item
        if (pBindData[player:GetGUIDLow()][3] > 1) then
            player:GossipMenuAddItem(7, "Return", 1, 10001)
        end
        
-- Here we add professions from data table list
        for k,v in ipairs(profData) do 
            count = count + 1
            if (k > pBindData[player:GetGUIDLow()][1] and k <= pBindData[player:GetGUIDLow()][2]) then
                player:GossipMenuAddItem(3, profData[k][3].." ("..profData[k][4]..")", 1, profData[k][1])
            end
        end
        
-- Here we handle if list exceeds more than 12 professions in menu
        if (count > pBindData[player:GetGUIDLow()][2]) then
            player:GossipMenuAddItem(7, "(Page "..pBindData[player:GetGUIDLow()][3].." of "..math.ceil(count/12)..") Next Page", 1, 10000)
            pBindData = { [player:GetGUIDLow()] = { pBindData[player:GetGUIDLow()][1]+12, pBindData[player:GetGUIDLow()][2]+12, pBindData[player:GetGUIDLow()][3]+1 } }
        end
        
-- Here we send the menu list
        player:GossipSendMenu(0x7FFFFFFF, object)
        
    elseif (intid == 2) then
        OnGossipHello(event, player, object)
    elseif (intid == 5) then
        player:GossipComplete()
    elseif (intid == 100000) then
        player:SendBroadcastMessage("Sending data class ["..player:GetClass().."] "..classData[player:GetClass()][2].." ("..classData[player:GetClass()][1]..")")
        player:CustomTrainer(object, classData[player:GetClass()][1], "Learn "..classData[player:GetClass()][2].." Spells", false)
    elseif (intid == 100001) then
        player:CustomTrainer(object, 28746, "Learn riding skill", false)
        if (player:GetClass() == 6 ) then -- dk learn journyman riding
            player:LearnSpell(33391) -- journeyman riding
            player:SetSkill( 762, 1, 150, 150 )
        end
    elseif (intid == 100002) then
        player:CustomTrainer(object, 100000, "Learn Weapon skill", false)
    elseif (intid == 100003) then
        player:GossipComplete()
        player:ResetTalents( true )
    end
    for k,v in pairs(profData) do
        if (profData[k][1] == intid) then
            player:SendBroadcastMessage("Sending data profession ["..profData[k][3].."]  ("..profData[k][4]..")")
            player:CustomTrainer(object, profData[k][2], "Learn "..profData[k][3].." Skills", false)
        end
    end
end

RegisterCreatureGossipEvent(NpcId, 1, NpcOnGossipHello)
RegisterCreatureGossipEvent(NpcId, 2, NpcOnGossipSelect)

