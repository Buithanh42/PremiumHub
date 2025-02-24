loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "LH-HUB | Cat Piece",
         Animation = "By Huykamado_"
         },
        Key = {
        KeySystem = true,
        Title = "Get Key Or Buy Key?",
        Description = "",
        KeyLink = "",
        Keys = {"CatPiece"},
        Notifi = {
        Notifications = true,
        CorrectKey = "LH-LOADING...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=80896980458454",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
  
-------Tab
     local Tab1o = MakeTab({Name = "Main"})
     
------Toggle

     local accessories = {
    "SantaHat", "CandyCaneHat", "ChristmasAntlers", "SnowmanTopHat",
    "SnowmanTopHatRed", "MegaChristmasHat", "SpecialChristmasHat", "THE2023Cape",
    "EggWings", "BraveHat", "Top10Hat", "FirstToSeaThreeHat",
    "LucyHelmet", "PirateKingCape", "FirstToSeaTwoHat", "BigMomHat",
    "DoflamingoCape", "ShanksCape", "KaidoCape", "KizaruCape",
    "MihawkHat", "KiddCape", "StrawHat", "HistoricalCape",
    "Cat", "PinkCatCape", "BlueCatCape", "BlackCatCape",
    "DaValkyrieHelm", "SerpentValk", "StrongShield", "LawHat",
    "WarpHat", "HunterCape"
}

local toggleEnabled = false -- Biến kiểm soát toggle

local Toggle = AddToggle(Tab1o, {
    Name = "Auto Buy Accessories",
    Default = false,
    Callback = function(state)
        toggleEnabled = state -- Cập nhật trạng thái toggle
        if toggleEnabled then
            -- Nếu toggle bật, chạy code mua phụ kiện
            task.spawn(function()
                for _, accessory in ipairs(accessories) do
                    if not toggleEnabled then break end -- Nếu toggle bị tắt, dừng vòng lặp
                    local args = {
                        [1] = "Buy",
                        [2] = "Geli",
                        [3] = accessory,
                        [4] = 0
                    }
                    game:GetService("ReplicatedStorage").BonusFolderFX.BoughAAccessory:FireServer(unpack(args))
                    wait(0.5) -- Delay để tránh spam request
                end
            end)
        end
    end
})

     local swords = {
    "CandyCane", "Saber", "TripleKatana", "RedKatana", "Kiribachi", "GreenKatana", "BlueKatana", "TimeSword",
    "Guitar", "MoltSword", "CrocoHook", "BlueCandyCane", "BattleAxe", "BattleHammer", "GravitySword", "BlueScythe",
    "RedScythe", "ColdSword", "KamishDagger", "EggSword", "Blaster777", "CatClaw", "Pole", "StickyStaff",
    "SaberV2", "TrueTripleKatana", "GojoSword", "Kikoku", "ChristmasKatana", "ChristmasScythe", "LoveSword",
    "SungSword", "VenomFang", "DualKatana", "Katana", "ONEYEARWORD", "TripleYoru", "Hassaikai", "Napoleon",
    "AceCutlass", "YoruVersion2", "DarkBlade", "Bisento", "FrozenKatana", "FlameSword"
}

local toggleEnabled = false -- Biến kiểm soát toggle

local Toggle = AddToggle(Tab1o, {
    Name = "Auto Buy Swords",
    Default = false,
    Callback = function(state)
        toggleEnabled = state -- Cập nhật trạng thái toggle
        if toggleEnabled then
            -- Nếu toggle bật, chạy code mua kiếm
            task.spawn(function()
                for _, sword in ipairs(swords) do
                    if not toggleEnabled then break end -- Nếu toggle bị tắt, dừng vòng lặp
                    local args = {
                        [1] = "Buy",
                        [2] = sword,
                        [3] = 0
                    }
                    game:GetService("ReplicatedStorage").BonusFolderFX.BoughASword:FireServer(unpack(args))
                    wait(0.5) -- Delay để tránh spam request
                end
                print("Auto lấy toàn bộ kiếm miễn phí hoàn tất!") 
            end)
        end
    end
})