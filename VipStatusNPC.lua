print("[Eluna]: [Promocion] made by [EmuServers]")
require "base/sc_default"



local NpcPromo = 130000
local VIP     	 = 1
local permanent	 = 1
local active 	 = 1

local Gender = 
{
	[1] = "Welcome",
	[0] = "Welcome"
}
local VipInfo = "\nVip1.Drop.Bonus = 3\nVip1.Talents.Bonus = 2\nVip1.Crafting.Bonus = 1\nVip1.Reputation.bonus = 3\n"
local Text = " The vip1 promotion will only be available today. So call your friends and share an unforgettable experience, AmdWoW Staff.\n\nWe hope you have fun!\n"..VipInfo..""

local function NPCVipPromo(event, player, object)
		player:Dismount()
	if (player:GetPremiumType() > 0) then
		player:GossipClearMenu()
		player:GossipMenuAddItem(0, "Exit", 1, 99)
		player:GossipMenuAddItem(0, "Your Are Vip Level "..player:GetPremiumType().."", 1, 99)
		object:Announce("You Are Vip Level "..player:GetPremiumType().."",0,player,true)
		player:GossipSetText("AmdWoW\n")
		player:GossipSendMenu(0x7FFFFFFF, object)
	else
		player:GossipClearMenu() -- required for player gossip	
		player:GossipMenuAddItem(0, "Get Vip Status Level 1", 1, 1, false, "Thanks for playing AmdWoW that you have fun!")
		player:GossipSetText("AmdWoW\n\n"..Gender[player:GetGender()].." "..player:GetName()..""..Text.."")
		player:GossipSendMenu(0x7FFFFFFF, object)
	end
end

local function NpcVipPromoSelect(event, player, object, sender, intid, code, menuid)
	if(intid == 1 )then
		AuthDBQuery("REPLACE INTO account_premium (id, premium_level, permanent, active) VALUES ("..player:GetAccountId().. ","..VIP..","..permanent..","..active..")")
		player:KickPlayer()
		player:GossipComplete()
	elseif(intid == 99)then
		player:GossipComplete()
	end	
end--function NpcVipPromoSelect


RegisterCreatureGossipEvent(NpcPromo, 1, NPCVipPromo)
RegisterCreatureGossipEvent(NpcPromo, 2, NpcVipPromoSelect)