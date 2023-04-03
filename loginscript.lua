

local waypoints = {
	{0, -3370.98, -1778.48, 183.51, 2.22}, -- this should be at / very near the spot where you use player:StartTaxi(pathid) on the player
    {0, -3852.83, -1697.93, 190.59, 2.35},
	{0, -3911.95, -1663.124, 167.02, 2.42},
	{0, -3935.61, -1626.30, 163.74, 0.44},
	{0, -3918.66, -1591.32, 164.40, 0.306},
	{0, -3892.25, -1554.93, 161.46, 6.16},
	{0, -3867.18, -1571.86, 132.63, 4.63},
	
	
}

local pathid = AddTaxiPath(waypoints, 31124, 31124) -- these mountIDs are NPC entries

local function FirstLogin(event, player)
    player:SendNotification("|cFFffc100Welcome to AmdWoW")
	player:SendBroadcastMessage("|cFFffc100Welcome to AmdWoW")
    player:StartTaxi(pathid)
    player:RegisterEvent(messagetwo, 3000, 1)
end

function messagetwo(eventId, time, repeats, player)
    player:SendNotification("|cFFffc100We hope you will enjoy the server, and its content. Starting gear is to your left.")
	player:SendBroadcastMessage("|cFFffc100We hope you will enjoy the server, and its content. Starting gear is to your left.")
    player:RegisterEvent(messagethree, 3000, 1)
end

function messagethree(eventId, time, repeats, player)
    player:SendNotification("|cFFffc100If you need any help, use our world chat /1 or make a ticket.")
	player:SendBroadcastMessage("|cFFffc100If you need any help, use our world chat /1 or make a ticket.")
    player:RegisterEvent(messagefour, 3000, 1)
end

function messagefour(eventId, time, repeats, player)
    player:SendNotification("|cFFffc100Sincerly AmdWoW")
	player:SendBroadcastMessage("|cFFffc100Sincerly AmdWoW")
	player:SetBindPoint(player:GetX(), player:GetY(), player:GetZ(), player:GetMapId(), player:GetAreaId())
end

RegisterPlayerEvent(30, FirstLogin)

