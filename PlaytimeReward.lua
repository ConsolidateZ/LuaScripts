
NPC_ID = 764313

function PlayTimeHello(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Playtime Rewards|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|TInterface\\CURSOR\\Inspect:22:22:|t|r See Playtime Rankings                                                                    |cFFaa7a3c.|r ", 1, 1)
	if(plr:GetTotalPlayedTime() >= 1800) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 30 mins playtime", 1, 3)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 30 mins playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 3600) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 1 hour playtime", 1, 4)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 1 hour playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 10800) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 3 hour playtime", 1, 5)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 3 hour playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 18000) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 5 hour playtime", 1, 6)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 5 hour playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 43200) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 12 hour playtime", 1, 7)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 12 hour playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 64800) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 18 hour playtime", 1, 8)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 18 hour playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 86400) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 1 day playtime", 1, 9)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 1 day playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 129600) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 1 day 12 hours playtime", 1, 10)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 1 day 12 hours playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 172800) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 2 days playtime", 1, 11)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 2 days playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 432000) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 5 days playtime", 1, 12)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 5 days playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 864000) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 10 days playtime", 1, 13)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 10 days playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 2160000) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 25 days playtime", 1, 14)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 25 days playtime", 1, 2)
	end
	if(plr:GetTotalPlayedTime() >= 3456000) then
	plr:GossipMenuAddItem(1, "|cff069a3dClaim Reward:|r 40 days playtime", 1, 15)
	else
	plr:GossipMenuAddItem(1, "|cff861C1BClaim Reward:|r 40 days playtime", 1, 2)
	end
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSendMenu(1, obj)
end


--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)
	if (id == 1) then
	 PQuery = CharDBQuery("SELECT name, totaltime FROM characters WHERE IsGM = 0 ORDER BY totaltime DESC LIMIT 20")
	 plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Playtime Rewards|r", 1, 0)
	 plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	 
	 if(PQuery) then
        repeat
	 	charname = PQuery:GetString(0)
		totaltime = PQuery:GetUInt32(1)
		plr:GossipMenuAddItem(1, "Name: "..charname.." - Playtime: "..math.floor((totaltime/(60*24*60))).." Days", 1, 100)
		until not PQuery:NextRow()
	 end
	 	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(1, obj)
	end
	
	if(id == 100) then
		PlayTimeHello(event, plr, obj)
	end
	
	if (id == 2) then
		plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You do not have enough playtime to claim this reward!")
	end
	
	if(id == 3) then -- 30 mins
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 0) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 5000 Honor Points, 1000 Arena Points and 200 Magic Gold!")
			plr:ModifyHonorPoints(5000)
			plr:ModifyArenaPoints(1000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+200)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 1 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 4) then -- 1 hour
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 1) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 10000 Honor Points, 2000 Arena Points and 300 Magic Gold!")
			plr:ModifyHonorPoints(10000)
			plr:ModifyArenaPoints(2000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+300)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 2 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif(id == 5) then -- 3 hours
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 2) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 20000 Honor Points, 4000 Arena Points and 300 Magic Gold!")
			plr:ModifyHonorPoints(20000)
			plr:ModifyArenaPoints(4000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+300)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 3 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif(id == 6) then -- 5 hours
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 3) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 20000 Honor Points, 4000 Arena Points and 400 Magic Gold!")
			plr:ModifyHonorPoints(20000)
			plr:ModifyArenaPoints(4000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+400)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 4 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 7) then -- 12 hours
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 4) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 30000 Honor Points, 5000 Arena Points and 400 Magic Gold!")
			plr:ModifyHonorPoints(30000)
			plr:ModifyArenaPoints(5000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+400)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 5 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 8) then -- 18 hours
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 5) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 30000 Honor Points, 5000 Arena Points and 400 Magic Gold and 50 PvP Kick off")
			plr:ModifyHonorPoints(30000)
			plr:ModifyArenaPoints(5000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+400)
			plr:AddItem(123123, 50)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 6 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 9) then -- 1 day
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 6) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 40000 Honor Points, 8000 Arena Points and 500 Magic Gold!")
			plr:ModifyHonorPoints(40000)
			plr:ModifyArenaPoints(8000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+500)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 7 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 10) then -- 1 day 12 hours
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 7) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 50000 Honor Points, 10000 Arena Points and 600 Magic Gold!")
			plr:ModifyHonorPoints(50000)
			plr:ModifyArenaPoints(10000)
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints()+600)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 8 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 11) then -- 2 days
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 8) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received Immortal Shirt and Tabard!")
			plr:AddItem(80001, 1)
			plr:AddItem(80002, 1)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 9 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 12) then -- 5 days
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 9) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 2x Vip 2 trinket, 50000 Honor Points and 10000 Arena Points!")
			plr:AddItem(1234562, 1)
			plr:AddItem(123457, 1)
			plr:ModifyHonorPoints(50000)
			plr:ModifyArenaPoints(10000)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 10 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 13) then -- 10 days
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 10) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 10 days played Tabard")
			plr:AddItem(193000, 1)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 11 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 14) then -- 25 days
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 11) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 10 days played Tabard")
			plr:AddItem(193001, 1)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 12 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	elseif (id == 15) then -- 40 days
		ItemQuery = CharDBQuery("SELECT playtime_reward  FROM characters WHERE name = '"..plr:GetName().."';")
		playtime_reward = ItemQuery:GetUInt32(0)
		if(playtime_reward == 12) then
			plr:SendBroadcastMessage("|cff0ee733[AmdWoW Playtime Reward] You have received 10 days played Tabard")
			plr:AddItem(193002, 1)
			ItemQuery1 = CharDBQuery("UPDATE characters SET playtime_reward = 13 WHERE name = '"..plr:GetName().."';")
			PlayTimeHello(event, plr, obj)
		else
			plr:SendBroadcastMessage("|cffc31818[AmdWoW Playtime Reward] You have already claimed that reward, or have not claimed the previous reward!")
			PlayTimeHello(event, plr, obj)
		end
	end
	
	if (id == 999) then
		plr:GossipComplete()
	end
end

RegisterCreatureGossipEvent(NPC_ID, 1, PlayTimeHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)