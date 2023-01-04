#> Dust particles
execute positioned -54.5 -25 8 unless entity @a[distance=..4] run particle dust 0 1 1 1 -53.6 -22.2 9.8 0.8 0.8 0 0 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]

#> Range
execute positioned -54.5 -25 8 run tag @a[distance=..4] add NearModboard
execute positioned -54.5 -25 8 run scoreboard players enable @a[distance=..4,tag=NearModboard] modisigns
execute positioned -54.5 -25 8 run effect clear @a[distance=4..,tag=ModiOwner] glowing
execute positioned -54.5 -25 8 run tag @a[distance=4..,tag=ModiOwner] remove ModiOwner
execute positioned -54.5 -25 8 run scoreboard players reset @a[distance=4..,tag=NearModboard] modisigns
execute positioned -54.5 -25 8 run tag @a[distance=4..,tag=NearModboard] remove NearModboard

#> Bossbar
execute unless entity @a[tag=ModiOwner] run bossbar set lobbybar name {"text":"Please confirm game settings at the Settings Map!","color":"aqua"}
execute if entity @a[tag=ModiOwner] run bossbar set lobbybar name ["",{"selector":"@a[tag=ModiOwner,limit=1]","bold":true},{"text":" is in control of game settings!","color":"aqua"}]
bossbar set lobbybar color blue

#> Pick owner
execute unless entity @a[tag=ModiOwner] as @a[scores={modisigns=3384..},limit=1] at @s run playsound entity.villager.work_cartographer master @a ~ ~ ~ 1 1
execute unless entity @a[tag=ModiOwner] as @a[scores={modisigns=3384..},limit=1] run tag @s add ModiOwner

#> As owner
execute as @a[tag=ModiOwner,limit=1] run function lobby:customizer/modiowner

#> Reset
scoreboard players reset @a[tag=!ModiOwner,scores={moditimer=1..}] moditimer
# execute as @a unless score @s modisigns matches 0 run scoreboard players reset @s modisigns