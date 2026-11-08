-- My Custom Script Menu
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My Custom Script", "BloodTheme")

local Tab = Window:NewTab("Main Menu")
local Section = Tab:NewSection("មុខងារលេងហ្គេម")

Section:NewButton("មុខងារទី១ (Auto Farm)", "ចុចដើម្បីដំណើរការ", function()
    print("Auto Farm Working!")
    end)

Section:NewButton("ទិញរបស់ហ្វ្រី (Free Buy)", "ចុចដើម្បីទម្លុះការទិញក្នុងហ្គេម", function()
    -- កូដស្វែងរក និងបញ្ជូនសញ្ញាទៅ RemoteEvent របស់ហ្គេមសម្រាប់ទិញទំនិញ
    pcall(function()
        for _, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
            if v:IsA("RemoteEvent") and (v.Name:lower():find("buy") or v.Name:lower():find("purchase") or v.Name:lower():find("shop") or v.Name:lower():find("item")) then
                v:FireServer()
            end
        end)
    end)
    print("Free Buy Executed!")
end)
    
