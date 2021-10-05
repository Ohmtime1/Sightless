local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ohmtime1/EMOkak/main/EmoNahee"))()
local venyx = library.new("Sightless Hub Ver.3.2.7", 7252902816)

local themes = {
	Background = Color3.fromRGB(240, 240, 240),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(204, 255, 255)
}

local page = venyx:addPage("Player", 5012544693)
local section1 = page:addSection("Player")

players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end

section1:addDropdown("Select Player", players, function(abc)
    Select = abc
end)

section1:addButton("Refresh Player", function()
	table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)

section1:addToggle("Auto Yedhee", nil, function(value)
	while wait() do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end
end)

local page = venyx:addPage("Misc", 5012544693)
local section = page:addSection("INF Money")
section:addButton("INF Money", function()
	local A_1 = 999999999999999
local Event = game:GetService("ReplicatedStorage").Fishing
Event:FireServer(A_1)
end)

local section = page:addSection("Fly")
section:addButton("Click E In New Ui For Fly", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/6QGKLRD2"))();
end)

local section = page:addSection("Click teleport")
section:addButton("Get Item Teleport", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/t7gWBcif"))();
end)

local page = venyx:addPage("Teleport", 5012544693)
local section1 = page:addSection("Teleport")
section1:addButton("Spawn Point", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-235.87620544434, 4.9999980926514, 34.531703948975)
end)
section1:addButton("Sala1", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69.271003723145, 4.9999995231628, 47.024139404297)
end)
section1:addButton("Fishing", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.636745452881, 2.9999988079071, 272.40966796875)
end)
section1:addButton("Garden", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17039.7890625, -5.3437504768372, 136.85173034668)
end)
section1:addButton("Village", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(340.96548461914, 13.484375, 61.072780609131)
end)

local page = venyx:addPage("Theme", 5012544693)
local section3 = page:addSection("Key bind")
section3:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
	print("Activated Keybind")
	venyx:toggle()
end, function()
	print("Changed Keybind")
end)
