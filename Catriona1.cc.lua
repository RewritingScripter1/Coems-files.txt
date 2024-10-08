-- Made by @zeins5 on discord
local introCompleted = false

if game:IsLoaded() then
    local ShowIntro = true

    local TweenService = game:GetService("TweenService")
    local Blur = Instance.new("BlurEffect", game.Lighting)
    local ScreenGui = Instance.new("ScreenGui")
    local TextLabel = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")

    Blur.Size = 0

    if ShowIntro then
        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        -- Configure TextLabel
        TextLabel.Parent = ScreenGui
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.5, 0, 0.4, 0) -- Centered on the screen
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.Size = UDim2.new(0, 675, 0, 120)
        TextLabel.Text = "★Catriona.lua★"
        TextLabel.TextColor3 = Color3.fromRGB(228, 173, 200)
        TextLabel.TextTransparency = 1.000
        TextLabel.TextScaled = true
        TextLabel.Font = Enum.Font.Arcade

        ImageLabel.Parent = ScreenGui
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.Size = UDim2.new(0, 325, 0, 370) -- Original size
        ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0) -- Start position
        ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageLabel.Image = "rbxassetid://8890685159" -- New asset ID
        ImageLabel.ImageTransparency = 1.000

        local tweenStartBlur = TweenService:Create(Blur, TweenInfo.new(0.70), {Size = 24})
        local tweenStartTextTransparency = TweenService:Create(TextLabel, TweenInfo.new(0.70), {TextTransparency = 0})
        local tweenEndTextTransparency = TweenService:Create(TextLabel, TweenInfo.new(0.80), {TextTransparency = 1})
        local tweenStartImageTransparency = TweenService:Create(ImageLabel, TweenInfo.new(0.70), {ImageTransparency = 0})

        local tweenZoomIn = TweenService:Create(ImageLabel, TweenInfo.new(6, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0, 800, 0, 800), -- End size (larger)
            Position = UDim2.new(0.45, 0, 0.4, 0), -- End position (centered)
            ImageTransparency = 1 -- Fade out
        })

        tweenStartBlur:Play()
        tweenStartTextTransparency:Play()

        tweenStartTextTransparency.Completed:Connect(function()
            task.wait(1) 
            tweenEndTextTransparency:Play()
        end)

        tweenEndTextTransparency.Completed:Connect(function()
            tweenStartImageTransparency:Play()
        end)

        tweenStartImageTransparency.Completed:Connect(function()
            -- Play zoom-in and fade-out animation
            tweenZoomIn:Play()
            tweenZoomIn.Completed:Connect(function()
                Blur:Destroy()
                ScreenGui:Destroy()
                introCompleted = true 
            end)
        end)
    else
        introCompleted = true 
    end

    while not introCompleted do
        task.wait(0.1)
    end
end

local function fadeInGui(gui)
    gui.Enabled = true
    gui.ResetOnSpawn = false
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    gui:SetAttribute("Transparency", 1)

    local tweenService = game:GetService("TweenService")
    local tween = tweenService:Create(gui, TweenInfo.new(0.5), { ["Transparency"] = 0 })

    tween:Play()
end

wait(5) 
getgenv().keytoclick = "C"
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Catriona Tool"
tool.Activated:connect(function()
    local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, keytoclick, false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

game.StarterGui:SetCore("SendNotification", {
    Title = "Beta Script";
    Text = "Project Catriona.lua";
    Icon = "rbxassetid://11735787860";

})

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

wait(5)
game.StarterGui:SetCore("SendNotification", {
    Title = "Loading Script";
    Text = "Project Catriona.lua";
    Icon = "rbxassetid://11735787860";

})
       
wait(3) 
game.StarterGui:SetCore("SendNotification", {
    Title = "Loaded Script";
    Text = "Project Catriona.lua";
    Icon = "rbxassetid://11735787860";

})

wait(2)
game.StarterGui:SetCore("SendNotification", {
    Title = "Hello Beta Testers";
    Text = "Project Catriona.lua";
    Icon = "rbxassetid://11735787860";

})

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RewritingScripter1/Files-Of-Script/refs/heads/main/My-Ui-LibraryNew.lua"))()

local Window = Library:CreateWindow("Catriona.cc", Vector2.new(430, 310), Enum.KeyCode.RightShift)

local AimingTab = Window:CreateTab("Main")
local OtherCamlockTab = Window:CreateTab("Other's")
local MiscTab = Window:CreateTab("Misc")
local TeleportTab = Window:CreateTab("★Credits★") 

testSection = TeleportTab = Window:CreateTab("Catriona.cc", "left") 

testSection = TeleportTab = Window:CreateTab("Sarap Mo Ya😏", "right")

local testSection = MiscTab:CreateSector("Misc", "left")

testSection:AddButton(
    "RightClick",
    function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/DHBCommunity/DHBOfficialScript/main/RightClick"))()
    end
)

testSection:AddButton(
    "TpBullet Catriona",
    function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/RewritingScripter1/Files-Of-Script/refs/heads/main/BasicTpbullet.lua"))()
    end
)

testSection:AddButton(
    "Fly guiV1",
    function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/RewritingScripter1/Files-Of-Script/refs/heads/main/Fly-GuiV1.lua"))()
    end
)

testSection:AddButton(
    "Resolver[MadeByMeh]",
    function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/RewritingScripter1/Files-Of-Script/refs/heads/main/SrcResolverShit.lua"))()
    end
)

local testSection = MiscTab:CreateSector("Misc", " right") 

testSection:AddButton("anti-fling", function(IhateGayPeople)
loadstring(game:HttpGet("https://pastebin.com/raw/L5SphSrU"))()
     end) 

testSection:AddButton("Keyboard", function(IhateGayPeople)
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
     end) 

testSection:AddButton("fps boost", function(IhateGayPeople)
local a = tick()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
wait(.1)
sethiddenproperty(game.Lighting, "Technology", 2)
sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
settings().Rendering.QualityLevel = 1
setsimulationradius(0,0)
game.Lighting.GlobalShadows = false
game.Lighting.FogEnd = 9e9
workspace:FindFirstChildOfClass("Terrain").Elasticity = 0
for b, c in pairs(game:GetDescendants()) do
    task.spawn(
        function()
            wait()
            if c:IsA("DataModelMesh") then
                sethiddenproperty(c, "LODX", Enum.LevelOfDetailSetting.Low)
                sethiddenproperty(c, "LODY", Enum.LevelOfDetailSetting.Low)
                c.CollisionFidelity = "Hull"
            elseif c:IsA("UnionOperation") then
                c.CollisionFidelity = "Hull"
            elseif c:IsA("Model") then
                sethiddenproperty(c, "LevelOfDetail", 1)
            elseif c:IsA("BasePart") then
                c.Reflectance = 0
                c.CastShadow = false
            end
        end
    )
end
for d, e in pairs(game.Lighting:GetChildren()) do
    if e:IsA("PostEffect") then
        e.Enabled = false
    end
end
warn("Low graphics loaded! (" .. math.floor(tick() - a) .. "s)")
     end) 

local testSection = AimingTab:CreateSector("camlock", "left")

testSection:AddToggle(
    "Enable",
    false,
    function(first)
        getgenv().Enabled = first
    end
)

testSection:AddDropdown(
    "HitPart",
    {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "Penis"},
    "UpperTorso",
    false,
    function(Option)
        getgenv().RecurringPoint = "Option"
    end
)

testSection:AddTextbox(
    "Cam Prediction",
    7,
    function(State)
        getgenv().PredictionAmount = State
    end
)

testSection:AddToggle(
    "Smooth toggle",
    false,
    function(first)
        getgenv().AimbotStrength = first
    end
)

testSection:AddTextbox(
    "Smoothness",
    0.405,
    function(State)
        getgenv().AimbotStrengthAmount = State
    end
)

testSection:AddTextbox(
    "Radius",
    50,
    function(State)
        getgenv().Radius = State
    end
)

getgenv().RecurringPoint = "UpperTorso"
getgenv().Hitbox = "UpperTorso"
getgenv().Keybind = "c"
getgenv().AimbotStrengthAmount = 0.405
getgenv().PredictionAmount = 10
getgenv().Radius = 50
getgenv().UsePrediction = true
getgenv().AimbotStrength = true
getgenv().FirstPerson = true
getgenv().ThirdPerson = true
getgenv().TeamCheck = false
getgenv().Enabled = false

-- // main script use with silent aim / / -- 

loadstring(game:HttpGet("https://raw.githubusercontent.com/tenaaki/GenericAimbot/main/v1.0.0"))()

--]]
 
--dont mess with he settings unless u know what ur doing
 
local Settings = {
    rewrittenmain = {
        Enabled = true,
        Key = "c",
        DOT = true,
        AIRSHOT = true,
        NOTIF = true, 
        AUTOPRED = true, 
        FOV = math.huge,
        RESOLVER = false 
    }
}

local testSection = AimingTab:CreateSector("Aimlock", "Right")

testSection:AddToggle(
    "Enabled",
    Settings.rewrittenmain.Enabled,
    function(State)
        Settings.rewrittenmain.Enabled = State
    end
)

testSection:AddTextbox(
    "Prediction",
    0.135,
    function(State)
        getgenv().Prediction = State
    end
)

testSection:AddTextbox(
    "Key",
    Settings.rewrittenmain.Key,
    function(State)
        Settings.rewrittenmain.Key = State
    end
)

testSection:AddToggle(
    "Dot",
    Settings.rewrittenmain.DOT,
    function(State)
        Settings.rewrittenmain.DOT = State
    end
)

testSection:AddToggle(
    "Airshot",
    Settings.rewrittenmain.AIRSHOT,
    function(State)
        Settings.rewrittenmain.AIRSHOT = State
    end
)

testSection:AddToggle(
    "Notification",
    Settings.rewrittenmain.NOTIF,
    function(State)
        Settings.rewrittenmain.NOTIF = State
    end
)

testSection:AddToggle(
    "Auto Prediction",
    Settings.rewrittenmain.AUTOPRED,
    function(State)
        Settings.rewrittenmain.AUTOPRED = State
    end
)

testSection:AddToggle(
    "Resolver",
    Settings.rewrittenmain.RESOLVER,
    function(State)
        Settings.rewrittenmain.RESOLVER = State
    end
)

local testSection = AimingTab:CreateSector("Orbit", "left") 

testSection:AddToggle(
    "Enabled",
    false,
    function(first)
        Settings.rewrittenmain.TargetStrafe = first
    end
)

testSection:AddTextbox(
    "Distance",
    nil,
    function(State)
        Settings.rewrittenmain.StrafeRadius = State
    end
)

testSection:AddTextbox(
    "Height",
    nil,
    function(State)
        Settings.rewrittenmain.StrafeHeight = State
    end
)

testSection:AddTextbox(
    "Speed",
    nil,
    function(State)
        Settings.rewrittenmain.StrafeSpeed = State
    end
)
 
local SelectedPart = "UpperTorso"                              
local Prediction = true
local PredictionValue = 0.24                            
 
 
    local AnchorCount = 0
    local MaxAnchor = 50
 
    local CC = game:GetService"Workspace".CurrentCamera
    local Plr;
    local enabled = false
    local accomidationfactor = 0.12348
    local mouse = game.Players.LocalPlayer:GetMouse()
    local placemarker = Instance.new("Part", game.Workspace)
 
    function makemarker(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "PP"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = Settings.rewrittenmain.DOT
        local a = Instance.new("Frame", e)
        if Settings.rewrittenmain.DOT == true then
        a.Size = UDim2.new(2, 2, 2)
        else
        a.Size = UDim2.new(0, 0, 0, 0)
        end
        if Settings.rewrittenmain.DOT == true then
        a.Transparency = 0
        a.BackgroundTransparency = 0
        else
        a.Transparency = 1
        a.BackgroundTransparency = 1
        end
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        if Settings.rewrittenmain.DOT == false then
        g.CornerRadius = UDim.new(0, 0)
        else
        g.CornerRadius = UDim.new(1, 1)
        end
        return(e)
    end
 
 
    local data = game.Players:GetPlayers()
    function noob(player)
        local character
        repeat wait() until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(68, 214, 44), 0.3, 3)
        handler.Name = player.Name
        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
 
 
        spawn(function()                                    
            while wait() do                                     
                if player.Character then                                    
                end                                    
            end                                     
        end)                                    
    end                                    
 
    for i = 1, #data do
        if data[i] ~= game.Players.LocalPlayer then
            noob(data[i])
        end
    end
 
    game.Players.PlayerAdded:connect(function(Player)
        noob(Player)
    end)
 
    spawn(function()
        placemarker.Anchored = true
        placemarker.CanCollide = false
        if Settings.rewrittenmain.DOT == true then
        placemarker.Size = Vector3.new(6, 6, 6)
        else
        placemarker.Size = Vector3.new(0, 0, 0)
        end
        placemarker.Transparency = 1
        if Settings.rewrittenmain.DOT then
        makemarker(placemarker, placemarker, Color3.fromRGB(68, 214, 44), 0.40, 0)
        end
    end)
 
    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
        if k == Settings.rewrittenmain.Key and Settings.rewrittenmain.Enabled then
            if enabled == true then
                enabled = false
                if Settings.rewrittenmain.NOTIF == true then
                    Plr = getClosestPlayerToCursor()
                game.StarterGui:SetCore("SendNotification", {
						Title = "Lock Notification",
						Text = "Unlocked",
						Icon = "",
						Duration = 1,
})
            end
            else
                Plr = getClosestPlayerToCursor()
                enabled = true
                if Settings.rewrittenmain.NOTIF == true then
 
                    game.StarterGui:SetCore("SendNotification", {
						Title = "Lock Notification",
						Text = "Locked On :"..tostring(Plr.Name); 
						Icon = "",
						Duration = 1,
})
 
                end
            end
        end
    end)
 
 
 
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = Settings.rewrittenmain.FOV
 
        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end
 
    local pingvalue = nil;
    local split = nil;
    local ping = nil;
 
    game:GetService"RunService".Stepped:connect(function()
        if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
            placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
        else
            placemarker.CFrame = CFrame.new(0, 9999, 0)
        end
        if Settings.rewrittenmain.AUTOPRED == true then
             pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
             split = string.split(pingvalue,'(')
             ping = tonumber(split[1])
            if ping < 130 then
                PredictionValue = 0.151
            elseif ping < 125 then
                PredictionValue = 0.149
            elseif ping < 110 then
                PredictionValue = 0.146
            elseif ping < 105 then
                PredictionValue = 0.138
            elseif ping < 90 then
                PredictionValue = 0.136
            elseif ping < 80 then
                PredictionValue = 0.134
            elseif ping < 70 then
                PredictionValue = 0.131
            elseif ping < 60 then
                PredictionValue = 0.1229
            elseif ping < 50 then
                PredictionValue = 0.1225
            elseif ping < 40 then
                PredictionValue = 0.1256
            end
        end
    end)
 
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.rewrittenmain.Enabled and Plr.Character ~= nil then
 
            -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
            --[[
            if Settings.rewrittenmain.AIRSHOT == true then
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
 
                    --// Airshot
                    args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
                else
                    args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
                end
            else
                    args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
            end
            ]]
            if Prediction == true then
 
            args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
 
            else
 
            args[3] = Plr.Character[SelectedPart].Position
 
            end
 
            return old(unpack(args))
        end
        return old(...)
    end)
 
    game:GetService("RunService").RenderStepped:Connect(function()
        if Settings.rewrittenmain.RESOVLER == true and Plr.Character ~= nil and enabled and Settings.rewrittenmain.Enabled then
        if Settings.rewrittenmain.AIRSHOT == true and enabled and Plr.Character ~= nil then
 
            if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
 
                --// Airshot
 
                --// Anchor Check
 
                if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                    AnchorCount = AnchorCount + 1
                    if AnchorCount >= MaxAnchor then
                        Prediction = false
                        wait(2)
                        AnchorCount = 0;
                    end
                else
                    Prediction = true
                    AnchorCount = 0;
                end
 
                SelectedPart = "HumanoidRootPart"
 
            else
                --// Anchor Check
 
                if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                    AnchorCount = AnchorCount + 1
                    if AnchorCount >= MaxAnchor then
                        Prediction = false
                        wait(2)
                        AnchorCount = 0;
                    end
                else
                    Prediction = true
                    AnchorCount = 0;
                end
 
                SelectedPart = "HumanoidRootPart"
 
            end
            else
 
                --// Anchor Check
 
                if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
                    AnchorCount = AnchorCount + 1
                    if AnchorCount >= MaxAnchor then
                        Prediction = false
                        wait(2)
                        AnchorCount = 0;
                    end
                else
                    Prediction = true
                    AnchorCount = 0;
                end
 
                SelectedPart = "HumanoidRootPart"
            end
 
        else
                SelectedPart = "HumanoidRootPart"
        end
    end)
    
    game:GetService("RunService").Stepped:connect(
    function()
if Settings.rewrittenmain.TargetStrafe == true and enabled then
            local lp = game.Players.LocalPlayer.Character

            local targpos = Plr.Character.HumanoidRootPart.Position

            lp:SetPrimaryPartCFrame(
                CFrame.new(
                    targpos +
                        Vector3.new(
                            math.cos(tick() * Settings.rewrittenmain.StrafeSpeed) * Settings.rewrittenmain.StrafeRadius,
                            Settings.rewrittenmain.StrafeHeight,
                            math.sin(tick() * Settings.rewrittenmain.StrafeSpeed) * Settings.rewrittenmain.StrafeRadius
                        )
                )
            )

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                Vector3.new(targpos.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y, targpos.Z)
            )

            game:GetService("Players").LocalPlayer.Character.Humanoid.AutoRotate = false
        else
            game:GetService("Players").LocalPlayer.Character.Humanoid.AutoRotate = true
        end
    end
)
 
--the TargetLock
 
getgenv().Prediction = 0.143105125985120958176	
getgenv().AimPart = "UpperTorso"	
getgenv().Key = "Q"	
getgenv().DisableKey = "P"	
 
getgenv().FOV = true	
getgenv().ShowFOV = false	
getgenv().FOVSize = 55	
 
--// Variables (Service)	
 
local Players = game:GetService("Players")	
local RS = game:GetService("RunService")	
local WS = game:GetService("Workspace")	
local GS = game:GetService("GuiService")	
local SG = game:GetService("StarterGui")	
 
--// Variables (regular)	
 
local LP = Players.LocalPlayer	
local Mouse = LP:GetMouse()	
local Camera = WS.CurrentCamera	
local GetGuiInset = GS.GetGuiInset	
 
local AimlockState = true	
local Locked	
local Victim	
 
local SelectedKey = getgenv().Key	
local SelectedDisableKey = getgenv().DisableKey	
 
--// Check if aimlock is loaded	
 
if getgenv().Loaded == true then	
    Notify("Aimlock is already loaded!")	
    return	
end	
 
getgenv().Loaded = true	
 
--// FOV Circle	
 
local fov = Drawing.new("Circle")	
fov.Filled = false	
fov.Transparency = 1	
fov.Thickness = 1	
fov.Color = Color3.fromRGB(255, 255, 0)	
fov.NumSides = 1000	
 
--// Functions	
 
function update()	
    if getgenv().FOV == true then	
        if fov then	
fov.Radius = getgenv().FOVSize * 2	
            fov.Visible = getgenv().ShowFOV	
fov.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GS).Y)	
 
            return fov	
        end	
    end	
end	
 
function WTVP(arg)	
    return Camera:WorldToViewportPoint(arg)	
end	
 
function WTSP(arg)	
    return Camera.WorldToScreenPoint(Camera, arg)	
end	
 
function getClosest()	
    local closestPlayer	
    local shortestDistance = math.huge	
 
    for i, v in pairs(game.Players:GetPlayers()) do	
        local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true	
        local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil	
 
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(getgenv().AimPart) and notKO and notGrabbed then	
            local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)	
local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude	
 
            if (getgenv().FOV) then	
                if (fov.Radius > magnitude and magnitude < shortestDistance) then	
                    closestPlayer = v	
                    shortestDistance = magnitude	
                end	
            else	
                if (magnitude < shortestDistance) then	
                    closestPlayer = v	
                    shortestDistance = magnitude	
                end	
            end	
        end	
    end	
    return closestPlayer	
end	
 
--// Checks if key is down	
 
Mouse.KeyDown:Connect(function(k)	
    SelectedKey = SelectedKey:lower()	
    SelectedDisableKey = SelectedDisableKey:lower()	
    if k == SelectedKey then	
        if AimlockState == true then	
            Locked = not Locked	
            if Locked then	
                Victim = getClosest()	
 
                Notify("Locked onto: "..tostring(Victim.Character.Humanoid.DisplayName))	
            else	
                if Victim ~= nil then	
                    Victim = nil	
 
                    Notify("Unlocked!")	
                end	
            end	
        else	
            Notify("Aimlock is not enabled!")	
        end	
    end	
    if k == SelectedDisableKey then	
        AimlockState = not AimlockState	
    end	
end)	
 
--// Loop update FOV and loop camera lock onto target	
 
RS.RenderStepped:Connect(function()	
    update()	
    if AimlockState == true then	
        if Victim ~= nil then	
            Camera.CFrame = CFrame.new(Camera.CFrame.p, Victim.Character[getgenv().AimPart].Position + Victim.Character[getgenv().AimPart].Velocity*getgenv().Prediction)	
        end	
    end	
end)	
	while wait() do
        if getgenv().AutoPrediction == true then	
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()	
        local split = string.split(pingvalue,'(')	
local ping = tonumber(split[1])	
if ping < 225 then	
getgenv().Prediction = 1.4	
elseif ping < 215 then	
getgenv().Prediction = 0.24
	elseif ping < 205 then
getgenv().Prediction = 0.209
	elseif ping < 190 then
getgenv().Prediction = 0.18474
elseif ping < 180 then	
getgenv().Prediction = 0.177
	elseif ping < 170 then
getgenv().Prediction = 0.174
	elseif ping < 160 then
getgenv().Prediction = 0.17
	elseif ping < 150 then
getgenv().Prediction = 0.165
elseif ping < 140 then	
getgenv().Prediction = 0.165
elseif ping < 130 then	
getgenv().Prediction = 0.165
elseif ping < 120 then	
getgenv().Prediction = 0.155
elseif ping < 110 then	
getgenv().Prediction = 0.155
elseif ping < 105 then	
getgenv().Prediction = 0.149533
elseif ping < 90 then	
getgenv().Prediction = 0.146373
elseif ping < 80 then	
getgenv().Prediction = 0.14211
elseif ping < 70 then	
getgenv().Prediction = 0.136354
elseif ping < 60 then	
getgenv().Prediction = 0.1343
elseif ping < 50 then	
getgenv().Prediction = 0.12846
elseif ping < 40 then	
getgenv().Prediction = 0.126
elseif ping < 30 then	
getgenv().Prediction = 0.12
elseif ping < 20 then	
getgenv().Prediction = 0.11
        end	
        end	
	end 