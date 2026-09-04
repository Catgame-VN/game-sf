local InsertService = game:GetService("InsertService")

local Services = {
	Workspace = game:GetService("Workspace"),
	MaterialService = game:GetService("MaterialService"),
	ReplicatedStorage = game:GetService("ReplicatedStorage"),
	ServerScriptService = game:GetService("ServerScriptService"),
	ServerStorage = game:GetService("ServerStorage"),
	StarterGui = game:GetService("StarterGui"),
	StarterPlayer = game:GetService("StarterPlayer"),
	ReplicatedFirst = game:GetService("ReplicatedFirst"),
	Teams = game:GetService("Teams"),
	Lighting = game:GetService("Lighting")
}

local criticalAssets = { 
	{id = 130190853038381, dest = Services.ServerScriptService},
}

local priorityAssets = {
	{id = 111980259212357, dest = Services.ServerStorage},
}

local secondaryAssets = {
}

local function loadAsset(entry)
	local success, loadedModel = pcall(function()
		return InsertService:LoadAsset(entry.id)
	end)

	if not success or not loadedModel then
		return false
	end

	task.wait(2)

	for _, item in ipairs(loadedModel:GetChildren()) do
		item.Parent = entry.dest
	end

	loadedModel:Destroy()
	return true
end

for _, entry in ipairs(criticalAssets) do
	loadAsset(entry)
end

for _, entry in ipairs(priorityAssets) do
	loadAsset(entry)
end

for _, entry in ipairs(secondaryAssets) do
	task.spawn(function()
		loadAsset(entry)
	end)
end

local stable = 0
local lastCount = 0

while stable < 3 do
	local currentCount = #game.ServerStorage:GetDescendants()

	if currentCount == lastCount then
		stable = stable + 1
	else
		stable = 0
	end

	lastCount = currentCount
	task.wait(1)
end

local expectedFolders = {
	"Workspace",
	"Lighting",
	"MaterialService",
	"ReplicatedFirst",
	"ReplicatedStorage",
	"ServerScriptService",
	"StarterGui",
	"StarterPack",
	"StarterPlayer",
	"Teams",
	"SoundService",
	"Chat"
}

for _, folderName in ipairs(expectedFolders) do
	local folder = game.ServerStorage:FindFirstChild(folderName)
end

local MainModule = require(
	game:GetService("ServerScriptService"):WaitForChild("MainModule")
)

MainModule:Unpack()
