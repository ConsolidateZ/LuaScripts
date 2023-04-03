

local NPC_ID = {
    -- NPC List
    60035,
}

require "base/sc_default"

function GambleVendor(event, plr, unit)
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Gambling Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(0, "|cFF12471d[Gamble]:|r I want to gamble gold", 0, 1)
		plr:GossipMenuAddItem(0, "|cFF12471d[Gamble]:|r I want to gamble magic gold", 1, 2)
		plr:GossipMenuAddItem(0, "|cFF12471d[Gamble]:|r I want to gamble Honor Points", 1, 81)
		plr:GossipMenuAddItem(0, "|cFF12471d[Gamble]:|r I want to gamble Arena Points                                                  |cFFaa7a3c.|r ", 1, 80)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(1, unit)
end



-- plr:CustomVendor(obj, 0) Place NPC ID Where = 0

function GambleVendorSelect(event, plr, unit, sender, id, code)
    if (id == 1) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Gambling Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r Your Gold: "..plr:GetCoinage()/10000, 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 100 Gold", 1, 3)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 300 Gold", 1, 4)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 500 Gold", 1, 5)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 1000 Gold", 1, 6)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 2500 Gold                                                           |cFFaa7a3c.             ", 1, 7)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)

		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 2) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Gambling Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r Your Magic Gold: "..plr:GetCustomOnlinePoints(), 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 100 Magic Gold", 1, 8)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 300 Magic Gold", 1, 9)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 500 Magic Gold", 1, 10)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 1000 Magic Gold", 1, 11)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\BUTTONS\\UI-GroupLoot-Coin-Up:20:20|t|r 2500 Magic Gold                                                           |cFFaa7a3c.             ", 1, 12)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)

		plr:GossipSendMenu(0x7FFFFFFF, unit)
	elseif (id == 81) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Gambling Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		if(plr:GetTeam() == 0) then
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r Your Honor: "..plr:GetHonorPoints(), 1, 0)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r 1000 Honor Points", 1, 14)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r 3000 Honor Points", 1, 15)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r 5000 Honor Points", 1, 16)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r 10000 Honor Points", 1, 17)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r 25000 Honor Points                                                           |cFFaa7a3c.             ", 1, 18)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Alliance:20:20|t|r 100k Honor Points                                                           |cFFaa7a3c.             ", 1, 1800)
		else
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r Your Honor: "..plr:GetHonorPoints(), 1, 0)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r 1000 Honor Points", 1, 14)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r 3000 Honor Points", 1, 15)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r 5000 Honor Points", 1, 16)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r 10000 Honor Points", 1, 17)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r 25000 Honor Points                                                           |cFFaa7a3c.             ", 1, 18)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-Currency-Horde:20:20|t|r 100k Honor Points                                                           |cFFaa7a3c.             ", 1, 1800)
		
		
		end
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(0x7FFFFFFF, unit)
		
	
	elseif (id == 80) then
			plr:GossipClearMenu()
			plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Gambling Vendor|r", 1, 0)
			plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:20:20|t|r Your Arena Points: "..plr:GetArenaPoints(), 1, 0)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:20:20|t|r 1000 Arena Points", 1, 19)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:20:20|t|r 3000 Arena Points", 1, 20)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:20:20|t|r 5000 Arena Points", 1, 21)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:20:20|t|r 10000 Arena Points", 1, 22)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:20:20|t|r 25000 Arena Points                                                           |cFFaa7a3c.             ", 1, 23)
			plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
			plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
			plr:GossipSendMenu(0x7FFFFFFF, unit)
	
	elseif (id == 3) then
		if(plr:GetCoinage()>= 100*10000) then
		plr:ModifyMoney(-100*10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyMoney(100*10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyMoney(100*10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough money!")
		end
		plr:GossipComplete()
	elseif (id == 4) then
		if(plr:GetCoinage()>= 300*10000) then
		plr:ModifyMoney(-300*10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyMoney(300*10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyMoney(300*10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough money!")
		end
		plr:GossipComplete()
	elseif (id == 5) then
		if(plr:GetCoinage()>= 500*10000) then
		plr:ModifyMoney(-500*10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyMoney(500*10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyMoney(500*10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough money!")
		end
		plr:GossipComplete()
	elseif (id == 6) then
		if(plr:GetCoinage()>= 1000*10000) then
		plr:ModifyMoney(-1000*10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyMoney(1000*10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyMoney(1000*10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough money!")
		end
		plr:GossipComplete()
	elseif (id == 7) then
		if(plr:GetCoinage()>= 2500*10000) then
		plr:ModifyMoney(-2500*10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas won 2500 gold from the gambler!|r")
			plr:ModifyMoney(2500*10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyMoney(2500*10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough money!")
		end
		plr:GossipComplete()

	elseif (id == 8) then
		if(plr:GetCustomOnlinePoints() >= 100) then
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() - 100)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 100*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 100)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough magic gold!")
		end
		plr:GossipComplete()
		plr:SaveToDB()
	elseif (id == 9) then
		if(plr:GetCustomOnlinePoints() >= 300) then
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() - 300)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 300*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 300)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough magic gold!")
		end
		plr:GossipComplete()
		plr:SaveToDB()
	elseif (id == 10) then
		if(plr:GetCustomOnlinePoints() >= 500) then
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() - 500)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 500*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 500)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough magic gold!")
		end
		plr:GossipComplete()
		plr:SaveToDB()
	elseif (id == 11) then
		if(plr:GetCustomOnlinePoints() >= 1000) then
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() - 1000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 1000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 1000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough magic gold!")
		end
		plr:GossipComplete()
		plr:SaveToDB()
	elseif (id == 12) then
		if(plr:GetCustomOnlinePoints() >= 2500) then
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() - 2500)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 2500*2)
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas won 2500 magic gold from the gambler!|r")
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 2500)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough magic gold!")
		end
		plr:GossipComplete()
		plr:SaveToDB()
	elseif (id == 1800)then
	if(plr:GetHonorPoints()>= 100000) then
		plr:ModifyHonorPoints(-100000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyHonorPoints(100000*2)
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas has won 100000 Honor Points|r")
			elseif( m == 2) then
			plr:SendBroadcastMessage("You lost!")
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas has lost 100000 Honor Points|r")
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas has lost 100000 Honor Points|r")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Honor Points!")
		end
	elseif (id == 14) then
		if(plr:GetHonorPoints()>= 1000) then
		plr:ModifyHonorPoints(-1000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyHonorPoints(1000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyHonorPoints(1000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Honor Points!")
		end
		plr:GossipComplete()
	elseif (id == 15) then
		if(plr:GetHonorPoints()>= 3000) then
		plr:ModifyHonorPoints(-3000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyHonorPoints(3000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyHonorPoints(3000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Honor Points!")
		end
		plr:GossipComplete()
	elseif (id == 16) then
		if(plr:GetHonorPoints()>= 5000) then
		plr:ModifyHonorPoints(-5000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyHonorPoints(5000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyHonorPoints(5000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Honor Points!")
		end
		plr:GossipComplete()
	elseif (id == 17) then
		if(plr:GetHonorPoints()>= 10000) then
		plr:ModifyHonorPoints(-10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyHonorPoints(10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyHonorPoints(10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Honor Points!")
		end
		plr:GossipComplete()
	elseif (id == 18) then
		if(plr:GetHonorPoints()>= 25000) then
		plr:ModifyHonorPoints(-25000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas won 25000 honor from the gambler!|r")
			plr:ModifyHonorPoints(25000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyHonorPoints(25000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Honor Points!")
		end
		plr:GossipComplete()
	elseif (id == 19) then
		if(plr:GetArenaPoints()>= 1000) then
		plr:ModifyArenaPoints(-1000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyArenaPoints(1000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyArenaPoints(1000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Arena Points!")
		end
		plr:GossipComplete()
	elseif (id == 20) then
		if(plr:GetArenaPoints()>= 3000) then
		plr:ModifyArenaPoints(-3000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyArenaPoints(3000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyArenaPoints(3000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Arena Points!")
		end
		plr:GossipComplete()
	elseif (id == 21) then
		if(plr:GetArenaPoints()>= 5000) then
		plr:ModifyArenaPoints(-5000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyArenaPoints(5000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyArenaPoints(5000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Arena Points!")
		end
		plr:GossipComplete()
	elseif (id == 22) then
		if(plr:GetArenaPoints()>= 10000) then
		plr:ModifyArenaPoints(-10000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			plr:ModifyArenaPoints(10000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyArenaPoints(10000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Arena Points!")
		end
		plr:GossipComplete()
	elseif (id == 23) then
		if(plr:GetArenaPoints()>= 25000) then
		plr:ModifyArenaPoints(-25000)
		local m = math.random(1, 4)
			if( m == 1) then
			plr:SendBroadcastMessage("You have won!")
			SendWorldMessage("|cff10fd5b[AmdWoW Gambler]:|r |cfffd1010"..plr:GetName().."|r |cff10fd5bhas won 25000 Arena Points from the gambler!|r")
			plr:ModifyArenaPoints(25000*2)
			elseif( m == 2) then
			plr:SendBroadcastMessage("It became a tie!")
			plr:ModifyArenaPoints(25000)
			elseif( m == 3) then
			plr:SendBroadcastMessage("You lost!")
			elseif( m == 4) then
			plr:SendBroadcastMessage("You lost!")
			end
		else
			plr:SendBroadcastMessage("You do not have enough Arena Points!")
		end
		plr:GossipComplete()
	elseif (id == 999) then
		plr:GossipComplete()
	end
	
	if(id == 0) then
		plr:GossipComplete()
	end
	
end

for  _,v in pairs (NPC_ID) do
RegisterCreatureGossipEvent(v, 1, GambleVendor)
RegisterCreatureGossipEvent(v, 2, GambleVendorSelect)
end

