
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
    { 202, 571, 8515.559570, 722.352417, 558.247986, 1.585515 },
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
    { 288, 1, 16199.769, 16205.628, 0.140, 1.178 }, -- gm island non used id
    { 290, 530, -194.139, 1022.196, 54.285, 3.187 },
    { 291, 0, -13269.181, 148.004, 34.542, 1.134 },
    { 292, 560, 2028.902, 332.526, 95.671, 4.687 },
    { 293, 529, 1314.290, 1311.220, -9.010, 3.900 },
    { 294, 529, 683.414, 680.942, -12.915, 0.841 },
    { 295, 571, 5820.412598, -3076.296631, 301.050659, 2.047050 },
    { 296, 571, 7409.819824, -1917.217163, 1471.941895, 0.251834 },
	{ 297, 560, 1346.803467, -247.343430, 63.925495, 2.741040 },
	{ 298, 571, 7589.658691, -1881.615112, 1471.940460, 3.448373 },
    { 299, 0, -645.031, -4714.348, 5.074, 1.100 },
	{ 300, 0, 2506.838867, -5560.291016, 542.096558, 3.835369 },
    { 301, 0, -11068.407227, -5560.291016, 542.096558, 3.835369 },
	{ 310, 0, -11068.38, -1809.96, 52.80, 1.56},
	{ 311, 0, -3865.90, -1566.64, 132.63, 4.57 },
	{ 312, 530, 12561.27, -6774.62, 15.08, 3.11},
}

local MSG_PVP_LOG_DATA = 736
function Player:ShowPvPWindow()
    HQuery = CharDBQuery("SELECT guid, totalKills, totalHonorPoints FROM characters WHERE race IN (2, 5, 6, 8, 10) ORDER BY totalKills DESC LIMIT 20")
    AQuery = CharDBQuery("SELECT guid, totalKills, totalHonorPoints FROM characters WHERE race IN (1, 3, 4, 7, 11) ORDER BY totalKills DESC LIMIT 20")
    
    playerSize = HQuery:GetRowCount() + AQuery:GetRowCount()

    data = CreatePacket(MSG_PVP_LOG_DATA, 1+1+4+40*playerSize);
    data:WriteUByte(0)                          -- type bg = 0 or arena = 1

    data:WriteUByte(1)                          -- battleground ended = 1
    data:WriteUByte(self:GetTeam())             -- team win 1 or 0

    data:WriteULong(playerSize)                 -- player scores size
    
    if(HQuery) then
        repeat
        data:WriteGUID(HQuery:GetUInt32(0))     -- player guid
        data:WriteULong(HQuery:GetUInt32(1))    -- kiling blows
        data:WriteULong(HQuery:GetUInt32(1))    -- honorable kills
        data:WriteULong(0)                      -- deaths
        data:WriteULong(HQuery:GetUInt32(2))    -- bonus honor
        data:WriteULong(0)                      -- damage done
        data:WriteULong(0)                      -- healing done
    
        data:WriteULong(0x00000002)
        data:WriteULong(0)                      -- bases assaulted
        data:WriteULong(0)                      -- bases defended
        until not HQuery:NextRow()
    end
    
    if(AQuery) then
        repeat
        data:WriteGUID(AQuery:GetUInt32(0))     -- player guid
        data:WriteULong(AQuery:GetUInt32(1))    -- kiling blows
        data:WriteULong(AQuery:GetUInt32(1))    -- honorable kills
        data:WriteULong(0)                      -- deaths
        data:WriteULong(AQuery:GetUInt32(2))    -- bonus honor
        data:WriteULong(0)                      -- damage done
        data:WriteULong(0)                      -- healing done
    
        data:WriteULong(0x00000002)
        data:WriteULong(0)                      -- bases assaulted
        data:WriteULong(0)                      -- bases defended
        until not AQuery:NextRow()
    end
    self:SendBroadcastMessage("show pvp data")
    self:SendPacket(data)
end

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

local SMSG_MESSAGECHAT = 150
local CHAT_MSG_RAID_WARNING = 42 -- is 41 on wotlk and 40 on tbc

function Player:SendCustomTeleScreenMessage(text)
    local data = CreatePacket(SMSG_MESSAGECHAT, string.len(text) + 40);
    data:WriteUByte(CHAT_MSG_RAID_WARNING)      -- chat type
    data:WriteULong(0)                          -- lang universal
    data:WriteGUID(0)                           -- uint64 sender guid
    data:WriteULong(0)                          -- uint32 some flags
    data:WriteGUID(0)                           -- uint64
    data:WriteULong(string.len(text)+1)         -- text length
    data:WriteString(text)                      -- text
    data:WriteUByte(0)                          -- uint8
    self:SendPacket(data)
end

function Player:SendCustomTeleScreenMessage2(text)
    local data = CreatePacket(SMSG_MESSAGECHAT, 200);
    data:WriteUByte(42)                         -- uint8
    data:WriteULong(0)                          -- lang universal
    data:WriteGUID(0)                           -- uint64
    data:WriteULong(0)                          -- uint32
    data:WriteULong(1)                          -- uint32 sender guid?
    data:WriteUByte(0)                          -- uint8
    data:WriteGUID(0)                           -- uint64
    data:WriteULong(string.len(text)+1)         -- text length
    data:WriteString(text)                      -- text
    data:WriteUByte(0)                          -- uint8
    self:SendPacket(data)
end

local MenuId = 123
local ItemId = 6948
local News = "Welcome to AMD-WoW! Here's a few tips that will help you when starting out as well as general information:\n\n"
News = News.." Join AMD-WoW's Official Discord through the website. To speak in world chat, type /1 then your desired message.\n\n "
News = News.." If you don't have a hearthstone, get one from the general goods vendor, this will be your teleporter when teleporter NPC isn't around.\n\n"
News = News.." If you encounter any problems please refer to a Game Master by creating a new ticket."

function Player:GetHomeName()
    homeName = "NOT SET"
    if (self:GetHomeBindMapId() ) then
        map = GetMapById( self:GetHomeBindMapId() )
        areaId = map:GetAreaId( self:GetHomeBindX(), self:GetHomeBindY(), self:GetHomeBindZ() )
        homeName = GetAreaName(areaId)
    end
    
    return homeName
end


--------------- TELEPORTER NPC
--------------- TELEPORTER NPC
--------------- TELEPORTER NPC
--------------- TELEPORTER NPC

local NpcId = 60000

local function NpcOnGossipHello(event, player, object)
    player:Dismount()
-- Here we set bind data for profession trainer list menu to default
    if (pBindData[player:GetGUIDLow()] ~= nil) then
        pBindData = { [player:GetGUIDLow()] = { 0, 12, 1 } }
    end
    player:GossipClearMenu() -- required for player gossip
    player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\Attack:30:30:-26|t|rCity War PvP", 1, 9018)
	player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\Buy:30:30:-26|t|rMall", 1, 311)
	player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\Directions:30:30:-26|t|rGlobal Teleports", 1, 95027)
	player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\Gunner:30:30:-26|t|rT1 - T11 Instances", 1, 400)
    player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\Skin:30:30:-26|t|rPvP & PvE Zones", 1, 112)
	player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\Trainer:30:30:-26|t|rSpell and Profession Trainer", 1, 95026)
 
    player:GossipMenuAddItem(10, " |cffCC00CC|TInterface\\CURSOR\\PVP:30:30:-26|t|rPvP Leaderboards", 1, 108)
    player:GossipSetText("AmdWoW")
    player:GossipSendMenu(0x7FFFFFFF, object)
end

local function NpcOnGossipSelect(event, player, object, sender, intid, code, menuid)
    if (intid == 1) then
        player:GossipComplete()
        NpcOnGossipHello(event, player, object)
	elseif (intid == 95026) then
	    player:GossipClearMenu()
		player:GossipMenuAddItem(3, "Weapon skill training", 1, 107)
		player:GossipMenuAddItem(6, "Trade skill training", 1, 10000, nil, nil)
		player:GossipMenuAddItem(3, player:GetClassAsString(0).." skill training", 1, 9022)
		player:GossipMenuAddItem(2, "Learn Mount skill training", 1, 9023)
		player:GossipMenuAddItem(0, "Reset your talents", 1, 111, false, "Are you sure?\n|cffFF0000This service will apply money cost")
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
elseif (intid == 95027) then
	    player:GossipClearMenu()
		player:GossipMenuAddItem(0, "Instance Teleport", 1, 2)
		player:GossipMenuAddItem(2, "|cff1C7600".."City Transfer", 1, 3)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
	
    elseif (intid == 2) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(2, "|ccc8E44AD [Vanilla]|r Dungeons", 1, 9)
        player:GossipMenuAddItem(2, "|cccCA0000 [Burning Crusade]|r Dungeons", 1, 7)
        player:GossipMenuAddItem(2, "|cccCA0000 [Burning Crusade]|r Instances", 1, 6)
        player:GossipMenuAddItem(2, "|ccc0070FF [Lich King]|r Instances", 1, 4)
        player:GossipMenuAddItem(0, "[Reset Instances]", 1, 100, false, "Are you sure?\n|cffFF0000This service costs 10 magic gold")
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 3) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF Go back to main Menu", 1, 1)
		player:GossipMenuAddItem(9, "|cff257c7a[Mall]|r Teleport", 1, 311)
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
        player:GossipMenuAddItem(2, "|ccc2B8B18[Neutral] Dalaran City", 1, 276)
        player:GossipMenuAddItem(2, "|ccc2B8B18[Neutral] Shattrath City", 1, 277)
        player:GossipMenuAddItem(2, "|ccc2B8B18[Neutral] Booty Bay", 1, 278)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 4) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 2)
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
        player:GossipMenuAddItem(7, "[1 of 2] Next Page", 1, 5)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 5) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 4)
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
    elseif (intid == 6) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 2)
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
    elseif (intid == 7) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 2)
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
        player:GossipMenuAddItem(7, "[1 of 2] Next Page", 1, 8)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 8) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 7)
        player:GossipMenuAddItem(2, "[59] Slave Pens", 1, 245)
        player:GossipMenuAddItem(2, "[67] The Mechanar", 1, 246)
        player:GossipMenuAddItem(2, "[65] The Steamvault", 1, 247)
        player:GossipMenuAddItem(2, "[60] Underbog", 1, 248)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 9) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 2)
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
        player:GossipMenuAddItem(7, "[1 of 2] Next Page", 1, 10)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 10) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 9)
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
    elseif (intid == 380) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)	
		if (player:IsHorde()) then
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 10 > 20", 1, 300)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 20 > 30", 1, 301)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 30 > 40", 1, 302)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 40 > 50", 1, 303)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 50 > 60", 1, 304)
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 60 > 63", 1, 305)
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 63 > 66", 1, 306)
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 66 > 70", 1, 307)	
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 75", 1, 308)
		else
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 10 > 20", 1, 310)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 20 > 30", 1, 311)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 30 > 40", 1, 312)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 40 > 50", 1, 313)
        player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 50 > 60", 1, 0)
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 60 > 63", 1, 0)
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 63 > 66", 1, 0)
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 66 > 70", 1, 0)	
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 75", 1, 0)
		end
		player:GossipMenuAddItem(2, "|cff00AD3C[level]|r 80", 1, 309)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 400) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(2, "|cff00AD3C[T1]|r Utgarde Keep -|cff800032 Easy", 1, 222)
        player:GossipMenuAddItem(2, "|cff00AD3C[T2]|r The Nexus -|cff800032 Easy", 1, 218)
        player:GossipMenuAddItem(2, "|cff00AD3C[T3]|r Azjol-Nerub -|cffCE0000 Medium!", 1, 201)
        player:GossipMenuAddItem(2, "|cff00AD3C[T4]|r Drak'Tharon Keep -|cffCE0000 Medium!", 1, 204)
        player:GossipMenuAddItem(2, "|cff00AD3C[T5]|r Gundrak -|cffB80000 Hard!!", 1, 207)
		player:GossipMenuAddItem(2, "|cff00AD3C[T6]|r Forge of Souls of Saron -|cffCE0000 Hard!", 1, 206)
		player:GossipMenuAddItem(2, "|cff00AD3C[T7]|r Pit of Saron -|cffCE0000 Hard!", 1, 216)
		player:GossipMenuAddItem(2, "|cff00AD3C[T8]|r Black Temple -|cffCE0000 Very Hard!", 1, 226)
		player:GossipMenuAddItem(2, "|cff00AD3C[T9]|r Trial of the Crusader -|cffCE0000 Very Hard!", 1, 202)
		player:GossipMenuAddItem(2, "|cff00AD3C[T10]|r Ice Crown Citadel -|cffCE0000 Very Hard!", 1, 211)
		player:GossipMenuAddItem(2, "|cff00AD3C[T11]|r Sunwell Plateau -|cffCE0000 Insanely Hard!", 1, 312)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 100) then
        player:GossipMenuAddItem(7, "|cffffff00 < Previous Page", 1, 2)
        if (player:GetCustomOnlinePoints() >= 10) then
            player:GossipMenuAddItem(0, "We reseted all your instances", 1, 2)
            player:UnbindAllInstances()
            player:SetCustomOnlinePoints(player:GetCustomOnlinePoints()-10)
            player:SendBroadcastMessage("|ccc00CCFF All raid instances have been reseted, spent 10 magic gold.")
        else
            player:GossipMenuAddItem(0, "Not enough magic gold", 1, 2)
            player:SendBroadcastMessage("|cffFF0000 Need 10 magic gold, you have "..player:GetCustomOnlinePoints().." points!")
        end
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 106) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(0, "You have "..player:GetCustomOnlinePoints().." magic gold", 1, 1)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
        player:SendBroadcastMessage("|ccc00CCFF You have |cff00ff00"..player:GetCustomOnlinePoints().."|ccc00CCFF magic gold.")
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
        
    elseif (intid >= 200 and intid < 1000) then
        for k,v in pairs(TelePortData) do
            if (TelePortData[k][1] == intid) then
            player:CustomTeleport(TelePortData[k][2],TelePortData[k][3],TelePortData[k][4],TelePortData[k][5],TelePortData[k][6])
            end
        end
        player:GossipComplete()
    elseif (intid == 107) then
        player:CustomTrainer(object, 100000, "Learn Weapon skill", false)
    elseif (intid == 108) then
        player:GossipComplete()
        player:ShowPvPWindow()
    elseif (intid == 110) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        player:GossipMenuAddItem(0, "Thank you", 1, 1)
        player:GossipSetText(os.date("Today [%A] - [%Y/%b/%d]").."\n \n"..News)
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 111) then
        player:GossipComplete()
        player:ResetTalents( true )
    elseif (intid == 112) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(7, "|cff0000FF  Go back to main Menu", 1, 1)
        
        player:GossipMenuAddItem(2, "Durnhold Keep", 1, 292)
		player:GossipMenuAddItem(2, "Well of The Forgotten", 1, 310)
		player:GossipMenuAddItem(2, "5v5 Arena", 1, 297)
        if (player:IsAlliance()) then
            player:GossipMenuAddItem(2, "[Alliance Base] Arathi Basin ", 1, 293)
        else
            player:GossipMenuAddItem(2, "[Horde Base] Arathi Basin", 1, 294)
        end
        if (player:IsAlliance()) then
            player:GossipMenuAddItem(2, "Gurubashi Arena", 1, 291)
        else
		    player:GossipMenuAddItem(2, "Gurubashi Arena", 1, 291)
        end
	    player:GossipMenuAddItem(2, "World Boss", 1, 300)
        player:GossipSetText("AmdWoW")
        player:GossipSendMenu(0x7FFFFFFF, object)
    elseif (intid == 9015) then
        player:CustomTeleport( 0, -9459.690, 37.734, 56.949, 1.439 )
        player:GossipComplete()
    elseif (intid == 9022) then
        player:SendBroadcastMessage("Sending data class ["..player:GetClass().."] "..classData[player:GetClass()][2].." ("..classData[player:GetClass()][1]..")")
        player:CustomTrainer(object, classData[player:GetClass()][1], "Learn "..classData[player:GetClass()][2].." Spells", false)
    elseif (intid == 9023) then
        player:CustomTrainer(object, 28746, "Learn riding skill", false)
        if (player:GetClass() == 6 ) then -- dk learn journyman riding
            player:LearnSpell(33391) -- journeyman riding
            player:SetSkill( 762, 1, 225, 225 )
        end
    elseif (intid == 100000) then
        player:GossipSendMenu(0x7FFFFFFF, player, 0x7FFFFFFF)
        player:SendBroadcastMessage("Sending data class ["..player:GetClass().."] "..classData[player:GetClass()][2].." ("..classData[player:GetClass()][1]..")")
        player:CustomTrainer(object, classData[player:GetClass()][1], "Learn "..classData[player:GetClass()][2].." Spells", true)
    elseif (intid == 100001) then
        player:GossipSendMenu(0x7FFFFFFF, player, 0x7FFFFFFF)
        player:CustomTrainer(object, 28746, "Learn riding skill", false)
    elseif (intid == 9018) then
        if (player:IsAlliance() ) then
            player:CustomTeleport( 1, -6265.555, -3902.118, -61.768, 0.009 )
        else
            player:CustomTeleport( 1, -6125.402, -3901.273, -59.919, 3.145 )
        end
        player:GossipComplete()
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

