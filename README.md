# **Create Job-Based Blips easily!** [an_jobBlips]
**[Working for both ESX & QBCore]**

# Features
- You can create blips with the ability to show/hide for specific jobs
- Blips will update when your job is updated
- Supports both ESX and QBCore
- Easy-to-Configure!

# Dependencies
- ESX 1.1+ or QBCore

## Configuration
### You will find everything you need in `config.lua`
> You can add as many blips with as many jobs as you like in the following way:

```lua
Config.Blips = {
	[1] = {
		Coords = { x = 859.88, y = -2363.52, z = 30.34 },
		Blip = { name = 'LS Car Meet', sprite = 777, size = 0.68, color = 0 },
		AllowedJobs = {},
		DeniedJobs = { 'police', 'sheriff' },
	},
	[2] = {
		Coords = { x = 0.0, y = 0.0, z = 0.0 }, -- Blip Coords
		Blip = { name = 'Blip Name', sprite = 0, size = 0.65, color = 0 }, 
		AllowedJobs = { 'AllowedJob1', 'AllowedJob2' }, 
		DeniedJobs = { 'DeniedJob1', 'DeniedJob2' }, 
	},
	[3] = {
		Coords = { x = 0.0, y = 0.0, z = 0.0 }, -- Blip Coords
		Blip = { name = 'Blip Name', sprite = 0, size = 0.65, color = 0 }, 
		AllowedJobs = { 'AllowedJob1', 'AllowedJob2' }, 
		DeniedJobs = { 'DeniedJob1', 'DeniedJob2' },
	},
	[4] = {
		Coords = { x = 0.0, y = 0.0, z = 0.0 }, -- Blip Coords
		Blip = { name = 'Blip Name', sprite = 0, size = 0.65, color = 0 }, 
		AllowedJobs = { 'AllowedJob1', 'AllowedJob2' },
		DeniedJobs = { 'DeniedJob1', 'DeniedJob2' }, 
	},
}
```
