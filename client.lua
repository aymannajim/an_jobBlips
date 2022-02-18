-- Copyright 2022 © aymanTV (AN Services)
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

----- Made By https://aymantv.tebex.io/
----- For Support, Join my Discord: https://discord.gg/f2Nbv9Ebf5
----- For custom services or help, check my Fiverr: https://www.fiverr.com/aymannajim

local PlayerData
local PlayerJob

local createdBlips = {}

Citizen.CreateThread(function()
	if Config.Framework == 'ESX' then
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Citizen.Wait(0)
		end
		
		while ESX.GetPlayerData().job == nil do
			Citizen.Wait(10)
		end
		
		PlayerData = ESX.GetPlayerData()
	elseif Config.Framework == 'QBCORE' then
		QBCore = exports['qb-core']:GetCoreObject()
	end
	Wait(2000)
	loadBlips()
end)

------ This is for ESX
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerJob = job
	for k,v in pairs(createdBlips) do
		RemoveBlip(v)
	end
	Wait(500)
	loadBlips()
end)
------

------ This is for QBCore
RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
	PlayerJob = JobInfo
	for k,v in pairs(createdBlips) do
		RemoveBlip(v)
	end
	Wait(500)
	loadBlips()
end)
------


function loadBlips()
	for k,v in pairs(Config.Blips) do
		local canSee = false
		if #v.AllowedJobs == 0 then
			canSee = true
		elseif #v.DeniedJobs == 0 then
			canSee = false
		end
		for ke,va in pairs(v.DeniedJobs) do
			if va == getJob() then
				canSee = false
			end
		end
		for key,val in pairs(v.AllowedJobs) do
			if val == getJob() then
				canSee = true
			end
		end
		if canSee then
			local blip = AddBlipForCoord(v.Coords.x, v.Coords.y, v.Coords.z)
			SetBlipSprite(blip, v.Blip.sprite)
			SetBlipDisplay(blip, 4)
			SetBlipScale(blip, v.Blip.size)
			SetBlipColour(blip, v.Blip.color)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.Blip.name)
			EndTextCommandSetBlipName(blip)
			table.insert(createdBlips, blip)
		end
	end
end

function getJob()
	if Config.Framework == 'ESX' then
		PlayerJob = PlayerData.job
		return PlayerJob.name
	elseif Config.Framework == 'QBCORE' then
		local Player = QBCore.Functions.GetPlayerData()
		PlayerJob = Player.job
		return PlayerJob.name
	end
end

----- Made By https://aymantv.tebex.io/
----- For Support, Join my Discord: https://discord.gg/f2Nbv9Ebf5
----- For custom services or help, check my Fiverr: https://www.fiverr.com/aymannajim