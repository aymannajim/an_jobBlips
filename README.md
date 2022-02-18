# **Create Job-Based Blips easily!** [an_jobBlips]
**[Working for both ESX & QBCore]**

## Features
- You can create blips with the ability to show/hide for specific jobs
- Blips will update when your job is updated
- Supports both ESX and QBCore
- Easy-to-Configure!

## Dependencies
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

## License
> Copyright 2022 © aymanTV (AN Services) 
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
