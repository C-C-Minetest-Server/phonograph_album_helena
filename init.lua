-- phonograph_album_helena/init.lua
-- Songs composed by Helena Bolan for Phonographs
-- Copyright (C) 2024  1F616EMO
-- SPDX-License-Identifier: LGPL-2.1-or-later

assert(phonograph.send_song,
    "Please upgrade your Phonograph mod to commit f689f79 or later.")

local S = minetest.get_translator("phonograph_album_helena")

local MP = minetest.get_modpath("phonograph_album_helena")
local function songpath(name)
    return table.concat({ MP, "phonographs", "phonograph_album_helena_" .. name .. ".ogg" }, DIR_DELIM)
end

local album = phonograph.register_album("phonograph_album_helena:album_helena", {
    title = "Helena's Collection",
    short_description = S("Songs composed by Helena Bolan"),
    long_description = nil,
    cover = nil, -- use default cover for now
    artist = "Helena Bolan",
    license = phonograph.licenses.CCBYSA4,
})

for _, data in ipairs({
    { "chaos",               "Chaos",               nil },
    { "moonscapes",          "Moonscapes",          nil },
    { "serious_adventure",   "Serious Adventure",   nil },
    { "shadowed_serenade",   "Shadowed Serenade",   nil },
    { "starscapes",          "Starscapes",          nil },
    { "symphony_of_strings", "Symphony of Strings", nil },
    { "thundering_overture", "Thundering Overture", nil },
    { "thunderstruck",       "Thunderstruck",       nil },
    { "lofi",                "LoFi",                nil },
    { "ride",                "Ride",                nil, true },
    { "neon_lights",         "Neon Lights",         nil },
}) do
    local id, title, short_description, no_stereo = unpack(data)
    album:register_song(id, {
        title = title,
        short_description = short_description,
        long_description = nil,
        artist = nil,
        spec = {
            filepath = songpath(id),
        },
        multichannel_specs = not no_stereo and {
            {
                filepath = songpath(id .. "_ch0"),
            },
            {
                filepath = songpath(id .. "_ch1"),
            },
        } or nil,
    })
end
