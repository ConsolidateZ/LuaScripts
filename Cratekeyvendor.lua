
NPC_ID = 896301

function OnGossipHelloCrateKey(event, plr, obj)
    plr:GossipClearMenu()
	plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Crate Key Vendor|r", 1, 0)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "                               |cffaa7a3f.|cff00ff00|TInterface\\BUTTONS/UI-GroupLoot-Dice-Up.png:40|t|r", 1, 0)
	plr:GossipMenuAddItem(1, "|cff63121a[Donation]|r Crate Key Rewards", 1, 1)
	plr:GossipMenuAddItem(1, "|cff103838[Vote]|r Crate Key Rewards", 1, 2)
	plr:GossipMenuAddItem(1, "|cff275a35[Normal]|r Crate Key Rewards                                                        |cFFaa7a3c.|r ", 1, 3)
	plr:GossipMenuAddItem(1, "|cff67006d[Claim Crates]|r I wish to claim my crates!                                                        |cFFaa7a3c.|r ", 1, 200)
	plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
	plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
    plr:GossipSendMenu(1, obj)
end


--plr:SendVendorWindow(obj, 0) Place NPC ID Where = 0

function OnGossipSelect(event, plr, obj, sender, id, code)
	if (id == 1) then
	    plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Crate Key Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffffffff[Common]|r Preview Rewards", 1, 4)
		plr:GossipMenuAddItem(1, "|cff15ff00[Uncommon]|r Preview Rewards", 1, 5)
		plr:GossipMenuAddItem(1, "|cff002bff[Rare]|r Preview Rewards", 1, 6)
		plr:GossipMenuAddItem(1, "|cffc900ff[Epic]|r Preview Rewards", 1, 7)
		plr:GossipMenuAddItem(1, "|cffff8d00[Legendary]|r Preview Rewards                                                              |cFFaa7a3c.|r ", 1, 8)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(1, obj)
	end
	if (id == 2) then
	    plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Crate Key Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffffffff[Common]|r Preview Rewards", 1, 9)
		plr:GossipMenuAddItem(1, "|cff15ff00[Uncommon]|r Preview Rewards", 1, 10)
		plr:GossipMenuAddItem(1, "|cff002bff[Rare]|r Preview Rewards", 1, 11)
		plr:GossipMenuAddItem(1, "|cffc900ff[Epic]|r Preview Rewards", 1, 12)
		plr:GossipMenuAddItem(1, "|cffff8d00[Legendary]|r Preview Rewards                                                              |cFFaa7a3c.|r ", 1, 13)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(1, obj)
	end
	if (id == 3) then
	    plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Crate Key Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffffffff[Common]|r Preview Rewards", 1, 14)
		plr:GossipMenuAddItem(1, "|cff15ff00[Uncommon]|r Preview Rewards", 1, 15)
		plr:GossipMenuAddItem(1, "|cff002bff[Rare]|r Preview Rewards", 1, 16)
		plr:GossipMenuAddItem(1, "|cffc900ff[Epic]|r Preview Rewards", 1, 17)
		plr:GossipMenuAddItem(1, "|cffff8d00[Legendary]|r Preview Rewards                                                              |cFFaa7a3c.|r ", 1, 18)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(1, obj)
	end
	if (id == 4) then
	 plr:CustomVendor(obj, 952100, true)
	elseif (id == 5) then
	 plr:CustomVendor(obj, 952101, true)
	elseif (id == 6) then
	 plr:CustomVendor(obj, 952102, true)
	elseif (id == 7) then
	 plr:CustomVendor(obj, 952103, true)
	elseif (id == 8) then
	 plr:CustomVendor(obj, 952104, true)
	end
	
	if (id == 9) then
	 plr:CustomVendor(obj, 952105, true)
	elseif (id == 10) then
	 plr:CustomVendor(obj, 952106, true)
	elseif (id == 11) then
	 plr:CustomVendor(obj, 952107, true)
	elseif (id == 12) then
	 plr:CustomVendor(obj, 952108, true)
	elseif (id == 13) then
	 plr:CustomVendor(obj, 952109, true)
	end
	
	if (id == 14) then
	 plr:CustomVendor(obj, 952110, true)
	elseif (id == 15) then
	 plr:CustomVendor(obj, 952111, true)
	elseif (id == 16) then
	 plr:CustomVendor(obj, 952112, true)
	elseif (id == 17) then
	 plr:CustomVendor(obj, 952113, true)
	elseif (id == 18) then
	 plr:CustomVendor(obj, 952114, true)
	end
	
	if (id == 200) then
		plr:GossipClearMenu()
		plr:GossipMenuAddItem(1, "            |cFF1b1f46AmdWoW Crate Key Vendor|r", 1, 0)
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "Your Crates to Claim:                                                  |cFFaa7a3c.|r ", 1, 0)
		
		--Donation Crate Key Rewards Here
		if(plr:GetItemCount(155336) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155336), 1, 155336)
		end
		if(plr:GetItemCount(155337) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155337), 1, 155337)
		end
		if(plr:GetItemCount(155348) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155348), 1, 155348)
		end
		if(plr:GetItemCount(155343) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155343), 1, 155343)
		end
		if(plr:GetItemCount(155345) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155345), 1, 155345)
		end
		if(plr:GetItemCount(155355) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155355), 1, 155355)
		end
		if(plr:GetItemCount(155356) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155356), 1, 155356)
		end
		if(plr:GetItemCount(155349) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155349), 1, 155349)
		end
		if(plr:GetItemCount(155351) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155351), 1, 155351)
		end
		if(plr:GetItemCount(155350) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155350), 1, 155350)
		end
		if(plr:GetItemCount(155365) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155365), 1, 155365)
		end
		if(plr:GetItemCount(155364) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155364), 1, 155364)
		end
		if(plr:GetItemCount(155358) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155358), 1, 155358)
		end
		if(plr:GetItemCount(155357) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155357), 1, 155357)
		end
		if(plr:GetItemCount(155362) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155362), 1, 155362)
		end
		if(plr:GetItemCount(155372) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155372), 1, 155372)
		end
		if(plr:GetItemCount(155374) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155374), 1, 155374)
		end
		if(plr:GetItemCount(155369) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155369), 1, 155369)
		end
		if(plr:GetItemCount(155368) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155368), 1, 155368)
		end
		if(plr:GetItemCount(155370) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155370), 1, 155370)
		end
		if(plr:GetItemCount(155367) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155367), 1, 155367)
		end
		if(plr:GetItemCount(155366) >= 1) then
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(155366), 1, 155366)
		end
		
		
		--Vote Crate Key Rewards Here
		if(plr:GetItemCount(140003) >= 1) then --5k magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140003), 1, 140003)
		end
		if(plr:GetItemCount(140004) >= 1) then --75k honor and 25k arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140004), 1, 140004)
		end
		if(plr:GetItemCount(140006) >= 1) then -- Vip armor upgrade token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140006), 1, 140006)
		end
		if(plr:GetItemCount(140007) >= 1) then -- Vip weapon upgrade token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140007), 1, 140007)
		end
		if(plr:GetItemCount(140017) >= 1) then -- 50x daily quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140017), 1, 140017)
		end
		if(plr:GetItemCount(140012) >= 1) then -- 2500 Magic Gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140012), 1, 140012)
		end
		if(plr:GetItemCount(140011) >= 1) then -- 50k honor and 15k arena points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140011), 1, 140011)
		end
		if(plr:GetItemCount(140010) >= 1) then -- 150 PvP kick off
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140010), 1, 140010)
		end
		if(plr:GetItemCount(140022) >= 1) then -- 10k arena points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140022), 1, 140022)
		end
		if(plr:GetItemCount(140023) >= 1) then -- 2k magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140023), 1, 140023)
		end
		if(plr:GetItemCount(140021) >= 1) then -- 50k honor
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140021), 1, 140021)
		end
		if(plr:GetItemCount(140035) >= 1) then -- 10 daily quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140035), 1, 140035)
		end
		if(plr:GetItemCount(140034) >= 1) then -- vip rank 2
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140034), 1, 140034)
		end
		if(plr:GetItemCount(140032) >= 1) then -- 1k magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140032), 1, 140032)
		end
		if(plr:GetItemCount(140031) >= 1) then -- 10k arena points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140031), 1, 140031)
		end
		if(plr:GetItemCount(140030) >= 1) then -- 25k Honor Points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140030), 1, 140030)
		end
		if(plr:GetItemCount(140033) >= 1) then -- 15000 honor 5k arena points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140033), 1, 140033)
		end
		if(plr:GetItemCount(140043) >= 1) then -- 1k Arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140043), 1, 140043)
		end
		if(plr:GetItemCount(140041) >= 1) then -- 500 magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140041), 1, 140041)
		end
		if(plr:GetItemCount(140044) >= 1) then -- 25 pvp kick off
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140044), 1, 140044)
		end
		if(plr:GetItemCount(140042) >= 1) then -- 10k honor points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140042), 1, 140042)
		end
		if(plr:GetItemCount(140045) >= 1) then -- Custom crate key title
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140045), 1, 140045)
		end
		if(plr:GetItemCount(140040) >= 1) then -- vip rank 1
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(140040), 1, 140040)
		end
		
		
		
		
		--Normal Crate Key Rewards Here
		if(plr:GetItemCount(170008) >= 1) then -- 100 daily quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170008), 1, 170008)
		end
		if(plr:GetItemCount(170000) >= 1) then -- 3000 magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170000), 1, 170000)
		end
		if(plr:GetItemCount(170003) >= 1) then -- 35k honor 5k arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(17003), 1, 170003)
		end
		if(plr:GetItemCount(170002) >= 1) then -- 10k arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170002), 1, 170002)
		end
		if(plr:GetItemCount(170001) >= 1) then -- 50k honor
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170001), 1, 170001)
		end
		if(plr:GetItemCount(170010) >= 1) then -- 20x dialy quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170010), 1, 170010)
		end
		if(plr:GetItemCount(170012) >= 1) then -- 5k arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170012), 1, 170012)
		end
		if(plr:GetItemCount(170011) >= 1) then -- 30k honor
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170011), 1, 170011)
		end
		if(plr:GetItemCount(170013) >= 1) then -- 1500 magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170013), 1, 170013)
		end
		if(plr:GetItemCount(170032) >= 1) then -- 3k arena points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170032), 1, 170032)
		end
		if(plr:GetItemCount(170034) >= 1) then -- 10x daily quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170034), 1, 170034)
		end
		if(plr:GetItemCount(170031) >= 1) then -- 20k honor
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170031), 1, 170031)
		end
		if(plr:GetItemCount(170030) >= 1) then -- 750 Magic Gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170030), 1, 170030)
		end
		if(plr:GetItemCount(170050) >= 1) then -- 10k honor
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170050), 1, 170050)
		end
		if(plr:GetItemCount(170053) >= 1) then -- 400 magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170053), 1, 170053)
		end
		if(plr:GetItemCount(170055) >= 1) then -- 5x daily quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170055), 1, 170055)
		end
		if(plr:GetItemCount(170052) >= 1) then -- 1500 arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170052), 1, 170052)
		end
		if(plr:GetItemCount(170060) >= 1) then -- 200 magic gold
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170060), 1, 170060)
		end
		if(plr:GetItemCount(170062) >= 1) then -- 1k arena
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170062), 1, 170062)
		end
		if(plr:GetItemCount(170061) >= 1) then -- 5k honor
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170061), 1, 170061)
		end
		if(plr:GetItemCount(170063) >= 1) then -- 1x daily quest token
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170063), 1, 170063)
		end
		if(plr:GetItemCount(170054) >= 1) then -- 5000 honor 750 arena points
				plr:GossipMenuAddItem(1, "Claim Crate: "..GetItemLink(170054), 1, 170054)
		end
		

		
		plr:GossipMenuAddItem(1, "              |cFF4f1f71------------------------------|r                                                  |cFFaa7a3c.|r ", 1, 0)
		plr:GossipMenuAddItem(1, "|cffCC00CC|TInterface\\Icons\\Spell_Shadow_SacrificialShield:20:20|t|r Close", 1, 999)
		plr:GossipSendMenu(1, obj)
	end
	--Donation Crate Key Rewards Here
	if(id == 155336) then --150k Honor 50k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155336))
		plr:ModifyHonorPoints(150000)
		plr:ModifyArenaPoints(50000)
		plr:RemoveItem(155336, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155337) then --10k Magic Gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155337))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 10000)
		plr:RemoveItem(155337, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155348) then --300 PvP Kickoff
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155348))
		plr:AddItem(123123, 300)
		plr:RemoveItem(155348, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155343) then --100k Honor 30k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155343))
		plr:ModifyHonorPoints(100000)
		plr:ModifyArenaPoints(30000)
		plr:RemoveItem(155343, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155345) then --6k Magic Gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155345))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 6000)
		plr:RemoveItem(155345, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155355) then --100k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155355))
		plr:ModifyHonorPoints(100000)
		plr:RemoveItem(155355, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155356) then --30k Arena Points
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155356))
		plr:ModifyArenaPoints(30000)
		plr:RemoveItem(155356, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155349) then --50k Honor 15k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155349))
		plr:ModifyHonorPoints(50000)
		plr:ModifyArenaPoints(15000)
		plr:RemoveItem(155349, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155351) then --3500 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155351))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 3500)
		plr:RemoveItem(155351, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155350) then --150 PvP Kickoff
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155350))
		plr:AddItem(123123, 150)
		plr:RemoveItem(155350, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155365) then --20k Arena Points
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155365))
		plr:ModifyArenaPoints(20000)
		plr:RemoveItem(155365, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155364) then --75k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155364))
		plr:ModifyHonorPoints(75000)
		plr:RemoveItem(155364, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155358) then --75 PvP Kickoff
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155358))
		plr:AddItem(123123, 75)
		plr:RemoveItem(155358, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155357) then --45k Honor 10k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155357))
		plr:ModifyHonorPoints(45000)
		plr:ModifyArenaPoints(10000)
		plr:RemoveItem(155357, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155362) then --vip rank 3
		if(plr:GetPremiumType() > 3) then
			obj:Announce("You Are Vip Level "..plr:GetPremiumType()..", and can't claim this reward!",0,plr,true)
			OnGossipHelloCrateKey(event, plr, obj)
		else
			plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155362)..", please relog to activate it")
			AuthDBQuery("REPLACE INTO account_premium (id, premium_level, permanent, active) VALUES ("..plr:GetAccountId()..", 3, 1, 1)")
			plr:KickPlayer()
			plr:GossipComplete()
			plr:RemoveItem(155362, 1, true)
			OnGossipHelloCrateKey(event, plr, obj)
		end
	end
	if(id == 155372) then --50 PvP Kick off
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155372))
		plr:AddItem(123123, 50)
		plr:RemoveItem(155372, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155374) then --Custom crate key title
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155374))
		--ADD CUSTOM TIEL HERE
		--plr:RemoveItem(155374, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155369) then --30k Honor 5k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155369))
		plr:ModifyHonorPoints(30000)
		plr:ModifyArenaPoints(5000)
		plr:RemoveItem(155369, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155368) then --750 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155368))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 750)
		plr:RemoveItem(155368, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155370) then --vip rank 2
		if(plr:GetPremiumType() > 2) then
			obj:Announce("You Are Vip Level "..plr:GetPremiumType()..", and can't claim this reward!",0,plr,true)
			OnGossipHelloCrateKey(event, plr, obj)
		else
			plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155370)..", please relog to activate it")
			AuthDBQuery("REPLACE INTO account_premium (id, premium_level, permanent, active) VALUES ("..plr:GetAccountId()..", 2, 1, 1)")
			plr:KickPlayer()
			plr:GossipComplete()
			plr:RemoveItem(155370, 1, true)
			OnGossipHelloCrateKey(event, plr, obj)
		end
	end
	if(id == 155367) then --50k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155367))
		plr:ModifyHonorPoints(50000)
		plr:RemoveItem(155367, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 155366) then --10k Arena Points
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(155366))
		plr:ModifyArenaPoints(10000)
		plr:RemoveItem(155366, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end

	
	--VOTE REWARDS HERE ---

	
	if(id == 140003) then --5000 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140003))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 5000)
		plr:RemoveItem(140003, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140004) then --75k Honor and 25k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140004))
		plr:ModifyHonorPoints(75000)
		plr:ModifyArenaPoints(25000)
		plr:RemoveItem(140004, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140006) then --1 VIP ARMOR UPGRADE TOKEN
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140006))
		plr:AddItem(432567, 1)
		plr:RemoveItem(140006, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140007) then --1 VIP WEAPON UPGRADE TOKEN
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140007))
		plr:AddItem(432566, 1)
		plr:RemoveItem(140007, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140017) then --50x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140017))
		plr:AddItem(672300, 50)
		plr:RemoveItem(140017, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140012) then --2500 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140012))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 2500)
		plr:RemoveItem(140012, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140011) then --50k Honor and 15k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140011))
		plr:ModifyHonorPoints(50000)
		plr:ModifyArenaPoints(15000)
		plr:RemoveItem(140011, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140010) then --150x PVP kick off
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140010))
		plr:AddItem(123123, 150)
		plr:RemoveItem(140010, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140022) then --10k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140022))
		plr:ModifyArenaPoints(10000)
		plr:RemoveItem(140022, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140023) then --2000 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140023))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 2000)
		plr:RemoveItem(140023, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140021) then --50k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140021))
		plr:ModifyHonorPoints(50000)
		plr:RemoveItem(140021, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140035) then --10x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140035))
		plr:AddItem(672300, 10)
		plr:RemoveItem(140035, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140034) then --vip rank 2
		if(plr:GetPremiumType() > 2) then
			obj:Announce("You Are Vip Level "..plr:GetPremiumType()..", and can't claim this reward!",0,plr,true)
			OnGossipHelloCrateKey(event, plr, obj)
		else
			plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140034)..", please relog to activate it")
			AuthDBQuery("REPLACE INTO account_premium (id, premium_level, permanent, active) VALUES ("..plr:GetAccountId()..", 2, 1, 1)")
			plr:KickPlayer()
			plr:GossipComplete()
			plr:RemoveItem(140034, 1, true)
			OnGossipHelloCrateKey(event, plr, obj)
		end
	end
	if(id == 140032) then --1000 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140032))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 1000)
		plr:RemoveItem(140032, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140031) then --10k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140031))
		plr:ModifyArenaPoints(10000)
		plr:RemoveItem(140031, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140030) then --25k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140030))
		plr:ModifyHonorPoints(25000)
		plr:RemoveItem(140030, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140033) then --15k Honor and 5k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140033))
		plr:ModifyHonorPoints(15000)
		plr:ModifyArenaPoints(5000)
		plr:RemoveItem(140033, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140043) then --1k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140043))
		plr:ModifyArenaPoints(1000)
		plr:RemoveItem(140043, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140041) then --500 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140041))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 500)
		plr:RemoveItem(140041, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140044) then --25x PVP kick off
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140044))
		plr:AddItem(123123, 25)
		plr:RemoveItem(140044, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140042) then --10k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140042))
		plr:ModifyHonorPoints(10000)
		plr:RemoveItem(140042, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140045) then --CRATE KEY TITLE HERE
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140045))
		--ADD CRATE KEY TITLE
		--plr:RemoveItem(140045, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 140040) then --vip rank 1
		if(plr:GetPremiumType() > 1) then
			obj:Announce("You Are Vip Level "..plr:GetPremiumType()..", and can't claim this reward!",0,plr,true)
			OnGossipHelloCrateKey(event, plr, obj)
		else
			plr:SendBroadcastMessage("You have claimed: "..GetItemLink(140040)..", please relog to activate it")
			AuthDBQuery("REPLACE INTO account_premium (id, premium_level, permanent, active) VALUES ("..plr:GetAccountId()..", 1, 1, 1)")
			plr:KickPlayer()
			plr:GossipComplete()
			plr:RemoveItem(140040, 1, true)
			OnGossipHelloCrateKey(event, plr, obj)
		end
	end
	
	-- NORMAL CRATE KEY WINS HERE --
	if(id == 170008) then --100x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170008))
		plr:AddItem(672300, 100)
		plr:RemoveItem(170008, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170000) then --3000 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170000))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 3000)
		plr:RemoveItem(170000, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170003) then --35k Honor and 5k arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170003))
		plr:ModifyHonorPoints(35000)
		plr:ModifyArenaPoints(5000)
		plr:RemoveItem(170003, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170002) then --10k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170002))
		plr:ModifyArenaPoints(10000)
		plr:RemoveItem(170002, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170001) then --50k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170001))
		plr:ModifyHonorPoints(50000)
		plr:RemoveItem(170001, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170010) then --20x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170010))
		plr:AddItem(672300, 20)
		plr:RemoveItem(170010, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170012) then --5k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170012))
		plr:ModifyArenaPoints(5000)
		plr:RemoveItem(170012, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170011) then --30k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170011))
		plr:ModifyHonorPoints(30000)
		plr:RemoveItem(170011, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170013) then --1500 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170013))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 1500)
		plr:RemoveItem(170013, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170032) then --3k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170032))
		plr:ModifyArenaPoints(3000)
		plr:RemoveItem(170032, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170034) then --10x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170034))
		plr:AddItem(672300, 10)
		plr:RemoveItem(170034, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170031) then --20k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170031))
		plr:ModifyHonorPoints(20000)
		plr:RemoveItem(170031, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170030) then --750 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170030))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 750)
		plr:RemoveItem(170030, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170050) then --10k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170050))
		plr:ModifyHonorPoints(10000)
		plr:RemoveItem(170050, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170053) then --400 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170053))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 400)
		plr:RemoveItem(170053, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170055) then --5x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170055))
		plr:AddItem(672300, 5)
		plr:RemoveItem(170055, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170052) then --1.5k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170052))
		plr:ModifyArenaPoints(1500)
		plr:RemoveItem(170052, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170060) then --200 Magic gold
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170060))
		plr:SetCustomOnlinePoints(plr:GetCustomOnlinePoints() + 200)
		plr:RemoveItem(170060, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170062) then --1k Arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170062))
		plr:ModifyArenaPoints(1000)
		plr:RemoveItem(170062, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170061) then --5k Honor
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170061))
		plr:ModifyHonorPoints(5000)
		plr:RemoveItem(170061, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170063) then --1x Daily quest token
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170063))
		plr:AddItem(672300, 1)
		plr:RemoveItem(170063, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	if(id == 170054) then --5000 honor 750 arena
		plr:SendBroadcastMessage("You have claimed: "..GetItemLink(170054))
		plr:ModifyHonorPoints(5000)
		plr:ModifyArenaPoints(750)
		plr:RemoveItem(170054, 1, true)
		OnGossipHelloCrateKey(event, plr, obj)
	end
	
	if (id == 999) then
		plr:GossipComplete()
	end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHelloCrateKey)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)

