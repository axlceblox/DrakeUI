local DrakeUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/DrakeDevi/DrakeDevi/refs/heads/main/DrakeUI.lua"))()

local Window = DrakeUI:CreateWindow({Name = "DrakeUI Test"})
local Main = DrakeUI:CreateTab(Window, {Name = "Main"})

DrakeUI:CreateSection(Main, "Player")

DrakeUI:CreateToggle(Main, {
    Name = "Infinite Jump",
    Callback = function(s) print("Jump:", s) end
})

DrakeUI:CreateSlider(Main, {
    Name = "WalkSpeed",
    Min = 16, Max = 150, Default = 16,
    Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end
})

DrakeUI:CreateButton(Main, {
    Name = "Print FPS",
    Callback = function() DrakeUI:Notify("Current FPS: " .. game:GetService("Workspace"):GetRealTimeResolutionScale(), 3) end
})

DrakeUI:AddFPSCounter()
DrakeUI:Notify("DrakeUI Loaded!", 3)
