-- My Custom Script Menu
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My Custom Script", "BloodTheme")

local Tab = Window:NewTab("Main Menu")
local Section = Tab:NewSection("មុខងារលេងហ្គេម")

Section:NewButton("មុខងារទី១ (Auto Farm)", "ចុចដើម្បីដំណើរការ", function()
    print("Auto Farm Working!")
    end)
-- My Custom Script Menu
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My Custom Script", "BloodTheme")

local Tab = Window:NewTab("Main Menu")
local Section = Tab:NewSection("មុខងារពិសេស")

-- មុខងារទី១៖ ប៊ូតុងបិទ/បើក ប្រមូលពងអូតូ (Auto Hatch)
Section:NewToggle("ប្រមូលពងល្អៗអូតូ (Auto Hatch)", "ចុចដើម្បីបើកឱ្យវាទៅយកពងអូតូ", function(state)
    if state then
        print("Auto Hatch Turned ON!")
        -- កូដបញ្ជាឱ្យតួអង្គទាក់ទងនឹងប្រព័ន្ធពងក្នុងហ្គេម
        pcall(function()
            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("Model") and (v.Name:lower():find("egg") or v.Name:lower():find("pet")) then
                    -- អាចទាញយក ឬទាក់ទងនឹងទីតាំងពង
                end
            end
        end)
    else
        print("Auto Hatch Turned OFF!")
    end
end)

-- មុខងារទី២៖ ប៊ូតុងបិទ/បើក រត់លឿនខ្លាំង (Super Speed)
Section:NewToggle("រត់លឿនខ្លាំង (Super Speed)", "ចុចដើម្បីឱ្យតួអង្គរត់លឿនជាងគេ", function(state)
    local player = game:GetService("Players").LocalPlayer
    if state then
        print("Speed Boost Turned ON!")
        pcall(function()
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.WalkSpeed = 150 -- កម្រិតល្បឿនលឿនខ្លាំង (អាចសារ៉េដំឡើងបានតាមចិត្ត)
            end
        end)
    else
        print("Speed Boost Turned OFF!")
        pcall(function()
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.WalkSpeed = 16 -- ល្បឿនធម្មតាវិញពេលបិទ
            end
        end)
    end
end)
    
