local NPC_ID = 600351
local price = 0
function On_Gossip(event, plr, unit)
		plr:GossipMenuAddItem(0, "I want to play let me choose the amount of gold to gamble!", 0, 0, 1)
		plr:GossipMenuAddItem(0, "I want to play let me choose the amount of magic gold to gamble!", 0, 10, 1)
		plr:GossipMenuAddItem(0, "Nevermind, I would not like to take the risk!", 0, 4)
		plr:GossipSendMenu(1, unit)
end

function On_Select(event, plr, unit, arg2, intid, code)
	
	if(intid == 10) then
	price1 = tostring(code)
		plr:SendBroadcastMessage("Your points:"..plr:GetCustomOnlinePoints().."  What you typed:"..price1.."")
		if(tostring(plr:GetCustomOnlinePoints()) >= price1) then
			plr:GossipMenuAddItem(0, "Costs "..price1.." Magic Gold.", 0, 10)
			plr:GossipMenuAddItem(0, "I choose Rock.", 0, 11)
			plr:GossipMenuAddItem(0, "I choose Paper.", 0, 12)
			plr:GossipMenuAddItem(0, "I choose Scissors.", 0, 13)
			plr:GossipMenuAddItem(0, "Nevermind, I would not like to take the risk!", 0, 4)
			plr:GossipSendMenu(1, unit)
		else
			plr:SendBroadcastMessage("you dont have enough magic gold!")
			plr:SendBroadcastMessage("Your points:"..tostring(plr:GetCustomOnlinePoints()).."  What you typed:"..price1.."")
			plr:GossipComplete()
		end
	elseif(intid == 11) then
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() - price1)
		plr:SendBroadcastMessage("-"..price1.."")
		local m = math.random(1, 3)
			if (m == 1) then
				plr:SendBroadcastMessage("We both chose rock, we tied!")
				plr:SendBroadcastMessage("+"..(price1).."")
				plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + price1)
				plr:GossipComplete()
			end
			if (m == 2) then
				plr:SendBroadcastMessage("I chose paper, I win!")
				plr:GossipComplete()
			end
			if (m == 3) then
				plr:SendBroadcastMessage("I chose scissors, QQ.")
				plr:SendBroadcastMessage("+"..(price1*2).."")
				plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + price1*2)
				plr:GossipComplete()
			end
		
	elseif(intid == 0)then
		price = code
		if(plr:GetCoinage()>=(price*1000))then
		plr:GossipMenuAddItem(0, "Costs "..price.." Gold.", 0, 0)
		plr:GossipMenuAddItem(0, "I choose Rock.", 0, 1)
		plr:GossipMenuAddItem(0, "I choose Paper.", 0, 2)
		plr:GossipMenuAddItem(0, "I choose Scissors.", 0, 3)
		plr:GossipMenuAddItem(0, "Nevermind, I would not like to take the risk!", 0, 4)
		plr:GossipSendMenu(1, unit)
		else
	    plr:SendBroadcastMessage("you dont have enough gold!")
		plr:GossipComplete()
		end
		
	elseif(intid == 4)then
		plr:GossipComplete()
		return
	else
		plr:ModifyMoney(-(price*10000))
		plr:SendBroadcastMessage("-"..price.."")

		if (intid == 1) then
			local m = math.random(1, 3)
			if (m == 1) then
				plr:SendBroadcastMessage("We both chose rock, we tied!")
				plr:SendBroadcastMessage("+"..(price).."")
				plr:ModifyMoney((price*10000))
				plr:GossipComplete()
			end
			if (m == 2) then
				plr:SendBroadcastMessage("I chose paper, I win!")
				plr:GossipComplete()
			end
			if (m == 3) then
				plr:SendBroadcastMessage("I chose scissors, QQ.")
				plr:SendBroadcastMessage("+"..(price*2).."")
				plr:ModifyMoney((price*10000)*2)
				plr:GossipComplete()
			end
		end
	
		if (intid == 2) then
			local m = math.random(1, 3)
			if (m == 1) then
				plr:SendBroadcastMessage("I chose rock, you win.")
				plr:SendBroadcastMessage("+"..(price*2).."")
				plr:ModifyMoney((price*10000)*2)
				plr:GossipComplete()
			end
			if (m == 2) then
				plr:SendBroadcastMessage("We both chose paper, tie!")
				plr:SendBroadcastMessage("+"..(price).."")
				plr:ModifyMoney((price*10000))
				plr:GossipComplete()
			end
			if (m == 3) then
				plr:SendBroadcastMessage("I chose scissors and cut through your paper like butter.")
				plr:GossipComplete()
			end
		end
	
		if (intid == 3) then
			local m = math.random(1, 3)
			if (m == 1) then
				plr:SendBroadcastMessage("I chose rock and crushed your puny scissors, I win!")
				plr:GossipComplete()
			end
			if (m == 2) then
				plr:SendBroadcastMessage("Aww... Your scissors cut through my paper.")
				plr:SendBroadcastMessage("+"..(price*2).."")
				plr:ModifyMoney((price*10000)*2)
				plr:GossipComplete()
			end
			if (m == 3) then
				plr:SendBroadcastMessage("Parry, we tied!!")
				plr:SendBroadcastMessage("+"..(price).."")
				plr:ModifyMoney((price*10000))
				plr:GossipComplete()
			end
		end
	end
end

RegisterCreatureGossipEvent(NPC_ID, 1, On_Gossip)
RegisterCreatureGossipEvent(NPC_ID, 2, On_Select)
