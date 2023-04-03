

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
	player:SendBroadcastMessage("|cFFffc100Welcome to AmdWoW")
    player:StartTaxi(pathid)
end


RegisterPlayerEvent(30, FirstLogin)

