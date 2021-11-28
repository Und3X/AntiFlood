script_name("AntiFlood")
script_description("Anti-flood for samp-rp")
script_version_number(1)
script_version("v1.0")
script_author("Und3X")

-- Load libraries
local moonloader = require "moonloader"
local sampev = require "samp.events"

-- Global variables
local MESSAGES = {}
local TIMEOUT = 10

-- AntiFlood patterns
local PATTERNS = {
    "([%a_]+).*: (.*)$",
    "%(%( ([%a_]+)%[(%d+)%] %)%) (.*)$",
    "([%a_]+) крикнул: (.*)$",
}

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
    sampAddChatMessage("AntiFlood by {ff69b4}Und3X{ffd700} {ffffff}загружен!",0xffd700)
end

-- Events
function sampev.onServerMessage(color, message)
    for key, value in pairs(PATTERNS) do
        if message:find(PATTERNS[key]) then
            local Player, Msg = message:match(PATTERNS[key])
            if MESSAGES[Player] ~= nil then
                if MESSAGES[Player].Message == Msg and MESSAGES[Player].Timestamp >= os.time() then
                    --print(string.format("[AntiFlood] Player: %s, send message: %s. Timestamp: %d.", Player, Msg, os.time()))
                    return false
                else
                    MESSAGES[Player] = {
                        Message = Msg,
                        Timestamp = os.time()+TIMEOUT
                    }
                end
            else
                MESSAGES[Player] = {
                    Message = Msg,
                    Timestamp = os.time()+TIMEOUT
                }
            end
        end
    end
end
