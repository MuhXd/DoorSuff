--[=[
@class txt
This is my First Class
--]=]

print(os.date("%B"))

print("Loading")
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

local HardCore = {
    Title = "The Pain Just Begain", -- Made by MuhammadGames and Volta
    Desc = "Join a Match of HardCore For the First Time.",
    Reason = "You executed the HardCore script.",
    Image = "https://github.com/MuhXd/Models/blob/main/HardCoreDoors.png?raw=true",
    id = 1,
}

local DepthW = {
    Title = "Finally Free",
    Desc = "Encounter Depth",
    Reason = "Survive Depth",
    Image = "https://github.com/MuhXd/DoorSuff/blob/main/DoorsModes/Png.png?raw=true",
    id = 2,
}

local Depth = {
    Title = "The Entity Is Still Freezing",
    Desc = "It's So Cold",
    Reason = "Dont Survive Depth",
    Image = "https://github.com/MuhXd/DoorSuff/blob/main/DoorsModes/Png.png?raw=true",
    id = 3,
}

local Smiles = {
    Title = "Income The Frowners",
    Desc = "Stop Smiling",
    Reason = "Encounter and Survive Smiler",
    Image = "https://tr.rbxcdn.com/74de4e7b5e39c15126ca858f0ad19c80/420/420/Image/Png",
    id = 4,
}

local SmilesDie = {
    Title = "Smile to Fail",
    Desc = "Don't Smile",
    Reason = "Encounter And Dont Survive Smiler",
    Image = "https://tr.rbxcdn.com/74de4e7b5e39c15126ca858f0ad19c80/420/420/Image/Png",
    id = 5,
}

local NightmareRush ={
    Title = "Rush From Your Nightmares",
    Desc = "Don't Be fooled",
    Reason = "Encounter And Survive Nightmare Rush",
    Image = "https://tr.rbxcdn.com/74de4e7b5e39c15126ca858f0ad19c80/420/420/Image/Png",
    id = 6,
}

local NightmareAmbush ={
    Title = "Ambush But Even Harder",
    Desc = "Don't Be fooled",
    Reason = "Encounter And Survive Nightmare Ambush",
    Image = "https://tr.rbxcdn.com/74de4e7b5e39c15126ca858f0ad19c80/420/420/Image/Png",
    id = 7,
}

local NightmareAmbush ={
    Title = "Ambush But Even Harder",
    Desc = "Don't Be fooled",
    Reason = "Encounter And Survive Nightmare Ambush",
    Image = "https://tr.rbxcdn.com/74de4e7b5e39c15126ca858f0ad19c80/420/420/Image/Png",
    id = 8,
}


-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------






-- loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/Whitelist/NewKeySystem.lua"))()



caa = 0
tween = game:GetService("TweenService")
local TestMultplayer = true
if game:GetService("ReplicatedStorage"):FindFirstChild("Extacuted") then
    warn("You have Already Loaded")

    return false
end
local Test = Instance.new("Part")
Test.Name = "Extacuted"
Test.Parent = game:GetService("ReplicatedStorage")
Test = 1

loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/Sprint"))()

local SelfModules = {
    Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))(),
}






------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------







local ModName = "HardCore"
local foldername = "AchievementsSaves   By Muhammadgames,Helped by RegularVynixu"
local Slipt = string.split(foldername,"|")
local valid2 = isfolder(foldername)
if not valid2 then
    makefolder(foldername)
end

local fileName = ModName.."Save's.txt"
local filePath = foldername.. "/".. fileName
local valid = isfile(filePath)

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/Models/main/RegularVynixu's%20Achievement%20Modifyer"))()

function AchievementsGet(Achievement)
    local read = readfile(filePath)  
    local read2 = tostring(read)
    local read2 = string.split(read,"|")
    FOUND = false
    Find = ""
    for i,v in pairs(Achievement) do
        if i == "id" then
            Find=Find.." "..v
        end
    end

    for i,v in pairs(read2) do
        if v == Find then
            FOUND = true
        end
    end -- Desc
    if FOUND == false then
        Achievements.Get(Achievement)
        Write = ""
        for i,v in pairs(Achievement) do
            if i == "id" then
                Write=Write.." "..v
            end
        end
        appendfile(filePath,Write.."|")
    end
end
-- Creates and displays your custom achievement
-- readfile(<string> path)  
if not valid then
    writefile(filePath, "Helped by RegularVynixu|")
end

AchievementsGet(HardCore)
--[[
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------ 
Start of real Code!
DON'T SHOW ABOVE!
.............     .       .
.     .     .     .       . 
.     .     .     .       .
.     .     .     .       . 
.     .     .     .       . 
.     .     .     .       . 
.     .     .     .       .
.     .     .     .........
--]]












if game:GetService("ReplicatedStorage"):FindFirstChild("Guis") then

else
    Visable = Instance.new("Folder")
    Visable.Name = "Guis"
    Visable.Parent = game.ReplicatedStorage

end
function Gui(Name,Amount1,TextSent)
    if game:GetService("Players").localPlayer.PlayerGui.MainUI.Statistics.Frame:FindFirstChild("!"..Name.."!") then
        game:GetService("Players").localPlayer.PlayerGui.MainUI.Statistics.Frame["!"..Name.."!"]:Destroy()
    end

    Visable = Instance.new("BoolValue")
    Visable.Value = true
    Visable.Name = Name
    Visable.Parent = game.ReplicatedStorage.Guis

    game.Players.localPlayer.PlayerGui.MainUI.Statistics.LocksOpened.Visible = true
    LocksOpened = game.Players.localPlayer.PlayerGui.MainUI.Statistics.LocksOpened:Clone()
    game.Players.localPlayer.PlayerGui.MainUI.Statistics.LocksOpened.Visible = false
    LocksOpened.Parent = game.Players.localPlayer.PlayerGui.MainUI.Statistics.Frame

    LocksOpened.Visible = game.ReplicatedStorage.Guis:FindFirstChild(Name).Value

    local Grad = game.Players.localPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].UICorner:Clone()
    Grad.Parent = LocksOpened
    Grad = game.Players.localPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].UIGradient:Clone()
    Grad.Parent = LocksOpened
    Grad = game.Players.localPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].Amount:Clone()
    Grad.Parent = LocksOpened
    Grad.Text = Amount1
    Grad.Position = Grad.Position - UDim2.new(0.035,0,0,0)
    Grad = game.Players.localPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].Icon:Clone()
    Grad.Parent = LocksOpened
    Grad.Position = Grad.Position - UDim2.new(0.035,0,0,0)

    LocksOpened.CloseButton.Position = LocksOpened.CloseButton.Position - UDim2.new(0.021,0,0,0)
    LocksOpened.CloseButton.ImageColor3 =  Color3.new(0.0313725, 0.854902, 1)
    LocksOpened.TextColor3 = Color3.new(0.0313725, 0.854902, 1)
    LocksOpened.TextScaled = false
    LocksOpened.Name = "!"..Name.."!"
    LocksOpened.TextSize = game.Players.localPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].TextSize + 16
    LocksOpened.Size = LocksOpened.Parent["Leftover Gold"].Size
    LocksOpened.BackgroundColor3 = Color3.new(0.0196078, 0.552941, 0.647059)
    LocksOpened.BackgroundTransparency = 0.5

    LocksOpened.Text = TextSent



    game.ReplicatedStorage.Guis:FindFirstChild(Name).changed:connect(function()

        LocksOpened.Visible = game.ReplicatedStorage.Guis:FindFirstChild(Name).Value
    end)
end







local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()


-- Run the created entity
local Message = function(Message,Enable,N)
    local msg = Instance.new("Message")  
    msg.Parent = game.Workspace     
    msg.Text = Message
    if Enable ~= true then
        task.wait(0.1)
        msg:Destroy()
    end
end

-- Message("Thank you For Loading MultplayerBeta 1.2")

for ii,vv in pairs(game:GetService("Players"):GetChildren()) do
    PlayersIngame = ii
end -- Gets All Players
if TestMultplayer == true then
    PlayersIngame = 1000 -- TestMultplayer
end

if PlayersIngame > 1 then -- if more then one then waits for link
    if game:GetService("ReplicatedStorage").GameData.LatestRoom.Value > 0 then
        print("Loaded After door 1! Please wait for everyone to die")
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Load Before Door 1",
            Color = Color3.fromRGB(255, 0, 0),
            Font = Enum.Font.SourceSansBold,
            TextSize = 18,
        })

        firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You didn't Load it Before Door 1!","Please Wait for the next round"})
        game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Not Loading Before Door 1"
        game.Players.LocalPlayer.Character.Humanoid.Health = -100
        return false
    end


    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Doors Hard Mode ON! By MuhammadGames (MuhammadGames#0017) and Volta (volta#2161)",
        Color = Color3.fromRGB(255, 0, 0),
        Font = Enum.Font.SourceSansBold,
        TextSize = 18,
    })

    Gui("HardMode","+1000","Hard Mode (Doesn't add Nobs)")

    print("Loaded, Wating to Link to Multplayer") -- waiting to link
    c=1

    repeat task.wait()

        if c < 10 then
            -- Message("MultplayerV1.2B",true,"Welcome")
            c=10
        end
        --  msg:Destroy()
        --Kill=true
    until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value > 0
    print("Linked to Clients") -- linked
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Linked To Clients",
        Color = Color3.fromRGB(0, 255, 0),
        Font = Enum.Font.SourceSansBold,
        TextSize = 18,
    })



    Singleplayer = false -- Runs more Then 1 Player Code
else
    print("Loaded in Singleplayer") -- loaded in 1 player
    repeat task.wait()

    until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value > 0
    print("Started")
    Singleplayer = true -- Runs One player Code
end
Testa = 10
getgenv().death = false
Be=false
Many=1
JobId = game:GetService("ReplicatedStorage").GameData.GameStarted.Value
Lowest = string.len(game:GetService("ReplicatedStorage").GameData.GameStarted.Value)
Lowest = tonumber(Lowest)
Stop=Lowest
RanWait2=""
function Depth()
    while true do task.wait()
    
        Be=true

        wait(30)
        wait(10)
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        if  game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        else
            Wait(20)
            end
        local Depth = Creator.createEntity({
            CustomName = "Depth", -- Custom name of your entity
            Model = "https://github.com/sponguss/storage/raw/main/depth.rbxm", -- Can be GitHub file or rbxassetid
            Speed = 350, -- Percentage, 100 = default Rush speed
            DelayTime = 5,
            KillRange=100,-- Time before starting cycles (seconds)
            HeightOffset = 1,
            CanKill = true,
            BreakLights = true,
            FlickerLights = {
                true, -- Enabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled ('false' if you don't want jumpscare)
                {
                    Image1 = "https://tr.rbxcdn.com/f0f798ca806ed372984f3b70d1b1432f/420/420/Image/Png", -- Image1 url
                    Image2 = "https://tr.rbxcdn.com/f0f798ca806ed372984f3b70d1b1432f/420/420/Image/Png", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        5263560566, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled
                        Color3.fromRGB(50, 115, 108), -- Color
                    },
                    Tease = {
                        false, -- Enabled ('false' if you don't want tease)
                        Min = 1,
                        Max = 5,
                    },
                },
            },
            CustomDialog = {"You died to who you call Depth", "Depth is faster than rush and ambush", "And he can rebound up to 1 to 9 times","use what you leared from Ambush and rush tho."}, -- Custom death message (can be as long as you want)
        })

-----[[  Debug -=- Advanced  ]]-----
Depth.Debug.OnEntityDespawned = function()
            if getgenv().death == false then
                AchievementsGet(DepthW)
            end
end

            Depth.Debug.OnDeath = function()
                getgenv().death = true
                
                AchievementsGet(Depth)
            end
            
            ------------------------

            -- Run the created entity
            Creator.runEntity(Depth)
        end

end

    Stop=string.len(JobId)
    caa=0
    function SmilerSpawn()
        
        while true do task.wait()
            
                --   print("A-60")
                wait(40)
            



                -- Create entity
                local entity = Creator.createEntity({
                    CustomName = "Smiler", -- Custom name of your entity
                    Model = "https://github.com/PABMAXICHAC/doors-monsters-models/blob/main/Smiler.rbxm?raw=true", -- Can be GitHub file or rbxassetid
                    Speed = 850, -- Percentage, 100 = default Rush speed
                    DelayTime = 12, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = true,
                    KillRange=100,
                    BreakLights = true,
                    FlickerLights = {
                        true, -- Enabled
                        5, -- Time (seconds)
                    },
                    Cycles = {
                        Min = 5,
                        Max = 5,
                        WaitTime = 0.3,
                    },
                    CamShake = {
                        true, -- Enabled
                        {20, 20, 1, 2}, -- Shake values (don't change if you don't know)
                        100, -- Shake start distance (from Entity to you)
                    },
                    Jumpscare = {
                        true, -- Enabled ('false' if you don't want jumpscare)
                        {
                            Image1 = "rbxassetid://11417375410", -- Image1 url
                            Image2 = "rbxassetid://11417375410", -- Image2 url
                            Shake = true,
                            Sound1 = {
                                5263560566, -- SoundId
                                { Volume = 2.1 }, -- Sound properties
                            },
                            Sound2 = {
                                5263560566, -- SoundId
                                { Volume = 2.1 }, -- Sound properties
                            },
                            Flashing = {
                                true, -- Enabled
                                Color3.fromRGB(255, 0, 0), -- Color
                            },
                            Tease = {
                                false, -- Enabled ('false' if you don't want tease)
                                Min = 1,
                                Max = 3,
                            },
                        },
                    },
                    CustomDialog = {"¡¡ THIS SMILE IS LIKE ABMUSH !!", "Hide and don't Smile", "Don't get Tricked"}, -- Custom death message (can be as long as you want)
                })

                -----[[ Advanced ]]-----
                entity.Debug.OnEntitySpawned = function()

                end

                entity.Debug.OnEntityDespawned = function()
                    if getgenv().death == false then

                        
                        AchievementsGet(Smiles)
                    end
                    entity.Debug.OnEntityStartMoving = function()

                    end

                    entity.Debug.OnEntityFinishedRebound = function()

                    end

                    entity.Debug.OnDeath = function()
                        getgenv().death = true
                        
                        AchievementsGet(SmilesDie)
                    end
                    ------------------------

                    -- Run the created entity
                    Creator.runEntity(entity)
                end
    end
end

    function VhsSansSpawn()
        while true do wait(200)
            pcall(function()
                local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

                -- Create entity
                local entity2 = Creator.createEntity({
                    CustomName = "Vhs!Sans", -- Custom name of your entity
                    Model = "11508694248", -- Can be GitHub file or rbxassetid
                    Speed = 21, -- Percentage, 100 = default Rush speed
                    DelayTime = 3, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = true,
                    KillRange = 120,
                    BreakLights = true,
                    BackwardsMovement = false,
                    FlickerLights = {
                        true, -- Enabled/Disabled
                        1, -- Time (seconds)
                    },
                    Cycles = {
                        Min = 1,
                        Max = 1,
                        WaitTime = 3,
                    },
                    CamShake = {
                        true, -- Enabled/Disabled
                        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                        100, -- Shake start distance (from Entity to you)
                    },
                    Jumpscare = {
                        false, -- Enabled/Disabled
                        {
                            Image1 = "rbxassetid://10483855823", -- Image1 url
                            Image2 = "rbxassetid://10483999903", -- Image2 url
                            Shake = true,
                            Sound1 = {
                                10483790459, -- SoundId
                                { Volume = 0.5 }, -- Sound properties
                            },
                            Sound2 = {
                                10483837590, -- SoundId
                                { Volume = 0.5 }, -- Sound properties
                            },
                            Flashing = {
                                true, -- Enabled/Disabled
                                Color3.fromRGB(255, 255, 255), -- Color
                            },
                            Tease = {
                                true, -- Enabled/Disabled
                                Min = 1,
                                Max = 1,
                            },
                        },
                    },
                    CustomDialog = {"You died to who you call vhs!sans...", "Try your best to out-run him.", "I really don't have nothing else", "Just try your best to run and Hide when you can."}, -- Custom death message
                })

                ------------------------
                Creator.runEntity(entity2)
                -- Run the created entity
            end)
        end
    end

    local function ZoO()
        repeat
            task.wait()
        until game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets:FindFirstChild("Wardrobe")
        -- tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(1), {Contrast = 0.45}):Play()
        local ZoO = Creator.createEntity({
            CustomName = "200", -- Custom name of your entity
            Model = "https://github.com/Isth4t/DoorsModels/blob/main/200Moving.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 700, -- Percentage, 100 = default Rush speed
            DelayTime = 10, -- Time before starting cycles (seconds)
            KillRange=20,
            HeightOffset = 0,
            CanKill = true,
            BreakLights = true,
            BackwardsMovement = true,
            FlickerLights = {
                true, -- Enabled
                5, -- Time (seconds)
            },
            Cycles = {
                Min = 4,
                Max = 4,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled ('false' if you don't want jumpscare)
                {
                    Image1 = "rbxassetid://11400868582", -- Image1 url
                    Image2 = "rbxassetid://11400871105", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        530591527, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        530591527, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled
                        Color3.fromRGB(255, 255, 255), -- Color
                    },
                    Tease = {
                        false, -- Enabled ('false' if you don't want tease)
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You died to 200.", "It's very fast.", "Hide when you hear it!"}, -- Custom death message (can be as long as you want)
        })
        Creator.runEntity(ZoO)
    end




    function Baller()
        wait(50)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()  
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        local Baller = Creator.createEntity({
            CustomName = "Baller", -- Custom name of your entity
            Model = 11421844649,
            KillRange=200,
            Speed = 200, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            BreakLights = false,
            FlickerLights = {
                false, -- Enabled
                5, -- Time (seconds)
            },
            Cycles = {
                Min = 12,
                Max = 12,
                WaitTime = 3,
            },
            CamShake = {
                false, -- Enabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                1, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled ('false' if you don't want jumpscare)
                {
                    Image1 = "https://create.roblox.com/marketplace/asset/11151804229/baller?pageNumber=1&pagePosition=18&keyword=", -- Image1 url
                    Image2 = "https://create.roblox.com/marketplace/asset/11151804229/baller?pageNumber=1&pagePosition=18&keyword=", -- Image2 url
                    Shake = false,
                    Sound1 = { 
                        11400679305, -- SoundId
                        { Volume = 1 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0 }, -- Sound properties
                    },
                    Flashing = {
                        false, -- Enabled
                        Color3.fromRGB(70, 25, 0), -- Color
                    },
                    Tease = {
                        false, -- Enabled ('false' if you don't want tease)
                        Min = 1,
                        Max = 1,
                    },
                },
            },
        })

        ------------------------

        -- Run the created entity
        Creator.runEntity(Baller)

    end

    caa2=10

    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
        getgenv().death = true
    end)
    workspace.ChildAdded:Connect(function(inst)
        wait(1)
        if inst.Name == "RushMoving" then
            BoolValue = Instance.new("BoolValue")
            BoolValue.Name = "Nightmare"
            BoolValue.Parent = inst
            inst.RushNew.Attachment.ParticleEmitter.Texture = "http://www.roblox.com/asset/?id=10888024887"
            inst.RushNew.Attachment.ParticleEmitter.Brightness = 10
            repeat task.wait()

            until not inst:FindFirstChild("RushNew")

            if getgenv().death == false then


                AchievementsGet(NightmareRush)

            end
            a =game:GetService("ReplicatedStorage").GameData.LatestRoom.Value-1
            b=a+5
            repeat  task.wait()

            until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value >= b
    local BallerPas = coroutine.wrap(Baller)
            BallerPas()

        elseif inst.name == "AmbushMoving" then
            BoolValue = Instance.new("BoolValue")
            BoolValue.Name = "Nightmare"
            BoolValue.Parent = inst
            inst.RushNew.Attachment.ParticleEmitter.Texture = "https://create.roblox.com/marketplace/asset/10826375579/Nightmare-ambush-png-doors"
            inst.RushNew.Attachment.ParticleEmitter.Brightness = 10
            repeat task.wait()

            until not inst:FindFirstChild("RushNew")

            if getgenv().death == false then
                AchievementsGet(NightmareAmbush)
            end
            a =game:GetService("ReplicatedStorage").GameData.LatestRoom.Value-1
            b=a+2
            repeat  task.wait()

            until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value >= b
            ZoO()
            BallerPas()

        end
    end)


    i1=3 
    i2=5
    i3=2















    Be=false
    function TraumaSpawn()
        while true do 
        
            wait(100)
            local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

            -- Create entity
            local Trauma = Creator.createEntity({
                CustomName = "Trauma", -- Custom name of your entity
                Model = "11546178972", -- Can be GitHub file or rbxassetid
                Speed = 600, -- Percentage, 100 = default Rush speed
                DelayTime = 3, -- Time before starting cycles (seconds)
                HeightOffset = 0,
                CanKill = true,
                KillRange = 50,
                BreakLights = true,
                BackwardsMovement = true,
                FlickerLights = {
                    true, -- Enabled/Disabled
                    5, -- Time (seconds)
                },
                Cycles = {
                    Min = 1,
                    Max = 1,
                    WaitTime = 2,
                },
                CamShake = {
                    true, -- Enabled/Disabled
                    {5.5, 50, 0.5, 2}, -- Shake values (don't change if you don't know)
                    100, -- Shake start distance (from Entity to you)
                },
                Jumpscare = {
                    true, -- Enabled/Disabled
                    {
                        Image1 = "nil", -- Image1 url
                        Image2 = "rbxassetid://11278624160", -- Image2 url
                        Shake = true,
                        Sound1 = {
                            10483790459, -- SoundId
                            { Volume = 0 }, -- Sound properties
                        },
                        Sound2 = {
                            10483837590, -- SoundId
                            { Volume = 1000 }, -- Sound properties
                        },
                        Flashing = {
                            true, -- Enabled/Disabled
                            Color3.fromRGB(255, 255, 255), -- Color
                        },
                        Tease = {
                            true, -- Enabled/Disabled
                            Min = 1,
                            Max = 3,
                        },
                    },
                },
                CustomDialog = {"You died to Trauma...", "Use what you've learned from Rush and Ambush!","This Mob Randomly Spawns Theres No Patten to it"}, -- Custom death message
            })

            -----[[ Advanced ]]-----
            ------------------------

            -- Run the created entity
            Creator.runEntity(Trauma)
        end
    end


























pcall(function()
local DepthPas = coroutine.wrap(Depth)
DepthPas()
end)
pcall(function()
    local TraumaPas = coroutine.wrap(TraumaSpawn)   
    TraumaPas()
end)
pcall(function()
local SmilerPas = coroutine.wrap(SmilerSpawn)
SmilerPas()
end)
pcall(function()
local VhsSansPas = coroutine.wrap(VhsSansSpawn)
VhsSansPas()
end)
