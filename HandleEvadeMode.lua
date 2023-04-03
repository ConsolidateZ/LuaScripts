
local MAX_DISTANCE = 50 -- yards

local CreatureEntries = {
    -- arathi bosses
    100060, 100061, 100062, 100063, 100064, 100065, 100066, 100067, 100068, 100069,
    100070, 100071, 100072, 100073, 100074, 100075, 100076, 100077,
    -- durnhold bosses
    100020, 100021, 100022, 100023, 100024, 100025, 100026,
    100027, 100028, 100029, 100030, 100031, 100032, 100047,
    100044, 100078, 100079, 100080, 100081, 100082, 100083, 100084,
    -- well of the forgottten
    100046, 100047, 100048, 100049,
    100053, 100054, 100055, 100056, 100057, 100058, 100059,
    100090, 100091
}

local function REMOVEINVISIBLITY(eventId, dely, calls, creature)
    creature:RemoveAura( 74069 )
end

local function OnAIUpdate(event, creature, diff)
    if (creature:IsInCombat()) then
        x, y, z, o = creature:GetHomePosition()
        
        dist = creature:GetDistance2d( x, y )
        if dist > MAX_DISTANCE then
            creature:DespawnOrUnsummon( 0 )
            creature:AddAura(74069, creature) -- make him invisible while traveling back to home location
            creature:RegisterEvent(REMOVEINVISIBLITY, 5000, 1) -- remove invisiblity after 5 seconds
        end
    end
end

for  _,v in pairs (CreatureEntries) do
    RegisterCreatureEvent(v, 7, OnAIUpdate)
end