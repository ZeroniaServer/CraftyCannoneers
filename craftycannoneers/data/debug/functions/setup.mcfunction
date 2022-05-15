#> Gamerules
gamerule mobGriefing true
gamerule keepInventory true

#> Scoreboards
scoreboard objectives add RNGscore dummy
scoreboard objectives add RNGmax dummy
scoreboard objectives add drag dummy
scoreboard objectives add gravity dummy
scoreboard objectives add doublehit dummy
scoreboard objectives add CalcAir1 dummy
scoreboard objectives add CalcAir2 dummy
scoreboard objectives add modisigns trigger
scoreboard objectives add moditimer dummy
scoreboard objectives add leavegame trigger
scoreboard objectives add startgame trigger
scoreboard objectives add CannonTutorial dummy
scoreboard objectives add ChestTutorial dummy

#> Bossbars
bossbar add lobbybar "Lobbybar"
bossbar add purpleshiphp "Purple HP"
bossbar add orangeship "Orange HP"

bossbar set lobbybar name {"text":"Please confirm game settings at the Settings Map!","color":"blue","bold":true}
bossbar set lobbybar max 1
bossbar set lobbybar value 1
bossbar set lobbybar color blue

#> Teams
team add Lobby
team add Orange
team add Purple
team modify Lobby color blue
team modify Orange color gold
team modify Purple color dark_purple
team modify Lobby friendlyFire false
team modify Orange friendlyFire false
team modify Purple friendlyFire false

#> Static scores
scoreboard players set $10 CmdData 10
scoreboard players set $1200 CmdData 1200
scoreboard players set $20 CmdData 20
scoreboard players set $2 CmdData 2

scoreboard players set $MaxTeamSize CmdData 5