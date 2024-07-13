#> MVP stats are locked in at the end of the game
execute if score $gamestate CmdData matches 3 run return 0

tag @a remove KillMVP
tag @a remove DeathMVP
tag @a remove DamageMVP
tag @a remove CannonMVP

#> Kill MVP
scoreboard players set $max MVPkill 0
scoreboard players operation $max MVPkill > @a[team=!Lobby,team=!Spectator,team=!Developer,scores={MVPkill=1..}] MVPkill
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] if score @s MVPkill = $max MVPkill unless score @s MVPkill matches 0 run tag @s add KillMVP
scoreboard players reset $max MVPkill

#> Death MVP
scoreboard players set $max MVPdeath 0
scoreboard players operation $max MVPdeath > @a[team=!Lobby,team=!Spectator,team=!Developer,scores={MVPdeath=1..}] MVPdeath
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] if score @s MVPdeath = $max MVPdeath unless score @s MVPdeath matches 0 run tag @s add DeathMVP
scoreboard players reset $max MVPdeath

#> Cannon MVP
# Cap ship damage by max ship health 
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] if score @s MVPdamage > $ShipHP CmdData run scoreboard players operation @s MVPdamage = $ShipHP CmdData

# Calculate who did the most damage
scoreboard players set $max MVPdamage 0
scoreboard players operation $max MVPdamage > @a[team=!Lobby,team=!Spectator,team=!Developer,scores={MVPdamage=1..}] MVPdamage
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] if score @s MVPdamage = $max MVPdamage unless score @s MVPdamage matches 0 run tag @s add DamageMVP
scoreboard players reset $max MVPdamage

# Calculate which damage MVP(s) used the least Cannonballs (tie resolution)
execute store result score $count MVPdamage if entity @a[tag=DamageMVP]
execute if score $count MVPdamage matches 1 as @a[tag=DamageMVP] run function game:mvpstats/damagemvp
execute if score $count MVPdamage matches 2.. run function game:mvpstats/leastcannons
scoreboard players reset $count MVPdamage

#> Update everyone's hats
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] run function game:mvpstats/adaptivehats