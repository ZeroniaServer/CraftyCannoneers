scoreboard players add @e[type=marker,tag=RingOfFire] CmdData 1

execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=armor_stand,tag=GasBubble,distance=..5] run scoreboard players operation @e[type=armor_stand,tag=GasBubble,distance=..3] playerUUID = @s playerUUID
execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=marker,tag=GasCloud,distance=..5] run scoreboard players operation @e[type=marker,tag=GasCloud,distance=..3] playerUUID = @s playerUUID
execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=armor_stand,tag=GasBubble,distance=..5] run tag @e[type=armor_stand,tag=GasBubble,distance=..3] add GasIgnite
execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=marker,tag=GasCloud,distance=..5] run tag @e[type=marker,tag=GasCloud,distance=..3] add GasIgnite
scoreboard players add @e[type=armor_stand,tag=GasIgnite] death 1
scoreboard players add @e[type=marker,tag=GasIgnite] death 1

execute as @e[type=armor_stand,tag=GasIgnite,scores={death=6}] at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 2
execute as @e[type=armor_stand,tag=GasIgnite] at @s run particle flame ~ ~0.7 ~ 0.3 0.3 0.3 0.1 2 force
execute as @e[type=armor_stand,tag=GasIgnite] at @s run tag @e[type=armor_stand,tag=GasBubble,tag=!GasIgnite,distance=..6] add GasIgnite
execute as @e[type=armor_stand,tag=GasIgnite,scores={death=15..}] at @s run tag @e[type=marker,tag=GasCloud,distance=..4] add GasExplode
execute as @e[type=marker,tag=GasIgnite,scores={death=15..}] at @s run tag @e[type=marker,tag=GasCloud,distance=..4] add GasExplode

execute as @e[type=armor_stand,tag=GasIgnite,scores={death=5}] at @s run particle explosion ~ ~0.6 ~ 0 0 0 0 3 force
execute as @e[type=armor_stand,tag=GasIgnite] at @s run particle flame ~ ~0.6 ~ 0 0 0 0.1 1 force
kill @e[type=armor_stand,tag=GasIgnite,scores={death=15..}]

execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=marker,tag=GasCloud,distance=..5] run kill @s
execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=armor_stand,tag=GasBubble,distance=..5] run kill @s
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=1}] at @s run playsound minecraft:fireshot master @a ~ ~ ~ 1 0.6
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=1}] at @s run tag @e[type=armor_stand,tag=CannonDisp,distance=..6] add OnFire
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=1}] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 fire replace air
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=3}] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 air replace fire
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=3}] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 fire replace air
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=5}] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 air replace fire
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=5}] at @s run fill ~-3 ~3 ~-3 ~3 ~3 ~3 fire replace air
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=5..}] run gamerule doFireTick true
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=155}] run gamerule doFireTick false
execute as @e[type=marker,tag=RingOfFire,predicate=!cannons:safezones/island,scores={CmdData=505}] run function cannons:extinguishfire
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=505..}] run kill @s