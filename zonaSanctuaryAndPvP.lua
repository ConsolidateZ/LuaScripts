
local Durn 	= 2367
local Duel 	= 1377
local Trans = 268

local function ZoneSanctuary(event, player, newZone, newArea)
	if (newZone == Durn ) then
		player:SetFFA( true )
	elseif (newZone == Duel ) then
		player:SetSanctuary( true )
	elseif (newZone == Trans ) then
		player:SetSanctuary( true )
	end
end


RegisterPlayerEvent(27, ZoneSanctuary)