-- My Custom Script Menu
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My Custom Script", "BloodTheme")

local Tab = Window:NewTab("Main Menu")
local Section = Tab:NewSection("មុខងារពិសេស")

-- មុខងារទី១៖ ប៊ូតុងប្រមូលពងអូតូ (Auto Hatch) បើក/បិទ
local _G.AutoHatch = false
Section:NewToggle("ប្រមូលពងល្អៗអូតូ (Auto Hatch)", "ចុចដើម្បីបើកឱ្យវាទៅយកពងអូតូ", function(state)
    _G.AutoHatch = state
    task.spawn(function()
        while _G.AutoHatch do
            task.wait(0.5)
            pcall(function()
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("Model") and (v.Name:lower():find("egg") or v.Name:lower():find("pet")) then
                        local lp = game:GetService("Players").LocalPlayer
                        if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") and v.PrimaryPart then
                            lp.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame
                        end
                    end
                end
            end)
        end
    end)
end)

-- មុខងារទី២៖ ប៊ូតុងរត់លឿនខ្លាំង (Super Speed) បើក/បិទ
Section:NewToggle("រត់លឿនខ្លាំង (Super Speed)", "ចុចដើម្បីឱ្យតួអង្គរត់លឿនជាងគេ", function(state)
    local player = game:GetService("Players").LocalPlayer
    pcall(function()
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            if state then
                player.Character.Humanoid.WalkSpeed = 150
            else
                player.Character.Humanoid.WalkSpeed = 16
            end
        end
    end)
end)

    
