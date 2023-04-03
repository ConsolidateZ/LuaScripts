
local CreatureList = {
    100090, 100091
}

local function SendMonsterWideMessage(player, message, music)
    group = player:GetGroup()
    
    if ( group ) then
        for _,v in pairs(group:GetMembers()) do
            creature:SendUnitWhisper( message, 0, v, true )
        end
    else
        creature:SendUnitWhisper( message, 0, player, true )
    end
    
    creature:PlayMusic( music )
end

local function DealCustomSpellDamage1(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastCustomSpell( creature:GetVictim(), 72350, true, 100000, 0, 0, nil, creature:GetGUID() ) -- Fury of Frostmourne
        SendMonsterWideMessage(victim, "You feel the Fury of Frostmourne on you", 14761)
    end
end

local function DealCustomSpellDamage2(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastCustomSpell( creature:GetVictim(), 69409, true, 100000, 0, 0, nil, creature:GetGUID() ) -- Soul Reaper
        SendMonsterWideMessage(victim, "Hits you with Soul Reaper", 14791)
    end
end

local function DealCustomSpellDamage3(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastCustomSpell( creature:GetVictim(), 4043, true, 100000, 0, 0, nil, creature:GetGUID() ) -- Detonation
        SendMonsterWideMessage(victim, "Burn by fire you!", 14791)
    end
end

local function DealCustomSpellDamage4(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastCustomSpell( creature:GetVictim(), 40481 , true, 100000, 0, 0, nil, creature:GetGUID() ) -- Acidic Wound
        SendMonsterWideMessage(victim, "Bleeds you out by Acidic Wound", 14791)
    end
end

local function DealCustomSpellDamage5(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastCustomSpell( creature:GetVictim(), 40457 , true, 100000, 0, 0, nil, creature:GetGUID() ) -- Arcing Smash
        SendMonsterWideMessage(victim, "Getting involved in Arcing Smash", 14791)
    end
end

local function DealCustomSpellDamage6(eventId, dely, calls, creature)
    creature:CastSpell(creature:GetVictim(), 40486, false) -- Eject
    SendMonsterWideMessage(victim, "You been knocked away", 14803)
end

local function OnStartCombatFight(event, creature, target)
    creature:RegisterEvent(DealCustomSpellDamage1, 15000, 0)
    creature:RegisterEvent(DealCustomSpellDamage2, 9000,  0)
    creature:RegisterEvent(DealCustomSpellDamage3, 24000, 0)
    creature:RegisterEvent(DealCustomSpellDamage4, 11000, 0)
    creature:RegisterEvent(DealCustomSpellDamage5, 21000, 0)
    creature:RegisterEvent(DealCustomSpellDamage6, 17000, 0)
    
    creature:CastCustomSpell( creature:GetVictim(), 72350, true, 100000, 0, 0, nil, creature:GetGUID() ) -- Fury of Frostmourne
end

local function ClearCreatureEvents(event, creature, killer)
    creature:RemoveEvents()
end

for  _,v in pairs (CreatureList) do
    RegisterCreatureEvent(v, 1, OnStartCombatFight)
    RegisterCreatureEvent(v, 2, ClearCreatureEvents)
    RegisterCreatureEvent(v, 4, ClearCreatureEvents)
end
