_G.CurrentFieldOfView = 70
_G.EnableFOVChange = false
_G.EnableFb = false
_G.Uses = 1
_G.Range = 30
_G.OnAnything = false
_G.Fail = false
_G.SeekBypass = false
_G.NoClip = false
_G.NoRoomsLocks = false


--[[
    
    Hub Created By Malar#7865 and ee sports#4557 on Discord! (Check the about section for credits)
                                           \__(^-^)_/

]]--

--Achievement Script (image was changed)
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "MalC Doors Hub",
    Desc = "Thank you for choosing MalC Hub!",
    Reason = "Loading UI...",
    Image = "https://i.imgur.com/2WPTjIu.png",
})

local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
--LoadGUI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

---loadWindow
local Window = Rayfield:CreateWindow({
    Name = "MalC Hub DOORS",
    LoadingTitle = "Malar#7865 on Discord",
    LoadingSubtitle = "By MalarClaw",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "MalCHubFolder", -- Create a custom folder for your hub/game
       FileName = "MalC Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "BQbQ9fNGfY", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "MalC Hub",
       Subtitle = "Key System",
       Note = "Join the Discord for the Key! (discord.gg/BQbQ9fNGfY)",
       FileName = "MalCHubKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "Ijgi284398923"
    }
 })

 --Variables
 local Character = game.Players.LocalPlayer.Character
 local isJumping = false



local Tab = Window:CreateTab("Welcome!", 4483362458)
local Paragraph = Tab:CreateParagraph({Title = "Welcome!", Content = "Welcome to MalC Hub! We are glad you could come. Here, sit down and drink this. In this script hub, you will find multiple sectioins full of scripts. The title of those sections will list what is in there. You may also see sliders being past their maximum limit. To fix this, just update the slider by dragging it down, then back up, and that should fix it. This is a rayfield error and so while I can't fix it myself, it should be fixed soon. Have an amazing time!"})
local Paragraph = Tab:CreateParagraph({Title = "Warnings", Content = "Some scripts in here might not work. But that is besides the point, I would like to warn you about some of the scripts that could not work and what reasons. The fly script cannot be disabled, and I am currently working to fix that but expect it to be fixed later. That doesn't mean fly doesn't work, it just means once you enable it you can't turn it off. Next, I would like to talk about using the Crucifix script and No Cam Shake. These break eachother."})
local Paragraph = Tab:CreateParagraph({Title = "Where To Find Credits", Content = "For Any Script writers seeing their scripts in here and thinking that I stole your scripts claiming them to be mine, I have listed in the 'About' section of this hub all of the credits for all of the scripts. If you find your name isn't on there (somehow), please DM me on Discord. Malar#7865."})

 --[[ 


MAIN EXPLOITS
MAIN EXPLOITS
MAIN EXPLOITS


]]--
local Tab = Window:CreateTab("Main Exploits", 4483362458) -- Title, Image
 --Load Section
 
 local Section = Tab:CreateSection("Main")


 --StartScripts

 local Toggle = Tab:CreateToggle({
    Name = "Noclip (Built-In NoClip Bypasser)",
    CurrentValue = false,
    Callback = function(Value)
       _G.NoClip = Value
    end
 })

local Section = Tab:CreateSection("OP Scripts")

local Paragraph = Tab:CreateParagraph({Title = "WARNING ⚠️", Content = "If you run into an object, you may be lagged back! Try your best to control yourself for minimal lagbacks!"})

local Button = Tab:CreateButton({
    Name = "Speed and Fly Bypass",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MalarThing/Other-Scripts/main/speedbypass.lua"))()
end,
})
local Input = Tab:CreateInput({
    Name = "Speed Boost",
    PlaceholderText = "Put a number 1-30...",
    RemoveTextAfterFocusLost = false,
    Callback = function(TextSpeed)
        game.Players.LocalPlayer.Character.Humanoid:SetAttribute("SpeedBoost", TextSpeed)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "No Slow Acceleration (Speed Boost)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(100,0,0,0,0)
 end,
 })

 local door = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value

 local Toggle = Tab:CreateToggle({
    Name = "Door Reach",
    CurrentValue = false,
    Flag = "DoorReach", 
    Callback = function(Value)
while Value == true do
    local door = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
workspace.CurrentRooms:FindFirstChild(door).Door.ClientOpen:FireServer()
wait(0.0)
end
    end,
 })

 local Section = Tab:CreateSection("Helpful Scripts")

 local Toggle = Tab:CreateToggle({
    Name = "Entity Notifier",
    CurrentValue = false,
    Callback = function(Value)
        workspace.ChildAdded:Connect(function(rush)
			if rush.Name == "RushMoving" then 
				if rush:WaitForChild("RushNew").CFrame.Y >= -999 then
					Rayfield:Notify({
                        Title = "Entity Spawned!",
                        Content = "Rush has Spawned! Quick, find a Closet Or Bed!",
                        Duration = 6.5,
                        Image = 4483362458,
                        Actions = { -- Notification Buttons
                           Ignore = {
                              Name = "Okay!",
                              Callback = function()
                              print("Rush Is Spawned Quick Found A Closet Or Bed!")
                           end
                        },
                     },
                     })
				end
			end
		end)
		workspace.ChildAdded:Connect(function(ambush)
			if ambush.Name == "AmbushMoving" then
				if ambush:WaitForChild("RushNew").CFrame.Y >= -999 then
					Rayfield:Notify({
                        Title = "Entity Spawned",
                        Content = "Ambush has Spawned! Quick, find a Closet Or Bed!",
                        Duration = 6.5,
                        Image = 4483362458,
                        Actions = {
                           Ignore = {
                              Name = "Entity Spawned",
                              Callback = function()
                              print("Ambush Is Spawned Quick Found A Closet Or Bed!")
                           end
                        },
                     },
                     })
				end
			end
		end)
		workspace.ChildAdded:Connect(function(eyes)
			if eyes.name == "Eyes" then
				if eyes:WaitForChild("Core") then
                    Rayfield:Notify({
                        Title = "Entity Spawned",
                        Content = "Eyes has spawned! Look Away From It!",
                        Duration = 6.5,
                        Image = 4483362458,
                        Actions = {
                           Ignore = {
                              Name = "Okay!",
                              Callback = function()
                              print("Eyes Is Look Away From Him")
                           end
                        },
                     },
                     })
				end
			end
		end)
	end
})


 local Toggle = Tab:CreateToggle({
    Name = "Enable Jumping (FE)",
    CurrentValue = false,
    Flag = "enableJump",
    Callback = function(val)
        if val == true then
            con = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                if gameProcessed then
                    return
                end
                if input.KeyCode == Enum.KeyCode.Space then
                    isJumping = true
                    repeat
                        task.wait()
                        if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall then
                        else
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
                        end
                    until isJumping == false
                end
            end)
            con2 = game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
                if gameProcessed then
                    return
                end
                if input.KeyCode == Enum.KeyCode.Space then
                    isJumping = false
                end
            end)
        else
            con:Disconnect()
            con2:Disconnect()
        end
    end
})

 local Section = Tab:CreateSection("Rooms Entrance")

 local Toggle = Tab:CreateToggle({
    Name = "A-000 Door With No Locks",
    CurrentValue = false,
    Flag = "RemoveA000Locks+EnablePrompt", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
         _G.NoRoomsLocks = Value
         if Value then
 
         local CurrentRoom = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
         local function check(CurrentRoom)
             local RoomsDoor = CurrentRoom:WaitForChild("RoomsDoor_Entrance",2)
             
             if RoomsDoor then
                 local EnterRoomsProximityPrompt = RoomsDoor:WaitForChild("Door"):WaitForChild("EnterPrompt")
                 local Chain1 = RoomsDoor:WaitForChild("Chain1")
                 local Chain2 = RoomsDoor:WaitForChild("Chain2")
                 local ChainEnds = RoomsDoor:WaitForChild("Model")
                 local SkullLock = RoomsDoor:WaitForChild("SkullLock")
                 EnterRoomsProximityPrompt.Enabled = true
                 Chain1:Destroy()
                 Chain2:Destroy()
                 ChainEnds:Destroy()
                 SkullLock:Destroy()
             end 
         end
         
         local WaitForRoomsProximityPrompt
         WaitForRoomsProximityPrompt = workspace.CurrentRooms.ChildAdded:Connect(function(room)
             check(CurrentRoom)
         end)
         
         for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
             check(CurrentRoom)
         end
         
         repeat task.wait() until not _G.NoRoomsLocks
         WaitForRoomsProximityPrompt:Disconnect()
         end
    end,
 })


 local Section = Tab:CreateSection("Custom Exploits")
local Toggle = Tab:CreateToggle({
Name = "Enable FOV",
CurrentValue = false,
Flag = "EnableFOVChanger",
Callback = function(Value)
    _G.EnableFOVChange = Value
    workspace.CurrentCamera.FieldOfView = 70

end,
})

local Slider = Tab:CreateSlider({
Name = "FOV Changer",
Range = {70, 120},
Increment = 1,
Suffix = "",
CurrentValue = 70,
Flag = "FieldOfViewSlider",
Callback = function(FOV)
    _G.CurrentFieldOfView = FOV
end,
})

local Button = Tab:CreateButton({
    Name = "Load ESP Hub (updating soon)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Alper2222211/asdasdasdasd/main/PoopDoors%20Esp"))()
    
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Instant Interact",
    CurrentValue = false,
    Flag = "InteractToggle", 
    Callback = function(Value)
    end,
 })

 game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if Rayfield.Flags["InteractToggle"].CurrentValue == true then
    fireproximityprompt(prompt)
    end
end)

local Toggle = Tab:CreateToggle({
    Name = "No Camera Shake (WIP)",
    CurrentValue = false,
    Flag = "NoCamShake", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
 game:GetService("ReplicatedStorage").CameraShaker:Destroy()
    end,
 })



local Section = Tab:CreateSection("Fullbright")

local Toggle = Tab:CreateToggle({
    Name = "Fullbright",
    CurrentValue = false,
    Flag = "FullbrightToggle", 
    Callback = function(Value)
        _G.EnableFb = Value
    if not _G.EnableFb then
game.Lighting.Ambient = Color3.fromRGB(67, 51, 56)
    end    
end,
 })



 local Section = Tab:CreateSection("Walkspeed")

 local Slider = Tab:CreateSlider({
    Name = "Walkspeed Slider",
    Range = {16, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "WalkSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        while task.wait() do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
            task.wait()
            end
    end,
 })

local Section = Tab:CreateSection("Other Exploits")

 local Button = Tab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Vynixius",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "MsDoors (Formerly PoopDoors Edited)",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"),true))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Dark Dex",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end,
})


 


 --fixed ominousvibes script
 local Button = Tab:CreateButton({
    Name = "OminousVibes",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/StXDQbKn'))()
    end,
 })

 local Tab = Window:CreateTab("Bypasses", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Bypasses")

 local Toggle = Tab:CreateToggle({
    Name = "Bypass Halt",
    CurrentValue = false,
    Flag = "HaltBypass", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    if Value then
         game.ReplicatedStorage.ClientModules.EntityModules.Shade.Name = "SussyBaka"
         else
         game.ReplicatedStorage.ClientModules.EntityModules.SussyBaka.Name = "Shade"
         end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Remove Dupe Doors",
    CurrentValue = false,
    Flag = "RemoveDupeDoorsFlag", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game:GetService("Workspace").CurrentRooms.ChildAdded:Connect(function(v)
            for _, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                if v.Name == "DoorFake" then
                    v.Parent = nil
                    v:Destroy()
                end
            end
        end)
    end,
 })


 local Toggle = Tab:CreateToggle({
    Name = "Bypass Screech",
    CurrectValue = false,
    Flag = "ScreechBypass",
    Callback = function(Value)
        if Value then
            game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech.Name = "Amorgus"
        else
            game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Amorgus.Name = "Screech"
        end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Bypass Seek",
    Callback = function(Value)
if Value then
    _G.SeekBypass = Value

    local NewObject
    NewObject = workspace.CurrentRooms.ChildAdded:Connect(function(SeekRoom) -- new child checker
        local WaitForSeekCollision = SeekRoom:WaitForChild("TriggerEventCollision", 2) -- seek collision

        if WaitForSeekCollision then --checking if seek collision exists
            WaitForSeekCollision:Destroy()
        end
    end)

    repeat task.wait() until not _G.SeekBypass
        NewObject:Disconnect()
    end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Remove Seek Arms And Fire (WIP)",
    CurrentValue = false,
    Flag = "SeekArmRemove", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    end,
 })
 game.Workspace.CurrentRooms.DescendantAdded:Connect(function(Obstructions)
    if Rayfield.Flags["SeekArmRemove"].CurrentValue == true and Obstructions.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            Obstructions:Destroy()
        end)
    end
    if Rayfield.Flags["SeekArmRemove"].CurrentValue == true and Obstructions.Name == ("Seek_Arm" and "ChandelierObstruction" or "Chandelier") then
        task.spawn(function()
            wait()
            Obstructions:Destroy()
        end)
    end
end)


 --[[


 OTHER EXPLOITS
 OTHER EXPLOITS
 OTHER EXPLOITS


 ]]--


 local Tab = Window:CreateTab("Other", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Miscellaneous")


 --StartScripts
 local Button = Tab:CreateButton({
    Name = "Christmas Doors",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Christmas%20Theme"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Doors Hard Mode",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript'))()
    end,
 })


 --[[

 
 FUN EXPLOITS
 FUN EXPLOITS
 FUN EXPLOITS


]]--


 local Tab = Window:CreateTab("Fun", 4483362458)
 local Section = Tab:CreateSection("Fun")

 --Buttons
local Section = Tab:CreateSection("Trolling")

local Label = Tab:CreateLabel("Only Works In Super Hard Mode")
local Button = Tab:CreateButton({
    Name = "Banana Gun (FE)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end,
})

local Section = Tab:CreateSection("More")

local Button = Tab:CreateButton({
    Name = "Be Everything(Press R)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BeEverything.lua"))()
end,
})

local Toggle = Tab:CreateToggle({
Name = "Drain Peoples Items (FE)",
CurrentValue = false,
Callback = function(Value)
while Value == true do
for i, v in pairs(game.Players:GetPlayers()) do
    pcall(function()
        v.Character:FindFirstChildWhichIsA("Tool").Remote:FireServer()
        wait(0.1)
    end)
end
wait()
end
end
})
 



local Button = Tab:CreateButton({
    Name = "Magnet (grab anything)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
end,
})

local Button = Tab:CreateButton({
    Name = "Holy Grenade On Everything",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
end,
})

local Section = Tab:CreateSection("Others")

 local Input = Tab:CreateInput({
    Name = "Change Gold (CLIENT SIDED)",
    PlaceholderText = "Put A Number Here...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        game.Players.LocalPlayer.Gold.Value = Text
    end,
 })

local Input = Tab:CreateInput({
	Name = "Change Boosts Amount",
	PlaceholderText = "Put A Number Here...",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		require(game.ReplicatedStorage.ReplicaDataModule).event.Boosts:Fire(tonumber(Text))
	end,
})

local Input = Tab:CreateInput({
	Name = "Change Revives Amount",
	PlaceholderText = "Put A Number Here...",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		require(game.ReplicatedStorage.ReplicaDataModule).event.Revives:Fire(tonumber(Text))
	end,
})

local Input = Tab:CreateInput({
	Name = "Change Knobs Amount",
	PlaceholderText = "Put A Number Here...",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		require(game.ReplicatedStorage.ReplicaDataModule).event.Knobs:Fire(tonumber(Text))
	end,
})

local Input = Tab:CreateInput({
	Name = "Caption Text",
	PlaceholderText = "Your text here..",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, Text)
	end,
})


 local Section = Tab:CreateSection("Show-off Scripts")



 local Button = Tab:CreateButton({
    Name = "Morph GUI (PERMANENT)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
    end,
 })

local Button = Tab:CreateButton({
Name = "Gun (works on custom entities)",
Callback = function()
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
local UIS = game:GetService("UserInputService")
local exampleTool = LoadCustomInstance("rbxassetid://12848567274") -- wand model

if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ItemShop.Visible == true then
    -- Create custom shop item
    CustomShop.CreateItem(exampleTool, {
        Title = "Harry Potter Wand",
        Desc = "Works on entities",
        Image = "https://cdn.discordapp.com/attachments/1049016956231102465/1078727375631679688/image_2023-02-24_121721211-removebg-preview.png",
        Price = "gun",
        Stack = 1,
    })
    ----------------------------------------- parenting
else
    exampleTool.Parent = game.Players.LocalPlayer.Backpack
end
local tool = exampleTool
local function Shoot()
    local bullet = game:GetObjects("rbxassetid://12848374097")[1]
    task.wait()
    bullet.Anchored = false
    bullet.Massless = false
    local Sound = Instance.new("Sound", game.StarterPlayer)
    Sound.Volume = 3.5
    Sound.SoundId = "rbxassetid://5238024665"
    Sound.PlayOnRemove = true
    Sound:Destroy()
    HRP = exampleTool.BulletPart.CFrame * CFrame.Angles(0,math.rad(-90),0)
    local Attachment = Instance.new("Attachment", bullet)
    local LV = Instance.new("LinearVelocity", Attachment) -- creating the linear velocity
    LV.MaxForce = math.huge -- no need to worry about this
    LV.VectorVelocity = (game:GetService("Players").LocalPlayer:GetMouse().Hit.Position - tool.BulletPart.Position).Unit * 100-- HRP.lookVector * 50 -- change 100 with how fast you want the projectile to go
    LV.Attachment0 = Attachment --Required Attachment
    bullet.Parent = game.Workspace
    bullet.CFrame = tool.BulletPart.CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
    bullet.Touched:Connect(function(part)
        local Model = part:FindFirstAncestorWhichIsA("Model")
        if Model ~= nil and Model:GetAttribute("IsCustomEntity") == true then
            Model:Destroy()
        end
    end)
    task.wait(0.3)
    bullet:Destroy()
    end
----------------------------------------------- Shooting!
   
UIS.InputBegan:Connect(function(input)
    if tool.Parent == game.Players.LocalPlayer.Character then
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
        getgenv().BulletType = "12848374097"
        Shoot()
       
        end
    end
end)
end,
})

 local Button = Tab:CreateButton({
    Name = "Shears On Objects",
    Callback = function()
        local Tool = game:GetObjects("rbxassetid://12685165702")[1]
local Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
local Sound = Instance.new("Sound")

Tool.Parent = game.Players.LocalPlayer.Backpack

Sound.PlaybackSpeed = 1.25
Sound.SoundId = "rbxassetid://9118823101"
Sound.Parent = Tool

Tool.Activated:Connect(function()
    local Use = Tool.Animations.use
    local UseTrack = Humanoid:LoadAnimation(Use)

    UseTrack:Play()
    Sound:Play()
    wait(0.25)
    Sound:Play()
    game:GetService("Players").LocalPlayer:GetMouse().Target:FindFirstAncestorOfClass("Model"):Destroy()
end)

Tool.Equipped:Connect(function()
    local Idle = Tool.Animations.idle
    local IdleTrack = Humanoid:LoadAnimation(Idle)

    IdleTrack:Play()
end)
Tool.Unequipped:Connect(function()
    for _,anim in pairs(Humanoid.Animator:GetPlayingAnimationTracks()) do
        anim:Stop()
    end
end)
 end,
 })

 local Button = Tab:CreateButton({
    Name = "Give Tablet (can be in shop)",
    Callback = function()
_G.UpdateStars = true -- stars disappear after picking up a book/breaker pole | false: a little lag
_G.OnShop = true -- can buy on pre run shop, set to false if you dont want it at the start elevator, put at true if you want to see the table/scanner on the elevator shop.
_G.Price = 10 -- tablet price on shop
_G.Description = "1 Round Use, Can Track Books, Keys, And Other Stuff." -- tablet description on shop
 
loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()

    end,
 })

 local Button = Tab:CreateButton({
    Name = "Entity POV",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/toyniccubujori/Jealousdummy-s-entity-POV/main/source"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Entity Spawner + More",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/UtilitiesHub/main/UtilitiesGUI'))()
    end,
 })


 local Section = Tab:CreateSection("Some More Stuff")

 local Button = Tab:CreateButton({
    Name = "Kill Self(Clears All Scripts)",
    Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end,
 })

  local Toggle = Tab:CreateToggle({
    Name = "3rd Person Toggle",
    CurrentValue = false,
    Callback = function(Value)
        if Value == true then
            task.spawn(function()
                PersonToggle = game:GetService("RunService").RenderStepped:Connect(function()
                    game.Workspace.CurrentCamera.CFrame = (game.Players.LocalPlayer.Character.Head.CFrame * CFrame.Angles(math.rad(-10), 0, 0)) * CFrame.new(0, 1.5, 10)
                end)
            end)
        else
            PersonToggle:Disconnect()
            task.wait()
            PersonToggle = nil
        end
    end,
})

--(USE DURING SEEK CHASE, DONT USE IF YOU CARE ABOUT THE RUN)
local Label = Tab:CreateLabel("(USE DURING SEEK CHASE, DONT USE IF YOU CARE ABOUT THE RUN)")

local Button = Tab:CreateButton({
Name = "Seek POV",
Callback = function()
    game:GetService("RunService").RenderStepped:Connect(function() workspace.CurrentCamera.CFrame = workspace:FindFirstChild("SeekMoving", true).SeekRig.Head.CFrame end)

workspace.SeekMoving.SeekRig.Head.Transparency = 1
workspace.SeekMoving.SeekRig.Head.Eye.Transparency = 1
workspace.SeekMoving.SeekRig.Head.Black.Transparency = 1
workspace.SeekMoving.SeekRig.Head.Eye.Decal.Transparency = 1
workspace.SeekMoving.SeekRig.Head.Eye.Decal:destroy()
end,
})

local Label = Tab:CreateLabel("USE IN LIBRARY, DON'T USE IF YOU CARE ABOUT THE RUN")
local Button = Tab:CreateButton({
    Name = "Figure Door 50 POV",
    Callback = function()
        game:GetService("RunService").RenderStepped:Connect(function() workspace.CurrentCamera.CFrame = workspace.CurrentRooms[50].FigureSetup.FigureRagdoll.Head.CFrame end)
end,
})

local Label = Tab:CreateLabel("USE AFTER DOOR 100 CUTSCENE, SAME THING APPLIES AS OTHERS")
local Button = Tab:CreateButton({
    Name = "Figure Door 100 POV",
    Callback = function()
        game:GetService("RunService").RenderStepped:Connect(function() workspace.CurrentCamera.CFrame = workspace.CurrentRooms[100].FigureSetup.FigureRagdoll.Head.CFrame end)
end,
})

 local Section = Tab:CreateSection("Plushies")

 local Button = Tab:CreateButton({
    Name = "Plushie GUI",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/s21b8TkT", true))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Chibi Seek",
    Callback = function()
        local seekawai = game:GetObjects("rbxassetid://12282095680")[1];seekawai.Parent=game.Players.LocalPlayer.Backpack 
 end,
 })

 local Button = Tab:CreateButton({
Name = "Jeff The Killer Plushie",
Callback = function()
    local tool = game:GetObjects("rbxassetid://13069619857")[1]
tool.Parent = game.Players.LocalPlayer.Backpack
 end,
 })

 local Button = Tab:CreateButton({
Name = "Glowing Whopper",
Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Glowing%20Whopper.lua"))()
 end,
 })

 local Button = Tab:CreateButton({
    Name = "Normal Whopper",
Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Normal%20Whopper.lua"))()
end,
})

 local Button = Tab:CreateButton({
    Name = "El Goblino",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/El%20Goblino.lua"))()
 end,
 })

 local Section = Tab:CreateSection("Achievements")
 
 local Button = Tab:CreateButton({
    Name = "Get All Achievements",
    Callback = function()
    for i,v in pairs(require(game.ReplicatedStorage.Achievements)) do
    spawn(function()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)(nil, i)
    end)
end
end,
})

local Section = Tab:CreateSection("Audio")

local Button = Tab:CreateButton({
    Name = "Play Elevator Jam Music",
    Callback = function()
            local Csound = Instance.new("Sound")
Csound.Parent = game.Workspace
Csound.SoundId = "rbxassetid://7249833877"
Csound:Play()
    end,
})

local Button = Tab:CreateButton({
	Name = "Play Lobby Music",
	Callback = function()
			local Esound = Instance.new("Sound")
Esound.Parent = game.Workspace
Esound.SoundId = "rbxassetid://7767530145"
Esound:Play()
	end,
})

local Section = Tab:CreateSection("Mute Sounds")

local Button = Tab:CreateButton({
	Name = "Mute Sounds (all sounds)",
	Callback = function()
		game.SoundService.Main.Volume = "0"
	end,
})

local Button = Tab:CreateButton({
	Name = "Unmute Sounds (all sounds)",
	Callback = function()
		game.SoundService.Main.Volume = "1"
	end,
})


 --[[
    

ENTITY SPAWNER
ENTITY SPAWNER
ENTITY SPAWNER


 ]]--


 local Tab = Window:CreateTab("Entity Spawner", 12798013137) -- Title, Image
 local Section = Tab:CreateSection("Entity Spawner")

 --Buttons



 local Button = Tab:CreateButton({
Name = "Crucifix (Gets rid of the custom entities)",
Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
 end,
 })
        
         local Button = Tab:CreateButton({
            Name = "Screamer(KILLABLE)",
            Callback = function()
                ---====== Define spawner ======---
        
                local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()
                
                ---====== Create entity ======---
                
                local entity = Spawner.createEntity({
                    CustomName = "Screamer",
                    Model = "rbxassetid://12789806614", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
                    Speed = 120,
                    MoveDelay = 2,
                    HeightOffset = 0,
                    CanKill = true,
                    KillRange = 55,
                    SpawnInFront = false,
                    ShatterLights = true,
                    FlickerLights = {
                        Enabled = true,
                        Duration = 3
                    },
                    Cycles = {
                        Min = 1,
                        Max = 1,
                        Delay = 2
                    },
                    CamShake = {
                        Enabled = true,
                        Values = {1.5, 20, 0.1, 1},
                        Range = 180
                    },
                    ResistCrucifix = false,
                    BreakCrucifix = true,
                    DeathMessage = {"You died to Screamer.", "Be Careful when you hear his laugh!", "Make sure you hide quick,", "He's quite fast!"},
                    IsCuriousLight = false
                })
                
                ---====== Debug ======---
                
                entity.Debug.OnEntitySpawned = function()
                    print("Entity has spawned")
                end
                
                entity.Debug.OnEntityDespawned = function()
                    print("Entity has despawned")
                end
                
                entity.Debug.OnEntityStartMoving = function()
                    print("Entity started moving")
                end
                
                entity.Debug.OnEntityFinishedRebound = function()
                    print("Entity finished rebound")
                end
                
                entity.Debug.OnEntityEnteredRoom = function(room)
                    print("Entity entered room:", room)
                end
                
                entity.Debug.OnLookAtEntity = function()
                    print("Player looking at entity")
                end
                
                entity.Debug.OnDeath = function()
                    print("Player has died")
                end
                
                --[[
                    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead
                
                    entity.Debug.OnUseCrucifix = function()
                        print("Custom crucifixion script here")
                    end
                ]]--
                
                ---====== Run entity ======---
                
                Spawner.runEntity(entity)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Screamer(NO DAMAGE)",
    Callback = function()
        ---====== Define spawner ======---

        local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()
        
        ---====== Create entity ======---
        
        local entity = Spawner.createEntity({
            CustomName = "Screamer",
            Model = "rbxassetid://12789806614", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
            Speed = 120,
            MoveDelay = 2,
            HeightOffset = 0,
            CanKill = false,
            KillRange = 55,
            SpawnInFront = false,
            ShatterLights = true,
            FlickerLights = {
                Enabled = true,
                Duration = 3
            },
            Cycles = {
                Min = 1,
                Max = 1,
                Delay = 2
            },
            CamShake = {
                Enabled = true,
                Values = {1.5, 20, 0.1, 1},
                Range = 180
            },
            ResistCrucifix = false,
            BreakCrucifix = true,
            DeathMessage = {"You died to Screamer.", "Be Careful when you hear his laugh!", "Make sure you hide quick,", "He's quite fast!"},
            IsCuriousLight = false
        })
        
        ---====== Debug ======---
        
        entity.Debug.OnEntitySpawned = function()
            print("Entity has spawned")
        end
        
        entity.Debug.OnEntityDespawned = function()
            print("Entity has despawned")
        end
        
        entity.Debug.OnEntityStartMoving = function()
            print("Entity started moving")
        end
        
        entity.Debug.OnEntityFinishedRebound = function()
            print("Entity finished rebound")
        end
        
        entity.Debug.OnEntityEnteredRoom = function(room)
            print("Entity entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function()
            print("Player looking at entity")
        end
        
        entity.Debug.OnDeath = function()
            print("Player has died")
        end
        
        --[[
            NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead
        
            entity.Debug.OnUseCrucifix = function()
                print("Custom crucifixion script here")
            end
        ]]--
        
        ---====== Run entity ======---
        
        Spawner.runEntity(entity)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Recharge(KILLABLE)",
    Callback = function()
        ---====== Define spawner ======---

        local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()
        
        ---====== Create entity ======---
        
        local entity = Spawner.createEntity({
            CustomName = "Recharge",
            Model = "rbxassetid://12798153305", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
            Speed = 120,
            MoveDelay = 2,
            HeightOffset = 0,
            CanKill = true,
            KillRange = 50,
            SpawnInFront = false,
            ShatterLights = true,
            FlickerLights = {
                Enabled = true,
                Duration = 3
            },
            Cycles = {
                Min = 3,
                Max = 10,
                Delay = 2
            },
            CamShake = {
                Enabled = true,
                Values = {2, 30, 0.1, 1},
                Range = 200
            },
            ResistCrucifix = false,
            BreakCrucifix = true,
            DeathMessage = {"You died to Recharge.", "Hide when you hear his electricity!", "You may need to hop in and out a couple of times,", "He's quite fast!"},
            IsCuriousLight = false
        })
        
        ---====== Debug ======---
        
        entity.Debug.OnEntitySpawned = function()
            print("Entity has spawned")
        end
        
        entity.Debug.OnEntityDespawned = function()
            print("Entity has despawned")
        end
        
        entity.Debug.OnEntityStartMoving = function()
            print("Entity started moving")
        end
        
        entity.Debug.OnEntityFinishedRebound = function()
            print("Entity finished rebound")
        end
        
        entity.Debug.OnEntityEnteredRoom = function(room)
            print("Entity entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function()
            print("Player looking at entity")
        end
        
        entity.Debug.OnDeath = function()
            print("Player has died")
        end
        
        --[[
            NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead
        
            entity.Debug.OnUseCrucifix = function()
                print("Custom crucifixion script here")
            end
        ]]--
        
        ---====== Run entity ======---
        
        Spawner.runEntity(entity)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Recharge(NO DAMAGE)",
    Callback = function()
        ---====== Define spawner ======---

        local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()
        
        ---====== Create entity ======---
        
        local entity = Spawner.createEntity({
            CustomName = "Recharge",
            Model = "rbxassetid://12798153305", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
            Speed = 120,
            MoveDelay = 2,
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            SpawnInFront = false,
            ShatterLights = true,
            FlickerLights = {
                Enabled = true,
                Duration = 3
            },
            Cycles = {
                Min = 3,
                Max = 10,
                Delay = 2
            },
            CamShake = {
                Enabled = true,
                Values = {2, 30, 0.1, 1},
                Range = 200
            },
            ResistCrucifix = false,
            BreakCrucifix = true,
            DeathMessage = {"You died to Recharge.", "Hide when you hear his electricity!", "You may need to hop in and out a couple of times,", "He's quite fast!"},
            IsCuriousLight = false
        })
        
        ---====== Debug ======---
        
        entity.Debug.OnEntitySpawned = function()
            print("Entity has spawned")
        end
        
        entity.Debug.OnEntityDespawned = function()
            print("Entity has despawned")
        end
        
        entity.Debug.OnEntityStartMoving = function()
            print("Entity started moving")
        end
        
        entity.Debug.OnEntityFinishedRebound = function()
            print("Entity finished rebound")
        end
        
        entity.Debug.OnEntityEnteredRoom = function(room)
            print("Entity entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function()
            print("Player looking at entity")
        end
        
        entity.Debug.OnDeath = function()
            print("Player has died")
        end
        
        --[[
            NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead
        
            entity.Debug.OnUseCrucifix = function()
                print("Custom crucifixion script here")
            end
        ]]--
        
        ---====== Run entity ======---
        
        Spawner.runEntity(entity)
    end,
 })

 local Button = Tab: CreateButton({
Name = "Dread(KILLABLE)",
Callback = function()
    
---====== Define spawner ======---

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Dread",
    Model = "rbxassetid://12805855406", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 0,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 100,
    SpawnInFront = true,
    ShatterLights = true,
    FlickerLights = {
        Enabled = false,
        Duration = 3
    },
    Cycles = {
        Min = 4,
        Max = 10,
        Delay = 2
    },
    CamShake = {
        Enabled = false,
        Values = {2, 30, 0.1, 1},
        Range = 200
    },
    ResistCrucifix = false,
    BreakCrucifix = false,
    DeathMessage = {"Oh, hello there.", "What did you die to?", "Oh, that red guy.", "It looks sad and I don't know why.", "Because it looks sad, you could call it Dread.", "Alright. See you next time?"},
    IsCuriousLight = true
})

---====== Debug ======---

entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned")
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned")
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

entity.Debug.OnDeath = function()
    print("Player has died")
end

--[[
    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead

    entity.Debug.OnUseCrucifix = function()
        print("Custom crucifixion script here")
    end
]]--

---====== Run entity ======---

Spawner.runEntity(entity)

end,
 })


 local Button = Tab: CreateButton({
Name = "Dread(NO DAMAGE)",
Callback = function()
    
---====== Define spawner ======---

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Dread",
    Model = "rbxassetid://12805855406", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 0,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = false,
    KillRange = 100,
    SpawnInFront = true,
    ShatterLights = true,
    FlickerLights = {
        Enabled = false,
        Duration = 3
    },
    Cycles = {
        Min = 4,
        Max = 10,
        Delay = 2
    },
    CamShake = {
        Enabled = false,
        Values = {2, 30, 0.1, 1},
        Range = 200
    },
    ResistCrucifix = false,
    BreakCrucifix = false,
    DeathMessage = {"Oh, hello there.", "What did you die to?", "Oh, that red guy.", "It looks sad and I don't know why.", "Because it looks sad, you humans call it Dread.", "Alright. See you next time?"},
    IsCuriousLight = true
})

---====== Debug ======---

entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned")
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned")
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

entity.Debug.OnDeath = function()
    print("Player has died")
end

--[[
    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead

    entity.Debug.OnUseCrucifix = function()
        print("Custom crucifixion script here")
    end
]]--

---====== Run entity ======---

Spawner.runEntity(entity)
    end,
 })
--New Section
 local Section = Tab:CreateSection("Doors Entities")

 --Buttons
 local Button = Tab:CreateButton({
	Name = "Screech(No Screech Bypass)",
	Callback = function()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(Data)
	end,
})

 local Button = Tab:CreateButton({
	Name = "Screech(Screech Bypass On)",
	Callback = function()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Amorgus)(Data)
	end,
})

local Button = Tab:CreateButton({
    Name = "Void",
    Callback = function()
        local a = require(game.ReplicatedStorage.ClientModules.EntityModules.Void).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
        workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
    end,
})

local Button = Tab:CreateButton({
Name = "Void (Deals Damage)",
Callback = function()
    local a  = require(game.ReplicatedStorage.ClientModules.EntityModules.Void).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health -= 35
end,
})

local Button = Tab:CreateButton({
	Name = "Glitch",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
	end,
})

local Button = Tab:CreateButton({
	Name = "Glitch (does damage)",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
    wait(1.99)
    game.Players.LocalPlayer.Character.Humanoid.Health -= 40
    firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"That is odd. I cannot figure out who you died to.", "However, I did notice you lagged back from your friends.", "Stay close together!"})
    wait(2.55)
    game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Death.Text = "Died to Glitch"
	end,
})


local Button = Tab:CreateButton({
    Name = "A90",
    Callback = function()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end,
})


local Section = Tab:CreateSection("Room Configurations")
  
local Button = Tab:CreateButton({
    Name = "Red Room",
  Callback = function()
  firesignal(game.ReplicatedStorage.EntityInfo.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
  end,
  })

  local Button = Tab:CreateButton({
        Name = "Flicker Lights",
        Callback = function()
            firesignal(game.ReplicatedStorage.EntityInfo.UseEventModule.OnClientEvent, "flicker", game.ReplicatedStorage.GameData.LatestRoom.Value, 3)
        end,
  })

  local Button = Tab:CreateButton({
	Name = "Seek Eyes",
	Callback = function()
   require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 100)
	end,
})

local Input = Tab:CreateInput({
    Name = "Set Door Text",
    PlaceholderText = "Put text here..",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local r = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
        r.Door.Sign.Stinker.Text = Text
        r.Door.Sign.Stinker.Highlight.Text = Text
        r.Door.Sign.Stinker.Shadow.Text = Text
    end,    
})

local ColorPicker = Tab:CreateColorPicker({
	Name = "Change Room Color",
	Color = Color3.fromRGB(89, 69, 72),
	Flag = "RoomColor",
	Callback = function(color)
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		if color == Color3.fromRGB(89, 69, 72) then
			room.LightBase.SurfaceLight.Enabled = true
			room.LightBase.SurfaceLight.Color = Color3.fromRGB(89, 69, 72)
			for _, thing in pairs(room.Assets:GetDescendants()) do
				if thing:FindFirstChild"LightFixture" then
					thing.LightFixture.Neon.Color = Color3.fromRGB(195, 161, 141)
					for _, light in pairs(thing.LightFixture:GetChildren()) do
						if light:IsA("SpotLight") or light:IsA("PointLight") then
							light.Color = Color3.fromRGB(235, 167, 98)
						end
					end
				end
			end
			return
		end
		room.LightBase.SurfaceLight.Enabled = true
		room.LightBase.SurfaceLight.Color = color
		for _, thing in pairs(room.Assets:GetDescendants()) do
			if thing:FindFirstChild"LightFixture" then
				thing.LightFixture.Neon.Color = color
				for _, light in pairs(thing.LightFixture:GetChildren()) do
					if light:IsA("SpotLight") or light:IsA("PointLight") then
						light.Color = color
					end
				end
			end
		end
	end
})

local Paragraph = Tab:CreateParagraph({
	Title = "Disclaimer",
	Content = "To Reset The Color, Set It As '89,69,72'"
})



 --[[

 
 ROOMS SCRIPTS
 ROOMS SCRIPTS
 ROOMS SCRIPTS


 ]]--

--NewTab+Section
 local Tab = Window:CreateTab("Rooms", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Scripts")

 --Buttons
 
 local Button = Tab:CreateButton({
    Name = "A90 Bypass",
    Callback = function()
        local Plr = game.Players.LocalPlayer
        local ModuleScripts = {
           MainGame = Plr.PlayerGui.MainUI.Initiator.Main_Game,
        }
        
        
        ModuleScripts.MainGame.RemoteListener.Modules["A90"].Name = "Baller"
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Vynixius Rooms",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Rooms Locker ESP",
    Callback = function()
        workspace.CurrentRooms.ChildAdded:Connect(function(Room)
            Room:WaitForChild("Assets")
            for i = 1, 10 do
                for _,Obj in pairs(Room.Assets:GetChildren()) do
                    if Obj.Name == "Rooms_Locker" then
                        Instance.new("Highlight", Obj)
                    end
                end
                task.wait(1)
            end
        end)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Anti AFK",
    Callback = function()
        Rayfield:Notify({
            Title = "Anti AFK Started!",
            Content = "Anti AFK has been started!",
            Duration = 5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                  print("The user tapped Okay!")
               end
            },
         },
         })

        local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Rooms Autowalk",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/geoduude/roblox/master/rooms-autowalk"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "OminousVibes Rooms",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/0Xz2i6hZ'))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "A90 Auto Stop",
    Callback = function()
        game.ReplicatedStorage.EntityInfo.A90.OnClientEvent:Connect(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
            task.wait(1.75)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end)
    end,
 })

 

--[[
    
    The about section should should be at the end of the line, don't move this up.

]]--

local Tab = Window:CreateTab("About", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Credits")

local Label = Tab:CreateLabel("Credits")

local Paragraph = Tab:CreateParagraph({Title = "All Script Credits", Content = "Credits To: Lopvii, NeRD, ZOOPHILIAPHOBIC, IY Team, Kiwi Bird, RegularVynixu, mstudio45, Dex Team, TerminalVibes, iCherryKardes, plamen6789, geoduude, lolcat, ChronoAccelerator, PenguinManiack, ee sports, AlperPro, and all of my friends who helped with this!  "})

local Label = Tab:CreateLabel("UI = Rayfield Library")

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
    if _G.EnableFOVChange then
        workspace.CurrentCamera.FieldOfView = _G.CurrentFieldOfView
    end
if Character:FindFirstChild("HumanoidRootPart") then
    Character.HumanoidRootPart.CanCollide = not _G.NoClip
    Character.Collision.CanCollide = not _G.NoClip
    if Character:FindFirstChild("HumanoidRootPart") then
        Character.HumanoidRootPart.CanCollide = not _G.NoClip
        Character.Collision.CanCollide = not _G.NoClip
        if _G.NoClip then
            local HrpCFrame = Character.HumanoidRootPart.CFrame

            local ray = Ray.new(HrpCFrame.Position, HrpCFrame.LookVector * 0.5)
            local part = workspace:FindPartOnRay(ray)
            if part and part.CanCollide == true then
               Character.HumanoidRootPart.Anchored = true
               Character:PivotTo(Character.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0))
               task.wait()
               Character:PivotTo(Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3.75))
               task.wait()
               Character:PivotTo(Character.HumanoidRootPart.CFrame * CFrame.new(0, -1000, 0))
               task.wait(0.1)
               Character.HumanoidRootPart.Anchored = false
            end
        end
    end
end
    if _G.EnableFb then
       game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)   
    end
end)
game.Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()   
    if _G.EnableFb then
       game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)   
    end
 end)
