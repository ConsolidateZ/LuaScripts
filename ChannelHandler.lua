
-- player:SendChatMessageToPlayer( 7, 0, "|TINTERFACE/CHATFRAME/UI-CHATICON-BLIZZ:12:16|t <GM> [SYSTEM] This Game Master has currently turned his chat off, please open a new ticket if you wish for help", player )
        
        
local function GetTeamIcon(player)
    if (player:GetTeam() == 1) then -- horde
        return "|TInterface/pvpframe/pvp-currency-horde:15:15:0:-2|t" -- height, width, posHorizontal, posVertical
    else
        return "|TInterface/pvpframe/pvp-currency-alliance:15:15:0:-2|t" -- height, width, posHorizontal, posVertical
    end
end

local CHANNEL_CUSTOM = 0
local CHANNEL_GENERAL = 1
local CHANNEL_TRADE = 2
local CHANNEL_DEFENSE = 22
local CHANNEL_GUILDR = 25
local CHANNEL_LFG = 26

local hex_prefix = "|ccc"

local VipColors = {
    {0, hex_prefix.."00FF00"}, -- 1
    {1, hex_prefix.."0080FF"}, -- 2
    {2, hex_prefix.."FF47F9"}, -- 3
    {3, hex_prefix.."FF47F9"}, -- 4
    {4, hex_prefix.."FFF300"}, -- 5
    {5, hex_prefix.."FFE948"}, -- 6 -- vip5
    {6, hex_prefix.."FFA200"}, -- 7
    {7, hex_prefix.."ff0000"}, -- 8
}

local COLOR_C1 = "|cff00FF00"
local COLOR_C2 = "|cff00D1FF"
local COLOR_C3 = "|cffFF0000"
local COLOR_C4 = "|cff34C71A"
local COLOR_C5 = "|cffFFB200"

local function GetPlayerNameLink(player, channel) -- no brackets
    return VipColors[player:GetPremiumType() + 1][2].."|Hplayer:"..player:GetName().."|h"..player:GetName().."|h"
end
-- [[ Replace all characters like "|r" with your custom HEX color ]]--
local gsub = string.gsub
local function StringNoEscape(text, color)
  -- Add color after all color end tags
  return (gsub(text, "|r", "|r"..color))
end

local function GetItemLinkFromString(text)
    itemLink = nil
    pos2 = nil
    if ( string.match(text, "|r") ) then -- if find "|r" in string 
        pos2 = string.find(text, "|r") -- get "|r" position in string
    end
    
    if ( string.match(text, "|Hitem") ) then -- if find "|Hitem" in string 
        pos = string.find(text, "|Hitem") -- get "|Hitem" position in string
        itemLink = string.sub(text, pos, pos2+1) -- get string after "|Hitem" and including "|Hitem.." and untill "|r" including "|r"
    end
    
    return itemLink
end

function Player:SendFactionMessage(text)
    factionPlayers = GetPlayersInWorld( self:GetTeam() )
    for k,v in pairs(factionPlayers) do
        v:SendBroadcastMessage(text)
    end
end

local function OnChannelChat(event, player, msg, Type, lang, channel)
    -- channel = 0 <- is always a custom channel
    -- channel = 1 <- general channel (send to oll online players)
    -- channel = 2 <- trade channel (send only to faction)
    -- channel = 22 <- local defense channel (send only to faction)
    -- channel = 25 <- guild recruitment channel (send only to faction)
    -- channel = 26 <- looking for group channel (send only to faction)
    
    gmTag = ""
    if (player:IsGMChat()) then 
        gmTag = " |TINTERFACE/CHATFRAME/UI-CHATICON-BLIZZ:10:18:0:-2|t " 
    end
    
    if (string.len(msg) >= 3) then -- minimum 3 characters
        if (channel == CHANNEL_GENERAL) then
            SendWorldMessage(GetTeamIcon(player)..COLOR_C1.."[World Chat]"..gmTag.."[|r"..GetPlayerNameLink(player)..COLOR_C1.."]: "..StringNoEscape(msg, COLOR_C1))
            return false -- replace blizzlike channel
        elseif (channel == CHANNEL_TRADE) then
            player:SendFactionMessage(GetTeamIcon(player)..COLOR_C2.."[World Trade]"..gmTag.."[|r"..GetPlayerNameLink(player)..COLOR_C2.."]: "..StringNoEscape(msg, COLOR_C2))
    -- cool feature --player:SendFactionMessage(COLOR_C2.."[SYSTEM]|r ["..GetPlayerNameLink(player, CHANNEL_TRADE).."|r] is selling |r"..GetItemLinkFromString(msg).." !")
            return false -- replace blizzlike channel
        elseif (channel == CHANNEL_DEFENSE) then
            player:SendFactionMessage(GetTeamIcon(player)..COLOR_C3.."[World Defense]"..gmTag.."[|r"..GetPlayerNameLink(player)..COLOR_C3.."]: "..StringNoEscape(msg, COLOR_C3))
            return false -- replace blizzlike channel
        elseif (channel == CHANNEL_GUILDR) then
            player:SendFactionMessage(GetTeamIcon(player)..COLOR_C4.."[Guid Recruitment]"..gmTag.."[|r"..GetPlayerNameLink(player)..COLOR_C4.."]: "..StringNoEscape(msg, COLOR_C4))
            return false -- replace blizzlike channel
        elseif (channel == CHANNEL_LFG) then
            player:SendFactionMessage(GetTeamIcon(player)..COLOR_C5.."[LFG]"..gmTag.."[|r"..GetPlayerNameLink(player)..COLOR_C5.."]: "..StringNoEscape(msg, COLOR_C5))
            return false -- replace blizzlike channel
        else
            player:SendBroadcastMessage(channel)
        end
    else
        return false
    end
end

RegisterPlayerEvent(22, OnChannelChat)

--local function OnSimpleChat(event, player, msg, Type, lang, guild) -- Can return false, newMessage
--            player:SendBroadcastMessage(Type)
--end
--
--RegisterPlayerEvent(21, OnSimpleChat)

