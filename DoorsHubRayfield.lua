--[[
    
    Hub Created By Malar#7865 and ee sports#4557 on Discord! (Check the about section for credits)
                                           \__(^-^)_/

]]--

--Achievement Script (image was changed)
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "MalC Doors Hub",
    Desc = "Thank you for choosing MalC Hub!",
    Reason = "Thanks for using the script!",
    Image = "https://i.imgur.com/2WPTjIu.png",
})


--LoadGUI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

---loadWindow
local Window = Rayfield:CreateWindow({
    Name = "MalC Hub DOORS",
    LoadingTitle = "Malar#7865 on Discord",
    LoadingSubtitle = "By MalarClaw",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "MalC Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "Hello"
    }
 })


--Load New Window
 
local Tab = Window:CreateTab("Main Exploits", 4483362458) -- Title, Image
 --Load Section
 
 local Section = Tab:CreateSection("Main")


 --StartScripts
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
    Name = "PoopDoors Edited",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Dex v5 ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dyyll/Dex-V5-leak/main/Dex%20V5.lua"))()
    end,
 })



 --fixed ominousvibes script
 local Button = Tab:CreateButton({
    Name = "OminousVibes",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/StXDQbKn'))()
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "Walk Speed(breaks when you crouch)",
    Range = {16, 21},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })

 --NewSection
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

 local Button = Tab:CreateButton({
    Name = "Doors Floor 2 Textures",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
    end,
 })

 --NewSection
 local Tab = Window:CreateTab("Entity Spawner", 12798013137) -- Title, Image
 local Section = Tab:CreateSection("Entity Spawner")

 --Buttons
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
    Model = "rbxassetid://12798751166", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
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
    Model = "rbxassetid://12798751166", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
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

 local Tab = Window:CreateTab("Rooms", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Scripts")
 
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
        loadstring(game:HttpGet("https://pastebin.com/raw/sDXcYFhR", true))()
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

local Paragraph = Tab:CreateParagraph({Title = "All Script Credits", Content = "Credits To: IY Team, RegularVynixu, mstudio45, Dex Team, TerminalVibes, iCherryKardes, plamen6789, geoduude, lolcat, and all of my friends who helped with this!  "})

local Label = Tab:CreateLabel("UI = Rayfield Library")

--saveConfig
Rayfield:LoadConfiguration()