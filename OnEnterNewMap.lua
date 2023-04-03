
local function OnDurnholdEnter(event, map, player)
    player:SendBroadcastMessage("|cff00FF00[Zone] "..GetAreaName(player:GetZoneId())..".")
    
    if (map:GetMapId() == 560) then 
        player:AddAura( 50553, player )
    end
end

RegisterServerEvent(21, OnDurnholdEnter)