## an_jobBlips
[ESX &amp; QBCore] Create Blips based on Jobs [FiveM]

# You will find everything you need in `config.lua`

```lua
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
```
