#> Kill MVP
execute as @a[team=!Lobby,team=!Spectator,scores={MVPkill=1..}] run scoreboard players operation @s CmdData = @s MVPkill
function game:mvpstats/pogger_calculation
execute as @a[team=!Lobby,team=!Spectator,scores={CmdData=0}] run tag @s add KillMVP
scoreboard players reset @a CmdData

#> Death MVP
execute as @a[team=!Lobby,team=!Spectator,scores={MVPdeath=1..}] run scoreboard players operation @s CmdData = @s MVPdeath
function game:mvpstats/pogger_calculation
execute as @a[team=!Lobby,team=!Spectator,scores={CmdData=0}] run tag @s add DeathMVP
scoreboard players reset @a CmdData

#> Cannon MVP
execute as @a[team=!Lobby,team=!Spectator,scores={MVPkill=1..}] run scoreboard players operation @s CmdData = @s MVPcannon
function game:mvpstats/pogger_calculation
execute as @a[team=!Lobby,team=!Spectator,scores={CmdData=0}] run tag @s add CannonMVP
scoreboard players reset @a CmdData

function game:mvpstats/announce

scoreboard players reset @a MVPkill
scoreboard players reset @a MVPdeath
scoreboard players reset @a MVPcannon