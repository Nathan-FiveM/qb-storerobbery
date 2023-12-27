Config = {}

Config.MinimumStoreRobberyPolice = 1

Config.PSBuffs = true
Config.RegisterItem = "rolls"
Config.RegisterItemMin = 35
Config.RegisterItemMax = 75
Config.RegisterLuckyItemMin = 45
Config.RegisterLuckyItemMax = 75
Config.RegisterCash = true -- Gives the robber a small amount of cash
Config.RegisterCashMin = 100
Config.RegisterCashMax = 200
Config.RegisterLuckyCashMin = 150
Config.RegisterLuckyCashMax = 300
Config.SafeCrackerChance = 10 -- 10/100 Chance of getting a safecracker
Config.MinLockPickTime = 10000 -- 10 Seconds
Config.MaxLockPickTime = 20000 -- 20 Seconds

Config.SafeItem = "markedbills"
Config.SafeItemMin = 1
Config.SafeItemMax = 3
Config.SafeItemMinWorth = 2000
Config.SafeItemMaxWorth = 3500
Config.SafeLuckyItemMin = 2
Config.SafeLuckyItemMax = 4
Config.SafeLuckyItemMinWorth = 2500
Config.SafeLuckyItemMaxWorth = 4000

Config.LuckySafeItems = true
Config.LuckySafeItem1 = "rolex"
Config.Item1Amount = math.random(3,6)
Config.LuckyItem1Amount = math.random(6,12)
Config.LuckySafeItem2 = "goldbar"
Config.Item2Amount = math.random(1,2)
Config.LuckyItem2Amount = math.random(1,4)

Config.OldPSDispatch = false

-- Lockpick System
Config.QBLock = false -- Old System
Config.OXSkill = true -- ox_lib version

Config.Registers = {
    [1] = {vector3(-47.24,-1757.65, 29.53), robbed = false, time = 0, safeKey = 1, camId = 4},
    [2] = {vector3(-48.58,-1759.21, 29.59), robbed = false, time = 0, safeKey = 1, camId = 4},
    [3] = {vector3(-1486.26,-378.0,  40.16), robbed = false, time = 0, safeKey = 2, camId = 5},
    [4] = {vector3(-1222.03,-908.32, 12.32), robbed = false, time = 0, safeKey = 3, camId = 6},
    [5] = {vector3(-706.08, -915.42, 19.21), robbed = false, time = 0, safeKey = 4, camId = 7},
    [6] = {vector3(-706.16, -913.5, 19.21), robbed = false, time = 0, safeKey = 4, camId = 7},
    [7] = {vector3( 24.47, -1344.99, 29.49), robbed = false, time = 0, safeKey = 5, camId = 8},
    [8] = {vector3(24.45, -1347.37, 29.49), robbed = false, time = 0, safeKey = 5, camId = 8},
    [9] = {vector3(1134.15, -982.53, 46.41), robbed = false, time = 0, safeKey = 6, camId = 9},
    [10] = {vector3(1165.05, -324.49, 69.2), robbed = false, time = 0, safeKey = 7, camId = 10},
    [11] = {vector3(1164.7, -322.58, 69.2), robbed = false, time = 0, safeKey = 7, camId = 10},
    [12] = {vector3(373.14, 328.62, 103.56), robbed = false, time = 0, safeKey = 8, camId = 11},
    [13] = {vector3(372.57, 326.42, 103.56), robbed = false, time = 0, safeKey = 8, camId = 11},
    [14] = {vector3(-1818.9, 792.9, 138.08), robbed = false, time = 0, safeKey = 9, camId = 12},
    [15] = {vector3(-1820.17, 794.28, 138.08), robbed = false, time = 0, safeKey = 9, camId = 12},
    [16] = {vector3(-2966.46, 390.89, 15.04), robbed = false, time = 0, safeKey = 10, camId = 13},
    [17] = {vector3(-3041.14, 583.87, 7.9), robbed = false, time = 0, safeKey = 11, camId = 14},
    [18] = {vector3(-3038.92, 584.5, 7.9), robbed = false, time = 0, safeKey = 11, camId = 14},
    [19] = {vector3(-3244.56, 1000.14, 12.83), robbed = false, time = 0, safeKey = 12, camId = 15},
    [20] = {vector3(-3242.24, 999.98, 12.83), robbed = false, time = 0, safeKey = 12, camId = 15},
    [21] = {vector3(549.42, 2669.06, 42.15), robbed = false, time = 0, safeKey = 13, camId = 16},
    [22] = {vector3(549.05, 2671.39, 42.15), robbed = false, time = 0, safeKey = 13, camId = 16},
    [23] = {vector3(1165.9, 2710.81, 38.15), robbed = false, time = 0, safeKey = 14, camId = 17},
    [24] = {vector3(2676.02, 3280.52, 55.24), robbed = false, time = 0, safeKey = 15, camId = 18},
    [25] = {vector3(2678.07, 3279.39, 55.24), robbed = false, time = 0, safeKey = 15, camId = 18},
    [26] = {vector3(1958.96, 3741.98, 32.34), robbed = false, time = 0, safeKey = 16, camId = 19},
    [27] = {vector3(1960.13, 3740.0, 32.34), robbed = false, time = 0, safeKey = 16, camId = 19},
    [28] = {vector3(1728.86, 6417.26, 35.03), robbed = false, time = 0, safeKey = 17, camId = 20},
    [29] = {vector3(1727.85, 6415.14, 35.03), robbed = false, time = 0, safeKey = 17, camId = 20},
    [30] = {vector3(-161.07, 6321.23, 31.5), robbed = false, time = 0, safeKey = 18, camId = 27},
    [31] = {vector3(160.52, 6641.74, 31.6), robbed = false, time = 0, safeKey = 19, camId = 28},
    [32] = {vector3(162.16, 6643.22, 31.6), robbed = false, time = 0, safeKey = 19, camId = 29},
    [33] = {vector3(2555.655, 381.3199, 108.62), robbed = false, time = 0, safeKey = 19, camId = 31},
    [34] = {vector3(2557.440, 381.2325, 108.62), robbed = false, time = 0, safeKey = 19, camId = 31},
}

-- Time until safe opens up
Config.SafeWait = (60 * 1000) * 3

Config.Safes = {
    [1] = {vector4(-43.43, -1748.3, 29.42,  52.5), type = "keypad", robbed = false, camId = 4}, 
    [2] = {vector4(-1478.94, -375.5, 39.16,  229.5), type = "padlock", robbed = false, camId = 5},
    [3] = {vector4(-1220.85, -916.05, 11.32,  229.5), type = "padlock", robbed = false, camId = 6},
    [4] = {vector4(-709.74, -904.15, 19.21, 229.5), type = "keypad", robbed = false, camId = 7},
    [5] = {vector3(31.24777, -1339.28, 29.496), type = "keypad", robbed = false, camId = 8},
    [6] = {vector3(1126.77, -980.1, 45.41), type = "padlock", robbed = false, camId = 9},
    [7] = {vector3(1159.46, -314.05, 69.2), type = "keypad", robbed = false, camId = 10},
    [8] = {vector3(381.0706, 332.5332, 103.56), type = "keypad", robbed = false, camId = 11},
    [9] = {vector3(-1829.27, 798.76, 138.19), type = "keypad", robbed = false, camId = 12},
    [10] = {vector3(-2959.64, 387.08, 14.04), type = "padlock", robbed = false, camId = 13},
    [11] = {vector3(-3048.66, 588.4980, 7.9088), type = "keypad", robbed = false, camId = 14},
    [12] = {vector3(-3249.69, 1007.464, 12.830), type = "keypad", robbed = false, camId = 15},
    [13] = {vector3(543.7808, 2662.557, 42.156), type = "keypad", robbed = false, camId = 16},
    [14] = {vector3(1169.31, 2717.79, 37.15), type = "padlock", robbed = false, camId = 17},
    [15] = {vector3(2674.229, 3289.220, 55.241), type = "keypad", robbed = false, camId = 18},
    [16] = {vector3(1961.861, 3750.246, 32.343), type = "keypad", robbed = false, camId = 19},
    [17] = {vector3(1737.493, 6419.432, 35.037), type = "keypad", robbed = false, camId = 20},
    [18] = {vector3(-168.40, 6318.80, 30.58), type = "padlock", robbed = false, camId = 27},
    [19] = {vector3(168.95, 6644.74, 31.70), type = "keypad", robbed = false, camId = 30},
    [20] = {vector3(2549.458, 387.8457, 108.62), type = "keypad", robbed = false, camId = 31},
}

Config.resetTime = (60 * 1000) * 45
Config.tickInterval = 1000

Config.MaleNoHandshoes = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = true,
    [14] = true,
    [15] = true,
    [18] = true,
    [26] = true,
    [52] = true,
    [53] = true,
    [54] = true,
    [55] = true,
    [56] = true,
    [57] = true,
    [58] = true,
    [59] = true,
    [60] = true,
    [61] = true,
    [62] = true,
    [112] = true,
    [113] = true,
    [114] = true,
    [118] = true,
    [125] = true,
    [132] = true,
}
Config.FemaleNoHandshoes = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = true,
    [14] = true,
    [15] = true,
    [19] = true,
    [59] = true,
    [60] = true,
    [61] = true,
    [62] = true,
    [63] = true,
    [64] = true,
    [65] = true,
    [66] = true,
    [67] = true,
    [68] = true,
    [69] = true,
    [70] = true,
    [71] = true,
    [129] = true,
    [130] = true,
    [131] = true,
    [135] = true,
    [142] = true,
    [149] = true,
    [153] = true,
    [157] = true,
    [161] = true,
    [165] = true,
}