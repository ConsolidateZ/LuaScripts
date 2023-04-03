
local PInfo = {  { 0, 5, "Player" },
    { 1, 7,     "Vip1" },
    { 2, 8,     "Vip2" },
    { 3, 9,    "Vip3" },
    { 4, 10,    "Vip4" },
    { 5, 11,    "Vip5" },
    { 6, 13,    "Vip6" },
    { 7, 15,    "Vip7" },
}

local function OnResetTalents(event, player, noCost)
    nonVIPstr = ""
    if ( player:GetPremiumType() == 0 ) then
        nonVIPstr = player:GetClassAsString( 0 ).." "
    end
    
    buildStr = PInfo[player:GetPremiumType()+1][3].." "..nonVIPstr
    buildStr = buildStr.."|ccc00ff00|Hplayer:"..player:GetName().."|h["..player:GetName().."]|h|r "
    buildStr = buildStr.."gets "..(PInfo[player:GetPremiumType()+1][2]-5).." "
    buildStr = buildStr.."more talent points."
    
    
    if ( player:GetPremiumType() > 0 ) then
        player:SendBroadcastMessage("|ccc00FF00"..PInfo[player:GetPremiumType()+1][3].." get "..(PInfo[player:GetPremiumType()+1][2]-5).." more talent points")
        worldPlayers = GetPlayersInWorld(2) -- get all players online
        for _, v in pairs (worldPlayers) do
            v:SendAreaTriggerMessage(buildStr)
        end
    end
end

RegisterPlayerEvent(17, OnResetTalents)