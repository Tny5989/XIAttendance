local memory = {}

------------------------------------------------------------------------------------------------------------------------
local MAIN_OFFSET = 0x62D014
local COUNT_OFFSET = 0xC
local RESULT_OFFSET = 0x20
local PLAYER_OFFSET = 0x04

local PLAYER_SIZE = 0x4C

------------------------------------------------------------------------------------------------------------------------
function memory.GetFFXIMainBase()
    return ashita.memory.get_base('ffximain.dll')
end

------------------------------------------------------------------------------------------------------------------------
function memory.GetSearchBase(base)
    if (base == nil) then
        base = memory.GetFFXIMainBase()
    end
    return ashita.memory.read_uint32(base + MAIN_OFFSET)
end

------------------------------------------------------------------------------------------------------------------------
function memory.IsSearchActive(base)
    if (base == nil) then
        base = memory.GetSearchBase()
    end
    return ashita.memory.read_uint16(base) ~= 0xFFFF
end

------------------------------------------------------------------------------------------------------------------------
function memory.GetSearchCount(base)
    if (base == nil) then
        base = memory.GetSearchBase()
    end
    return ashita.memory.read_uint16(base + COUNT_OFFSET)
end

------------------------------------------------------------------------------------------------------------------------
function memory.GetSearchResultsBase(base)
    if (base == nil) then
        base = memory.GetSearchBase()
    end
    return ashita.memory.read_uint32(base + RESULT_OFFSET)
end

------------------------------------------------------------------------------------------------------------------------
function memory.GetSearchResultsStartIndex(base)
    if (base == nil) then
        base = memory.GetSearchResultsBase()
    end
    return ashita.memory.read_uint8(base)
end

------------------------------------------------------------------------------------------------------------------------
function memory.GetPlayer(base, index)
    if (base == nil) then
        base = memory.GetSearchResultsBase()
    end
    if (index == nil) then
        index = 0
    end

    local start = base + PLAYER_OFFSET + PLAYER_SIZE * index
    local player = {}
    player.anon = ashita.memory.read_uint8(start) == 0x43
    player.has_comment = ashita.memory.read_uint8(start + 0x2) == 0xC3
    player.name = ashita.memory.read_string(start + 0x4, 0xFF)
    player.nation = ashita.memory.read_uint8(start + 0x1C)
    player.race = ashita.memory.read_uint8(start + 0x1D)
    player.rank = ashita.memory.read_uint8(start + 0x1E)
    player.main_job = ashita.memory.read_uint8(start + 0x20)
    player.sub_job = ashita.memory.read_uint8(start + 0x21)
    player.main_level = ashita.memory.read_uint8(start + 0x22)
    player.sub_level = ashita.memory.read_uint8(start + 0x23)
    player.zone_id = ashita.memory.read_uint16(start + 0x28)

    return player
end

return memory