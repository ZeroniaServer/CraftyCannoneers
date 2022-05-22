#> Forceloads
forceload add -17 63 -112 -64
forceload add 11 89 129 -89

#> Gamerules
gamerule mobGriefing true
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule naturalRegeneration false
execute unless score $gamestate CmdData matches 2 run gamerule fallDamage false

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
scoreboard objectives add playerUUID dummy
scoreboard objectives add arrowtime dummy
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add LeftGame minecraft.custom:minecraft.leave_game
scoreboard objectives add rockID dummy
scoreboard objectives add rockOwner dummy
scoreboard objectives add spotting dummy

#> Bossbars
bossbar add lobbybar "Lobbybar"
bossbar add purpleshiphp ""
bossbar add orangeship ""

bossbar set lobbybar name {"text":"Please confirm game settings at the Settings Map!","color":"blue","bold":true}
bossbar set lobbybar max 1
bossbar set lobbybar value 1
bossbar set lobbybar color blue

#> Teams
team add Lobby
team add Orange
team add Purple
team add Spectator
team add NoName
team modify Lobby color blue
team modify Orange color gold
team modify Purple color dark_purple
team modify Spectator color gray
team modify Lobby friendlyFire false
team modify Orange friendlyFire false
team modify Purple friendlyFire false
team modify Spectator friendlyFire false
team modify Lobby collisionRule never
team modify Purple collisionRule never
team modify Orange collisionRule never
team modify Spectator collisionRule never
team modify NoName collisionRule never
team modify NoName nametagVisibility never
#> Static scores
scoreboard players set $10 CmdData 10
scoreboard players set $1200 CmdData 1200
scoreboard players set $20 CmdData 20
scoreboard players set $2 CmdData 2
scoreboard players set $60 CmdData 60

scoreboard players set $MaxTeamSize CmdData 5