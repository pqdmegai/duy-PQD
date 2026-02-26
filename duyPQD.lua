local redzlib = 
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/
Source.Lua"))()
local Window = redzlib:MakeWindow({
 Title = "redz Hub : Blox Fruits",
 SubTitle = "by redz9999",
 SaveFolder = "redz Hub | Blox Fruits.lua"
})
local AFKOptions = {}
local Facebook = Window:MakeTab({"Facebook", "Info"})
Facebook:AddFacebookInvite({
 Name = "duy PQD | Community",
 Description = "Join our discord community to receive information about the next 
update",
 Logo = "rbxassetid://93634810551939",
 Invite = "https://www.facebook.com/share/1HMaRaPS9T/"
})
local MainFarm = Window:MakeTab({"Farm", "Home"})
if Sea3 then
 local AutoSea = Window:MakeTab({"Sea", "Waves"})
 AutoSea:AddSection({"Kitsune"})
 local KILabel = AutoSea:AddParagraph({"Kitsune Island : not spawn"})
 AutoSea:AddToggle({Name = "Auto Kitsune Island",Callback = function(Value)
 getgenv().AutoKitsuneIsland = Value;AutoKitsuneIsland()
 end})
 AutoSea:AddToggle({Name = "Auto Trade Azure Ember",Callback = function(Value)
 getgenv().TradeAzureEmber = Value
 task.spawn(function()
 local Modules = ReplicatedStorage:WaitForChild("Modules", 9e9)
 local Net = Modules:WaitForChild("Net", 9e9)
 local KitsuneRemote = Net:WaitForChild("RF/KitsuneStatuePray", 9e9)
 
 while getgenv().TradeAzureEmber do task.wait(1)
 KitsuneRemote:InvokeServer()
 end
 end)
 end})
 task.spawn(function()
 local Map = workspace:WaitForChild("Map", 9e9)
 task.spawn(function()
 while task.wait() do
 if Map:FindFirstChild("KitsuneIsland") then
 local plrPP = Player.Character and Player.Character.PrimaryPart
 if plrPP then
 Distance = tostring(math.floor((plrPP.Position - 
Map.KitsuneIsland.WorldPivot.p).Magnitude / 3))
 end
 end
 end
 end)
 
 while task.wait() do
 if Map:FindFirstChild("KitsuneIsland") then
 KILabel:SetTitle("Kitsune Island : Spawned | Distance : " .. Distance)
 else
 KILabel:SetTitle("Kitsune Island : not Spawn")
 end