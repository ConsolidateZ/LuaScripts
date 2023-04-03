
local NpcId = 60043

local function NpcOnGossipHello(event, player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, ""..player:GetName().." The Viking", 1, 189, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, ""..player:GetName().." Painkiller", 1, 190, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, ""..player:GetName().." Boyka", 1, 191, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, ""..player:GetName().." the Pirate of Caribbean", 1, 192, false, "This costs 1000 MG", 0)
	player:GossipMenuAddItem(0, "AmdWoW "..player:GetName().."", 1, 193, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, ""..player:GetName().." The New Lich King", 1, 194, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, ""..player:GetName().." for President", 1, 195, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, "Noobkiller "..player:GetName().."", 1, 196, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, "Why so serious "..player:GetName().."", 1, 197, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, "Batman "..player:GetName().."", 1, 198, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, "Superman "..player:GetName().."", 1, 199, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, "Spiderman "..player:GetName().."", 1, 200, false, "This costs 1000 MG", 0)
	player:GossipMenuAddItem(0, "Deadpool "..player:GetName().."", 1, 201, false, "This costs 1000 MG", 0)
    player:GossipMenuAddItem(0, "|cff0000FFNext Page >", 1, 2)
    player:GossipSetText("AmdWoW Title Giver, cost 1000 MG")
    player:GossipSendMenu(0x7FFFFFFF, object)
end

local function NpcOnGossipSelect(event, player, object, sender, intid, code, menuid)
    if (intid > 100 ) then
        if (player:HasTitle( intid )) then
            object:Announce( "Already known", 0, player, true )
            NpcOnGossipHello(event, player, object)
        else
            if (player:GetCustomOnlinePoints() >= 1000 ) then
                player:SetCustomOnlinePoints(player:GetCustomOnlinePoints()-1000)
                player:SetKnownTitle( intid )
                object:Announce( "You bought a new title", 0, player, true )
                NpcOnGossipHello(event, player, object)
            else
                object:Announce( "Not enough MG, need 1000", 0, player, true )
                NpcOnGossipHello(event, player, object)
            end
        end
    else
        if (intid == 1) then
            NpcOnGossipHello(event, player, object)
        elseif (intid == 2) then
            player:GossipClearMenu()
			player:GossipMenuAddItem(0, "Captain AmdWoW "..player:GetName().."", 1, 202, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, "Captain America "..player:GetName().."", 1, 203, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, ""..player:GetName().." the Sucker Punch", 1, 204, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, ""..player:GetName().." Kamehameha", 1, 205, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, "Buy me cookie "..player:GetName().."", 1, 206, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, "I Very Pro Brah "..player:GetName().."", 1, 207, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, "Kneel before "..player:GetName().." you mortals", 1, 208, false, "This costs 1000 MG", 0)
            player:GossipMenuAddItem(0, ""..player:GetName().." is not prepared", 1, 209, false, "This costs 1000 MG", 0)
            player:GossipMenuAddItem(0, "A troll stole "..player:GetName().."'s bike", 1, 211, false, "This costs 1000 MG", 0)
			player:GossipMenuAddItem(0, "Godlike "..player:GetName().."", 1, 212, false, "This costs 1000 MG", 0)
            player:GossipMenuAddItem(0, "Super Saiyan "..player:GetName().."", 1, 213, false, "This costs 1000 MG", 0)
            player:GossipMenuAddItem(0, ""..player:GetName().."Made my Day! LoL", 1, 214, false, "This costs 1000 MG", 0)
            player:GossipMenuAddItem(0, "|cff0000FF< Get Back", 1, 1)
            player:GossipSetText("AmdWoW Title Giver, cost 1000 MG")
            player:GossipSendMenu(0x7FFFFFFF, object)
        end
    end
end

RegisterCreatureGossipEvent(NpcId, 1, NpcOnGossipHello)
RegisterCreatureGossipEvent(NpcId, 2, NpcOnGossipSelect)

