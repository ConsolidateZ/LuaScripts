

local ClassName = 
{ 
--  class id = className
    [1] = "Warrior",
    [2] = "Paladin",
    [3] = "Hunter",
    [4] = "Rogue",
    [5] = "Priest",
    [6] = "Deathknight",
    [7] = "Shaman",
    [8] = "Mage",
    [9] = "Warlock",
    [11] = "Druid"
}
 
function NewLoginAnnounce(event, player)
    SendWorldMessage("|cff0AD110".."Welcome new player ["..player:GetName().."] spec "..ClassName[player:GetClass()].." level 80.")
	player:AddItem(21215, 1000)
end
 
RegisterPlayerEvent(30, NewLoginAnnounce)