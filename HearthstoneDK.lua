

function Hearthstone( event, player)
	if player:GetClass() == 6 then -- Deathknight
		if(player:HasItem(6948) == true) then
		else
			player:AddItem(6948,1)
		end
	end
end

RegisterPlayerEvent(3, Hearthstone)