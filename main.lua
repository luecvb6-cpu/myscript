-- My Custom Script Menu
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("My Custom Script", "BloodTheme")

local Tab = Window:NewTab("Main Menu")
local Section = Tab:NewSection("មុខងារលេងហ្គេម")

Section:NewButton("មុខងារទី១ (Auto Farm)", "ចុចដើម្បីដំណើរការ", function()
    print("Auto Farm Working!")
    end)

    