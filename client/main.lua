local QBCore = exports['qb-core']:GetCoreObject()

local function XP(args, metadata, amount)
	TriggerServerEvent('possible-skillmenu:server:XP', args, metadata, amount)
end exports('XP', XP)

RegisterNetEvent('possible-skillmenu:client:SkillMenu', function()
	local PlayerData = QBCore.Functions.GetPlayerData()
	lib.registerContext({
		id = 'skill_menu',
		title = Config.SkillMenuTitleInner,
		menu = 'skill_reputation_menu',
		options = {
			{
					title = Config.SkillName1,
					description = 'Current Level: ' .. math.floor(PlayerData.metadata[Config.SkillName1Rep] / 100),
					icon = Config.SkillName1Icon,
					iconColor = Config.SkillName1IconColour,
					progress = PlayerData.metadata[Config.SkillName1Rep] % 100 / 100 * 100,
					colorScheme = Config.SkillName1ProgressColour,
					metadata = {
						{ label = Config.SkillName1LabelFirst, value = Config.SkillName1ValueFirst },
						{ label = Config.SkillName1LabelSecond, value = Config.SkillName1ValueSecond},
						{ label = Config.SkillName1LabelThird, value = Config.SkillName1ValueThird}
					}
			},
			{
				title = Config.SkillName2,
				description = 'Current Level: ' .. math.floor(PlayerData.metadata[Config.SkillName2Rep] / 100),
				icon = Config.SkillName2Icon,
				iconColor = Config.SkillName2IconColour,
				progress = PlayerData.metadata[Config.SkillName2Rep] % 100 / 100 * 100,
				colorScheme = Config.SkillName2ProgressColour,
				metadata = {
					{ label = Config.SkillName2LabelFirst, value = Config.SkillName2ValueFirst},
					{ label = Config.SkillName2LabelSecond, value = Config.SkillName2ValueSecond},
					{ label = Config.SkillName2LabelThird, value = Config.SkillName2ValueThird},
			}
			},
			{
				title = Config.SkillName3,
				description = 'Current Level: ' .. math.floor(PlayerData.metadata[Config.SkillName3Rep] / 100),
				icon = Config.SkillName3Icon,
				iconColor = Config.SkillName3IconColour,
				progress = PlayerData.metadata[Config.SkillName3Rep] % 100 / 100 * 100,
				colorScheme = Config.SkillName3ProgressColour,
				metadata = {
					{ label = Config.SkillName3LabelFirst, value = Config.SkillName3ValueFirst },
					{ label = Config.SkillName3LabelSecond, value = Config.SkillName3ValueSecond },
					{ label = Config.SkillName3LabelThird, value = Config.SkillName3ValueThird }
				}
			}
		}
	})

	lib.registerContext({
	id = 'reputation_menu',
	title = Config.JobReputationMenuTitle,
	menu = 'skill_reputation_menu',
	options = {
			{
				title = Config.JobReputationName1,
				description = 'Current Level: ' .. math.floor(PlayerData.metadata[Config.JobReputationName1Rep] / 100),
				icon = Config.JobReputationName1Icon,
				iconColor = Config.JobReputationName1IconColour,
				progress = PlayerData.metadata[Config.JobReputationName1Rep] % 100 / 100 * 100,
				colorScheme = Config.JobReputationName1ProgressColour,
				metadata = {
					{ label = Config.JobReputationName1LabelFirst, value = Config.JobReputationName1ValueFirst }
				}
			},
			{
				title = Config.JobReputationName2,
				description = 'Current Level: '.. math.floor(PlayerData.metadata[Config.JobReputationName2Rep] / 100),
				icon = Config.JobReputationName2Icon,
				iconColor = Config.JobReputationName2IconColour ,
				progress = PlayerData.metadata[Config.JobReputationName2Rep] % 100 / 100 * 100,
				colorScheme = Config.JobReputationName2ProgressColour,
				metadata = {
					{ label = Config.JobReputationName2LabelFirst, value = Config.JobReputationName2ValueFirst }
				}
			},
			{
				title = Config.JobReputationName3,
				description = 'Current Level: '.. math.floor(PlayerData.metadata[Config.JobReputationName3Rep] / 100),
				icon = Config.JobReputationName3Icon,
				iconColor = 'brown',
				progress = PlayerData.metadata[Config.JobReputationName3Rep] % 100 / 100 * 100,
				colorScheme = 'green',
				metadata = {
					{ label = Config.JobReputationName3LabelFirst, value = Config.JobReputationName3ValueFirst }
				}
			}
		}
	})
	lib.showContext('skill_reputation_menu')
end)

lib.registerContext({
	id = 'skill_reputation_menu',
	title = Config.SKillMenuMainTitle,
	options = {
	  {
		title = Config.SkillsMenuTitle,
		description = Config.SkillMenuDescription,
		menu = 'skill_menu',
		icon = Config.SkillMenuIcon,
		iconColor = Config.SkillMenuIconColor
	  },
	  {
		title = Config.ReputationMenuTitle,
		description = Config.ReputationMenuDescription,
		menu = 'reputation_menu',
		icon = Config.ReputationMenuIcon,
		iconColor = Config.ReputationMenuIconColor
	  }
	}
  })
