local QBCore = exports['qb-core']:GetCoreObject()
-- local pData = QBCore.Functions.GetPlayerData()

QBCore.Commands.Add(Config.SkillMenuCommand, Config.SkillMenuCommandDescription, {}, true, function(source, args)
    TriggerClientEvent('possible-skillmenu:client:SkillMenu', source)
end)

RegisterServerEvent('possible-skillmenu:sv:XP', function(args, metadata, amount)
    local pData = QBCore.Functions.GetPlayer(source)
    local currentxp = pData.PlayerData.metadata[metadata]
    local args = tonumber(args)
    if args == 1 then
        pData.Functions.SetMetaData(metadata, (currentxp+amount))
    elseif args == 2 then
	if currentxp < 1 then
	    amount = 0		
            pData.Functions.SetMetaData(metadata, (currentxp-amount))
	end			
    end
end)