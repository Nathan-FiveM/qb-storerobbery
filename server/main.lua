

QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-storerobbery:server:takeMoney', function(register, isDone)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	-- Add some stuff if you want, this here above the if statement will trigger every 2 seconds of the animation when robbing a cash register.
    if isDone then
        luck = math.random(1, 100)
        bags = math.random(Config.RegisterItemMin, Config.RegisterItemMax)
        minEarn = Config.RegisterCashMin
        maxEarn = Config.RegisterCashMax
        if Config.PSBuffs then
            if exports["ps-buffs"]:HasBuff(Player.PlayerData.citizenid, "luck") then
                luck = math.random(1, 50)
                bags = math.random(Config.RegisterLuckyItemMin, Config.RegisterLuckyItemMax)
                minEarn = Config.RegisterLuckyCashMin
                maxEarn = Config.RegisterLuckyCashMax
            end
        end
    if Config.RegisterCash then
        if luck >= 50 then
            RegisterEarnings = math.random(minEarn, maxEarn)
            Player.Functions.AddMoney('cash', RegisterEarnings)
        end
    end
    Player.Functions.AddItem(Config.RegisterItem, bags, false)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RegisterItem], "add")
        if math.random(1, 100) <= Config.SafeCrackerChance then
            -- Give Special Item (Safe Cracker)
            Player.Functions.AddItem("safecracker", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["safecracker"], 'add')
        end
    end
end)

RegisterServerEvent('qb-storerobbery:server:setRegisterStatus', function(register)
    Config.Registers[register].robbed   = true
    Config.Registers[register].time     = Config.resetTime
    TriggerClientEvent('qb-storerobbery:client:setRegisterStatus', -1, register, Config.Registers[register])
end)

RegisterServerEvent('qb-storerobbery:server:setSafeStatus', function(safe)
    TriggerClientEvent('qb-storerobbery:client:setSafeStatus', -1, safe, true)
    Config.Safes[safe].robbed = true

    SetTimeout(math.random(40, 80) * (60 * 1000), function()
        TriggerClientEvent('qb-storerobbery:client:setSafeStatus', -1, safe, false)
        Config.Safes[safe].robbed = false
    end)
end)

RegisterServerEvent('qb-storerobbery:server:SafeReward', function(safe)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    ScashA = Config.SafeItemMinWorth
    ScashB = Config.SafeItemMaxWorth
	bags = math.random(Config.SafeItemMin,Config.SafeItemMax)
    if Config.LuckySafeItems then
        luck = math.random(1, 100)
        Sitem1 = Config.Item1Amount
        Sitem2 = Config.Item2Amount
    end
    if Config.PSBuffs then
        if exports["ps-buffs"]:HasBuff(Player.PlayerData.citizenid, "luck") then
            luck = math.random(1, 50)
            bags = math.random(Config.SafeLuckyItemMin, Config.SafeLuckyItemMax)
            ScashA = Config.SafeLuckyItemMinWorth
            ScashB = Config.SafeLuckyItemMaxWorth
            Sitem1 = Config.LuckyItem1Amount
            Sitem2 = Config.LuckyItem2Amount
        end
    end
	local info = {
		worth = math.random(ScashA, ScashB)
	}
	Player.Functions.AddItem(Config.SafeItem, bags, false, info)
    TriggerEvent('qb-log:server:CreateLog', 'storerobbery', 'Store Robbery', 'green', '**Marked Bills**:\n'..bags..'\n**Person**:\n'..GetPlayerName(src)..'\n**Citizen ID**:\n'..Player.PlayerData.citizenid)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.SafeItem], "add")
    if Config.LuckySafeItems then
        local odd = math.random(1, 100)
        if luck <= 10 then
                Player.Functions.AddItem(Config.LuckySafeItem1, Sitem1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.LuckySafeItem1], "add")
            if luck == odd then
                Wait(500)
                Player.Functions.AddItem(Config.LuckySafeItem2, Sitem2)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.LuckySafeItem2], "add")
            end
        end
    end
end)

CreateThread(function()
    while true do
        local toSend = {}
        for k, v in ipairs(Config.Registers) do

            if Config.Registers[k].time > 0 and (Config.Registers[k].time - Config.tickInterval) >= 0 then
                Config.Registers[k].time = Config.Registers[k].time - Config.tickInterval
            else
                if Config.Registers[k].robbed then
                    Config.Registers[k].time = 0
                    Config.Registers[k].robbed = false

                    table.insert(toSend, Config.Registers[k])
                end
            end
        end

        if #toSend > 0 then
            --The false on the end of this is redundant
            TriggerClientEvent('qb-storerobbery:client:setRegisterStatus', -1, toSend, false)
        end

        Wait(Config.tickInterval)
    end
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getRegisterStatus', function(source, cb)
    cb(Config.Registers)
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getSafeStatus', function(source, cb)
    cb(Config.Safes)
end)

RegisterServerEvent('qb-storerobbery:server:CheckItem', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local ItemData = Player.Functions.GetItemByName("safecracker")
    if ItemData ~= nil then
        TriggerClientEvent('qb-storerobbery:client:hacksafe', source)
    else
        TriggerClientEvent('QBCore:Notify', source, "You appear to be missing something?")
    end
end)

RegisterServerEvent('qb-storerobbery:removecracker', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local ItemData = Player.Functions.RemoveItem("safecracker", 1)
    if ItemData then
        TriggerClientEvent('qb-storerobbery:client:hackthesafe', source)
    else
        TriggerClientEvent('QBCore:Notify', source, "You appear to be missing something?")
    end
end)

RegisterServerEvent('qb-storerobbery:server:callCops', function(type, safe, streetLabel, coords)
    local cameraId = 4
    if type == "safe" then
        cameraId = Config.Safes[safe].camId
    else
        cameraId = Config.Registers[safe].camId
    end
    TriggerClientEvent("dispatch:storerobbery", -1, coords, cameraId) -- Project Sloth Dispatch

    -- // QB PHONE PD ALERT \\ --
    local alertData = {
        title = "10-90 | Shop Robbery",
        coords = {x = coords.x, y = coords.y, z = coords.z},
        description = "Someone Is Trying To Rob A Store At "..streetLabel.." (CAMERA ID: "..cameraId..")"
    }
    TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, alertData)
    
end)