local timer = 900 -- Timer in seconds

function World_AutoAnnounce()
    RandomAnnounce=math.random(1,5) -- Change it if you gonna add more.
        if RandomAnnounce==1 then
            SendWorldMessage("|cff00ff00".."[SYSTEM] |cff00ff00Have you heard? The tears and blood spilled in city battle? Help your faction by fighting the opposite one, capture the flag and rise to the top!", 2) -- 1 For Chat Box and 2 For WideScreen.
        end
        if RandomAnnounce==2 then
            SendWorldMessage("|cff00ff00".."[SYSTEM] |cff00ff00Don't forget to vote every 12 hours to help our server grow and increase our population. You'll also earn amazing rewards!", 2) -- 1 For Chat Box and 2 For WideScreen.
        end
        if RandomAnnounce==3 then
            SendWorldMessage("|cff00ff00".."[SYSTEM] |cff00ff00All reports of exploits, cheats, hacks or the players who are using them should be reported via the web-form.", 3) -- 1 For Chat Box and 2 For WideScreen.
        end
		if RandomAnnounce==4 then
            SendWorldMessage("|cff00ff00".."[SYSTEM] |cff00ff00Don't forget to use /1 to talk in world channel", 3) -- 1 For Chat Box and 2 For WideScreen.
        end
		if RandomAnnounce==5 then
            SendWorldMessage("|cff00ff00".."[SYSTEM] |cff00ff00 Greetings AMD players. Have a problem? You can report it in a ticket or through our discord which can be found on the website. Please know that patience is a key, we will get back with you as soon as possible, Thank you.", 3) -- 1 For Chat Box and 2 For WideScreen.
        end
		
end
 
local function announcer_Custom(event)
  CreateLuaEvent(World_AutoAnnounce, timer * 1000, 0)
end

RegisterServerEvent(33, announcer_Custom)