
local CreatureList = {
    180003, 180002, 180000, 180004, 180006, 180012, 180010,
    180011, 180013, 180007, 180014, 180009, 180001, 180008,
	180005
}

local function DealCustomSpellDamage1(eventId, dely, calls, creature)
    creature:CastSpell(creature:GetVictim(), 6982, true) -- Gust of Wind
end

local function DealCustomSpellDamage2(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastSpell( creature:GetVictim(), 4043, true ) -- Detonation
    end
end

local function DealCustomSpellDamage3(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastSpell( creature:GetVictim(), 38029, true ) -- Stab
    end
end

local function DealCustomSpellDamage4(eventId, dely, calls, creature)
    creature:CastSpell(creature:GetVictim(), 7992 , true) -- Slowing Poison
end

local function DealCustomSpellDamage5(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastSpell( creature:GetVictim(), 40827, true ) -- Sinful Beam
    end
end

local function DealCustomSpellDamage6(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (not victim:IsImmuneToDamage()) then
        creature:CastSpell( creature:GetVictim(), 47827, true ) -- Shadowburn
    end
end

local function OnStartCombatFight(event, creature, target)
    creature:RegisterEvent(DealCustomSpellDamage1, 18000, 0)
    creature:RegisterEvent(DealCustomSpellDamage2, 5000,  0)
    creature:RegisterEvent(DealCustomSpellDamage3, 8000, 0)
    creature:RegisterEvent(DealCustomSpellDamage4, 35000, 0)
    creature:RegisterEvent(DealCustomSpellDamage5, 11000, 0)
    creature:RegisterEvent(DealCustomSpellDamage6, 6500, 0)
    
    creature:CastSpell(creature:GetVictim(), 47827 , true) -- Shadowburn
end

local function ClearCreatureEvents(event, creature, killer)
    creature:RemoveEvents()
end

for  _,v in pairs (CreatureList) do
    RegisterCreatureEvent(v, 1, OnStartCombatFight)
    RegisterCreatureEvent(v, 2, ClearCreatureEvents)
    RegisterCreatureEvent(v, 4, ClearCreatureEvents)
end
