local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add(Config.SkillMenuCommand, Config.SkillMenuCommandDescription, {}, true, function(source, args)
    TriggerClientEvent('possible-skillmenu:client:SkillMenu', source)
end)

RegisterServerEvent('possible-skillmenu:server:XP', function(args, metadata, amount)
    local PlayerData = QBCore.Functions.GetPlayer(source)
    local currentxp = PlayerData.PlayerData.metadata[metadata]
    local args = tonumber(args)
    if args == 1 then
        PlayerData.Functions.SetMetaData(metadata, (currentxp+amount))
    elseif args == 2 then
	if currentxp < 1 then
	    amount = 0		
            PlayerData.Functions.SetMetaData(metadata, (currentxp-amount))
	end			
    end
end)