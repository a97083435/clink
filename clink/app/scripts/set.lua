-- Copyright (c) 2012 Martin Ridgers
-- License: http://opensource.org/licenses/MIT

local set_generator = clink.generator(41)

--------------------------------------------------------------------------------
function set_generator:generate(line_state, match_builder)
    if line_state:getwordcount() ~= 2 then
        return false
    end

    if line_state:getword(1) ~= "set" then
        return false
    end

    match_builder:addmatches(os.getenvnames(), "word")
    match_builder:setappendcharacter("=")
    return true
end
