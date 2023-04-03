
local CustomDamage = {
    [180005] = { 500, 3500, "Virgo" },
    [180008] = { 500, 3500, "Leo" },
    [180001] = { 500, 3500, "Aries" },
    [180009] = { 500, 3500, "Cancer" },
    [180014] = { 500, 3500, "Pontifex" },
    [180007] = { 500, 3500, "Libra" },
    [180013] = { 500, 3500, "Capricorn" },
    [180010] = { 500, 3500, "Gemini" },
    [180012] = { 500, 3500, "Pisces" },
    [180006] = { 500, 3500, "Aquarius" },
    [180004] = { 500, 3500, "Halcyon" },
    [180000] = { 500, 3500, "Amon" },
    [180011] = { 500, 3500, "Scorpio" },
    [180002] = { 500, 3500, "Fel" },
    [180003] = { 500, 3500, "Anubis" },
}

local function DealCustomDamage(eventId, dely, calls, creature)
    victim = creature:GetVictim()
    if (victim) then
        toCreature = victim:ToCreature()
        if (toCreature) then
            creature:DealDamage( toCreature, CustomDamage[creature:GetEntry()][1]*2, 0, 0, 0 )
        else
            if (not victim:IsImmuneToDamage()) then
                creature:DealDamage( victim, CustomDamage[creature:GetEntry()][1]*2, 0, 0, 0 )
                if (victim:GetGMRank() == 3 ) then
                    victim:SendBroadcastMessage( "|cffFF0000[Admin-Only]|r Combat: "..CustomDamage[creature:GetEntry()][3].." Damage: "..CustomDamage[creature:GetEntry()][1], 0 )
                end
            end
        end
    end
end

local function OnStartCombatFight(event, creature, target)
    creature:RegisterEvent(DealCustomDamage, CustomDamage[creature:GetEntry()][2], 0)
end

local function ClearCreatureEvents(event, creature, killer)
    creature:RemoveEvents()
end

for  k,v in pairs (CustomDamage) do
    RegisterCreatureEvent(k, 1, OnStartCombatFight)
    RegisterCreatureEvent(k, 2, ClearCreatureEvents)
    RegisterCreatureEvent(k, 4, ClearCreatureEvents)
end