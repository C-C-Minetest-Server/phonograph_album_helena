-- phonograph_album_helena/init.lua
-- Songs composed by Helena Bolan for Phonographs
-- Copyright (C) 2024  1F616EMO
-- SPDX-License-Identifier: LGPL-2.1-or-later

assert(phonograph.send_song,
    "Please upgrade your Phonograph mod to commit f689f79 or later.")

local S = minetest.get_translator("phonograph_album_helena")

local MP = minetest.get_modpath("phonograph_album_helena")
local function songpath(name)
    return table.concat({MP, "phonographs", "phonograph_album_helena_" .. name .. ".ogg"}, DIR_DELIM)
end

local album = phonograph.register_album("phonograph_album_helena:album_helena", {
    title = "Helena's Collection",
    short_description = S("Songs composed by Helena Bolan"),
    long_description = nil,
    cover = nil, -- use default cover for now
    artist = "Helena Bolan",
    license = phonograph.licenses.CCBYSA4,
})

album:register_song("chaos", {
    title = "Chaos",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("chaos"),
    spec = {},
})

album:register_song("moonscapes", {
    title = "Moonscapes",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("moonscapes"),
    spec = {},
})

album:register_song("serious_adventure", {
    title = "Serious Adventure",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("serious_adventure"),
    spec = {},
})

album:register_song("shadowed_serenade", {
    title = "Shadowed Serenade",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("shadowed_serenade"),
    spec = {},
})

album:register_song("starscapes", {
    title = "Starscapes",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("starscapes"),
    spec = {},
})

album:register_song("symphony_of_strings", {
    title = "Symphony of Strings",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("symphony_of_strings"),
    spec = {},
})

album:register_song("thundering_overture", {
    title = "Thundering Overture",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("thundering_overture"),
    spec = {},
})

album:register_song("thunderstruck", {
    title = "Thunderstruck",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("thunderstruck"),
    spec = {},
})

album:register_song("lofi", {
    title = "LoFi",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("lofi"),
    spec = {},
})

album:register_song("ride", {
    title = "Ride",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("ride"),
    spec = {},
})

album:register_song("neon_lights", {
    title = "Neon Lights",
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("neon_lights"),
    spec = {},
})
