local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window = library:Window("Adventurer Simulator")
local window2 = library:Window("Valentine Event")
local window3 = library:Window("Pet Egg Hatching")
local window4 = library:Window("Miscellaneous")
library:Keybind("G")

if firetouchinterest then else
print("Your exploit is not supported")
return game:Shutdown()
end
if firetouchinterest then
print("Your exploit is supported")
end

window:Label("- Autofarm -", Color3.fromRGB(127, 143, 166))
window:Toggle("Auto Sell", false, function(AutoSellToggle)
shared.toggle2 = AutoSellToggle
while shared.toggle2 == true and wait() do
wait(.0)
game:GetService("Workspace").Activations.Sell.RootPart.CFrame = game.Players.LocalPlayer.character.HumanoidRootPart.CFrame
end
end)
window:Toggle("Auto Attack", false, function(AutoAttackToggle)
shared.toggle3 = AutoAttackToggle
while shared.toggle3 == true and wait() do
wait(.0)
local A_1 = 
{
	["Action"] = "Attack"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Weapon
Event:FireServer(A_1)
end
end)
window:Toggle("Collect Coins & Gems", false, function(CollectCoinsGemsToggle)
shared.toggle4 = CollectCoinsGemsToggle
while shared.toggle4 == true and wait() do
wait(.0)
   for i,v in pairs(game:GetService("Workspace").Client.Worlds.Overworld.Collectables.Projectiles:GetDescendants()) do
       if v:IsA("UnionOperation") or v:IsA("MeshPart") then
           v.CFrame = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
       end
   end
   wait(0.25)
end
end)
window:Label("- Auto Buy -", Color3.fromRGB(127, 143, 166))
window:Toggle("Auto Buy Weapons", false, function(AutoBuyWeaponsToggle)
shared.toggle5 = AutoBuyWeaponsToggle
while shared.toggle5 == true and wait() do
wait(.0)
local A_1 =
{
["Action"] = "Buy All",
["Category"] = "Weapons"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
Event:FireServer(A_1)
end
end)
window:Toggle("Auto Buy Genetics", false, function(AutoBuyGeneticsToggle)
shared.toggle6 = AutoBuyGeneticsToggle
while shared.toggle6 == true and wait() do
wait(.0)
local A_1 =
{
["Action"] = "Buy All",
["Category"] = "Genetics"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
Event:FireServer(A_1)
end
end)
window:Toggle("Auto Buy Classes", false, function(AutoBuyClassesToggle)
shared.toggle8 = AutoBuyClassesToggle
while shared.toggle8 == true and wait() do
wait(.0)
local IndexCounter = 1
repeat wait(1)
  local Class = 
  {
      ["Index"] = IndexCounter, 
      ["Action"] = "Purchase", 
      ["Category"] = "Classes"
  }
  game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(Class)
  IndexCounter = IndexCounter + 1
until IndexCounter >= 28
IndexCounter = 1
end
end)
window:Toggle("Auto-Buy Double Jumps", false, function(AutoBuyDoubleJumpToggle)
shared.toggle10 = AutoBuyDoubleJumpToggle
while shared.toggle10 == true and wait() do
wait(.0)
local IndexCounter = 1
repeat wait(1)
  local Jump = 
  {
      ["Index"] = IndexCounter, 
      ["Action"] = "Purchase", 
      ["Category"] = "Double Jumps"
  }
  game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(Class)
  IndexCounter = IndexCounter + 1
until IndexCounter >= 14
IndexCounter = 1
end
end)
window:Toggle("Auto-Buy Boss Hits", false, function(AutoBuyBossHitToggle)
shared.toggle11 = AutoBuyBossHitToggle
while shared.toggle11 == true and wait() do
wait(.0)
local IndexCounter = 1
repeat wait(1)
  local BossHit = 
  {
      ["Index"] = IndexCounter, 
      ["Action"] = "Purchase", 
      ["Category"] = "Boss Hits"
  }
  game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(Class)
  IndexCounter = IndexCounter + 1
until IndexCounter >= 14
IndexCounter = 1
end
end)
window:Label("- Boss Farming -", Color3.fromRGB(127, 143, 166))
window:Dropdown("Select Boss", {
"Earth's Guardian",
"Cursed Wizard",
"Cthulhu Pirate",
"Samurai"
}, function(DropdownSelectBoss)
    shared.selectboss = DropdownSelectBoss
end)

window:Toggle("Auto Boss", false, function(AutoBossToggle)
  shared.toggleautoboss = AutoBossToggle
while shared.toggleautoboss == true and wait() do
  if shared.selectboss == "Earth's Guardian" then
    shared.world = "Overworld"
  elseif shared.selectboss == "Cursed Wizard" then
    shared.world = "Magic Forest"
  elseif shared.selectboss == "Cthulhu Pirate" then
    shared.world = "Tropical Paradise"
  elseif shared.selectboss == "Samurai" then
    shared.world = "Ancient Palace"
  end
  if shared.selectboss then
    wait(.5)
    for i,v in pairs(game:GetService("Workspace").Client.Worlds[shared.world].Boss:GetChildren()) do
      if v.Name == shared.selectboss then
        if v:FindFirstChild("LowerTorso") then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
          local A_1 = 
          {   
           ["Action"] = "Attack"
          }
          local Event = game:GetService("ReplicatedStorage").Remotes.Events.Weapon
          Event:FireServer(A_1)
        end
      end
    end
  end
end
end)
window:Label("- Auto Claim Achievements -", Color3.fromRGB(127, 143, 166))
window:Toggle("Eggs Hatched", false, function(ClaimAchievementsToggle)
shared.toggle13 = ClaimAchievementsToggle
while shared.toggle13 == true and wait() do
wait(.0)
local IndexCounter = 1
repeat wait(1)
  local EggsHatch = 
  {
	  ["Type"] = "Eggs Hatched", 
	  ["Action"] = "Claim", 
      ["Index"] = IndexCounter, 
  }
  game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(Class)
  IndexCounter = IndexCounter + 1
until IndexCounter >= 11
IndexCounter = 1
end
end)
window:Toggle("Total Strength", false, function(ClaimAchievementsToggle)
shared.toggle14 = ClaimAchievementsToggle
while shared.toggle14 == true and wait() do
wait(.0)
local IndexCounter = 1
repeat wait(1)
  local TotalStr = 
  {
	  ["Type"] = "Total Strength", 
	  ["Action"] = "Claim", 
      ["Index"] = IndexCounter, 
  }
  game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(Class)
  IndexCounter = IndexCounter + 1
until IndexCounter >= 11
IndexCounter = 1
end
end)

window2:Toggle("Auto Collect Hearts", false, function(AutoCollectHeartToggle)
shared.toggle7 = AutoCollectHeartToggle
while shared.toggle7 == true and wait() do
wait(.0)
for i,v in pairs(game:GetService("Workspace").Client.Worlds["Valentine's World"].Collectables.Projectiles:GetDescendants()) do
if v.Name == "Meshes/heart2" then
firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
wait(.0)
end
end
end
end)
window2:Toggle("Auto Boss - Valentine", false, function(AutoBossToggle)
shared.toggle = AutoBossToggle
while shared.toggle == true and wait() do
wait(.0)
for i,v in pairs(game:GetService("Workspace").Client.Worlds["Valentine's World"].Boss.Cupid:GetChildren()) do
if v.Name == "LowerTorso" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
local A_1 = 
{
	["Action"] = "Attack"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Weapon
Event:FireServer(A_1)
end
end
end
end)
window2:Dropdown("Select Egg", {
"Candy Egg",
"Chocolate Egg",
"Valentine's Egg",
"Cupid's Egg"
}, function(DropdownSelectEgg)
    shared.selectegg = DropdownSelectEgg
end)

window2:Toggle("Auto Hatch Eggs", false, function(AutoHatchToggle)
  shared.toggleautohatch = AutoHatchToggle
while shared.toggleautohatch == true and wait() do
if shared.selectegg then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Client.Worlds["Valentine's World"].Eggs[shared.selectegg].Root.CFrame
end
wait(.5)
local A_1 = 
{
    ["EggName"] = shared.selectegg, 
    ["Action"] = "Hatch Egg", 
    ["WorldName"] = "Valentine's World"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
Event:FireServer(A_1)
end
end)
window3:Label("Eggs Hatching", Color3.fromRGB(127, 143, 166))
window3:Dropdown("Select Egg", {
"Common Egg",
"Spotted Egg",
"Slimy Egg",
"Overworld Egg",
"Magic Egg",
"Cursed Egg",
"Shattered Egg",
"Magic Forest Egg",
"Jungle Egg",
"Sandy Egg",
"Watery Egg",
"Tropical Egg",
"Ancient Egg",
"Samurai Egg",
"Royal Egg",
"Palace Egg"
}, function(DropdownSelectEgg)
    shared.selectegg = DropdownSelectEgg
end)

window3:Toggle("Auto Hatch Eggs", false, function(AutoHatchToggle)
  shared.toggleautohatch = AutoHatchToggle
while shared.toggleautohatch == true and wait() do
if shared.selectegg == "Common Egg" or shared.selectegg == "Spotted Egg" or shared.selectegg == "Slimy Egg" or shared.selectegg == "Overworld Egg" then
 shared.world = "Overworld"
elseif shared.selectegg == "Magic Egg" or shared.selectegg == "Cursed Egg" or shared.selectegg == "Shattered Egg" or shared.selectegg == "Magic Forest Egg" then
 shared.world = "Magic Forest"
elseif shared.selectegg == "Jungle Egg" or shared.selectegg == "Sandy Egg" or shared.selectegg == "Watery Egg" or shared.selectegg == "Tropical Egg" then
 shared.world = "Tropical Paradise"
elseif shared.selectegg == "Ancient Egg" or shared.selectegg == "Samurai Egg" or shared.selectegg == "Royal Egg" or shared.selectegg == "Palace Egg" then
 shared.world = "Ancient Palace"
end
if shared.selectegg then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Client.Worlds[shared.world].Eggs[shared.selectegg].Root.CFrame
 wait(.5)
 local A_1 = 
 {
     ["EggName"] = shared.selectegg, 
     ["Action"] = "Hatch Egg", 
     ["WorldName"] = shared.world
 }
 local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
 Event:FireServer(A_1)
end
end
end)
window3:Label("- Rarity Auto Delete -", Color3.fromRGB(127, 143, 166))
window3:Toggle("Delete Commons", false, function(AutoDeleteToggle)
  shared.toggleautodelete = AutoDeleteToggle
while shared.toggleautodelete == true and wait() do
wait(1)
game:GetService("ReplicatedStorage").Remotes.Events.AutoDelete:FireServer({["Action"] = "Toggle", ["Rarity"] = "Common"})
end
end)
window3:Toggle("Delete Uncommons", false, function(AutoDeleteToggle)
  shared.toggleautodelete = AutoDeleteToggle
while shared.toggleautodelete == true and wait() do
wait(1)
game:GetService("ReplicatedStorage").Remotes.Events.AutoDelete:FireServer({["Action"] = "Toggle", ["Rarity"] = "Uncommon"})
end
end)
window3:Toggle("Delete Uniques", false, function(AutoDeleteToggle)
  shared.toggleautodelete = AutoDeleteToggle
while shared.toggleautodelete == true and wait() do
wait(1)
game:GetService("ReplicatedStorage").Remotes.Events.AutoDelete:FireServer({["Action"] = "Toggle", ["Rarity"] = "Unique"})
end
end)
window3:Toggle("Delete Rares", false, function(AutoDeleteToggle)
  shared.toggleautodelete = AutoDeleteToggle
while shared.toggleautodelete == true and wait() do
wait(1)
game:GetService("ReplicatedStorage").Remotes.Events.AutoDelete:FireServer({["Action"] = "Toggle", ["Rarity"] = "Rare"})
end
end)
window3:Label("Credits to AltsegoD#9210", Color3.fromRGB(127, 143, 166))
window4:Button("Unlock Islands", function()
wait(.0)
for i,v in pairs(game:GetService("Workspace").Client.Worlds.Overworld.Islands:GetDescendants()) do
if v.Name == "RootPart" then
firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
wait(.0)
firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
end
end
end)
window4:Button("Open Chests", function()
wait(.0)
for i,v in pairs(game:GetService("Workspace").Client.Worlds.Overworld.Chests:GetDescendants()) do
if v:IsA("Part") and v.Name == "Pad" then
firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
wait(.0)
firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
wait(.0)
end
end
end)
window4:Button("Reedem All Codes", function()
wait(.0)
game:GetService("ReplicatedStorage").Remotes.Events.Code:FireServer({["Action"] = "Redeem", ["Code"] = "RUSSO"})
wait(.0)
game:GetService("ReplicatedStorage").Remotes.Events.Code:FireServer({["Action"] = "Redeem", ["Code"] = "1MVISITS"})
wait(.0)
game:GetService("ReplicatedStorage").Remotes.Events.Code:FireServer({["Action"] = "Redeem", ["Code"] = "TOFUU"})
end)