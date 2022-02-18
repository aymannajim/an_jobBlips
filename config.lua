-- Copyright 2022 © aymanTV (AN Services)
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

----- Made By https://aymantv.tebex.io/
----- For Support, Join my Discord: https://discord.gg/f2Nbv9Ebf5
----- For custom services or help, check my Fiverr: https://www.fiverr.com/aymannajim

Config = {}

Config.Framework = 'ESX' -- 'ESX' or 'QBCORE'
Config.Blips = {
	[1] = {
		Coords = { x = 859.88, y = -2363.52, z = 30.34 },
		Blip = { name = 'LS Car Meet', sprite = 777, size = 0.68, color = 0 },
		AllowedJobs = {},
		DeniedJobs = { 'police', 'sheriff' },
	},
	------ TEMPLATE ------
	--[[ -- REMOVE THIS LINE
	[2] = {
		Coords = { x = 0.0, y = 0.0, z = 0.0 }, -- Blip Coords
		Blip = { name = 'Blip Name', sprite = 0, size = 0.65, color = 0 }, -- Blip Settings
		AllowedJobs = { 'AllowedJob1', 'AllowedJob2' }, -- Leave Blank if you want everyone to see this blip except for DeniedJobs // Add as many as you want
		DeniedJobs = { 'DeniedJob1', 'DeniedJob2' }, -- Leave Blank if you only want AllowedJobs to see this blip // Add as many as you want
	},
	]] -- REMOVE THIS LINE
}

----- Made By https://aymantv.tebex.io/
----- For Support, Join my Discord: https://discord.gg/f2Nbv9Ebf5
----- For custom services or help, check my Fiverr: https://www.fiverr.com/aymannajim