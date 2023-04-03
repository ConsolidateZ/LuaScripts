
local CreatureNpc = 180001

local function AriesSpell(eventId, dely, calls, creature)
    creature:CastSpell(creature:GetVictim(), 32014, true) -- air bust
end



local function OnStartCombatFight1(event, creature, target)
														
    creature:RegisterEvent(AriesSpell, 25000, 0) -- 20000 = 20 secs
end

local function ClearCreatureEvents1(event, creature, killer)
    creature:RemoveEvents()
end


    RegisterCreatureEvent(CreatureNpc, 1, OnStartCombatFight1)
    RegisterCreatureEvent(CreatureNpc, 2, ClearCreatureEvents1)
    RegisterCreatureEvent(CreatureNpc, 4, ClearCreatureEvents1)

