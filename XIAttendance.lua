addon.author = 'Tny5989'
addon.name = 'XIAttendance'
addon.version = '0.1'
addon.desc = ''
addon.link = ''

------------------------------------------------------------------------------------------------------------------------
require('common')
local chat = require('chat')
local memory = require('memory')
local jobs = require('res/jobs')
local nations = require('res/nations')
local races = require('res/races')
local zones = require('res/zones')

------------------------------------------------------------------------------------------------------------------------
local function ParseSearch()
    local search_base = memory.GetSearchBase()
    if (not memory.IsSearchActive(search_base)) then
        print(string.format('%s%s', chat.header(addon.name), chat.color2(38, 'Rerun with search open.')))
        return {}
    end

    local count = memory.GetSearchCount(search_base)
    local results_base = memory.GetSearchResultsBase(search_base)
    local start_index = memory.GetSearchResultsStartIndex(results_base)
    local truncated_count = start_index == 1 and math.min(count, 40) or count

    if (truncated_count ~= count) then
        print(string.format('%s%s %s %s', chat.header(addon.name), chat.color1(78, 'List truncated. Missing'),
                chat.color2(38, count - truncated_count), chat.color1(78, 'character(s).')))
    end

    local players = {}
    for i = start_index, truncated_count - 1 + start_index do
        table.insert(players, memory.GetPlayer(results_base, i))
    end

    print(string.format('%s%s %s', chat.header(addon.name), chat.success(#players),
            chat.color1(78, 'character(s) found.')))
    return players
end

------------------------------------------------------------------------------------------------------------------------
local function OpenFile(user_input)
    local datetime = os.date('%Y-%m-%d_%H-%M-%S');
    local filename = string.format('%s_%s.csv', datetime, user_input)
    local path = string.format('%s%s\\%s\\%s', AshitaCore:GetInstallPath(), 'addons', addon.name, 'logs')
    ashita.fs.create_dir(path)

    return path, filename, io.open(string.format('%s\\%s', path, filename), 'w')
end

------------------------------------------------------------------------------------------------------------------------
local function WriteSearch(players, args)
    if (#players <= 0) then
        return
    end

    local user_input = table.concat(args, '-', 2, #args)
    local date = os.date('%m/%d/%Y')
    local time = os.date('%H:%M:%S');
    local utc_offset = os.date('%z')

    local path, filename, handle, err = OpenFile(user_input)
    if (handle == nil) then
        print(string.format('%s%s', chat.header(addon.name), chat.color2(38, 'Unable to open file for writing.')))
        return
    end

    for _, value in pairs(players) do
        handle:write(string.format('%s,%s,%s,UTC%s,%s,%s\n', value.name, date, time, utc_offset,
                zones[value.zone_id].full, user_input))
    end

    handle:close()
    print(string.format('%s%s %s', chat.header(addon.name), chat.color1(78, 'Saved log to:'),
            chat.success(string.format('%s\\%s', path, filename))))
end

------------------------------------------------------------------------------------------------------------------------
ashita.events.register('command', 'command_cb', function(e)
    local args = e.command:args()

    if (args[1] ~= '/attend') then
        return
    end

    if (#args > 1) then
        WriteSearch(ParseSearch(), args)
    else
        print(string.format('%s%s', chat.header(addon.name), chat.color2(38, 'Usage: /attend <event name>')))
    end
end)
