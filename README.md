# Possible Skill Menu

Here's a simple Skill Menu which uses ox_lib context menu that allows you to create skills through QB-Core Player Meta Data and display the skills/ reputation through this menu.

## Example Useage:

- Add any meta data (skills) you want into `qb-core/server/player.lua`

PlayerData.metadata['drugrep'] = PlayerData.metadata['drugrep'] or 0 -- Drug Manufacturing

- Add checks for the players meta data (client side example)

if QBCore.Functions.GetPlayerData().metadata['drugrep'] >= 1000 -- If Drug Manufacturing is equal to or greater than 10

- Add 50 XP through export for completion of task

exports['possible-skillmenu']:XP(1, 'drugrep', 50)


You can see how the above was used in the /client/main.lua and the config, to add more simply duplicate both and edit accordingly, I've made this very configurable for ease of use to others.

## Notes
The way I've set this up is that 100xp is 1 level, this doesn't increment for levels, but if required you could always give less xp based off the player level or edit accordingly for your needs with it being open-source.

### Support:
Join my Discord for support and roles.

https://discord.gg/5VU8MA7Tkz

