scoreboard players add @e[type=marker,tag=RingOfFire] CmdData 1

execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=marker,tag=GasCloud,distance=..5] run tag @e[type=marker,tag=GasCloud,distance=..4] add GasExplode
execute as @e[type=marker,tag=RingOfFire] at @s if entity @e[type=marker,tag=GasCloud,distance=..5] run kill @s
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=1}] at @s run playsound minecraft:fireshot master @a ~ ~ ~ 1 0.6
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=1}] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 fire replace air
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=3}] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 air replace fire
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=3}] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 fire replace air
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=5}] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 air replace fire
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=5}] at @s run fill ~-3 ~3 ~-3 ~3 ~3 ~3 fire replace air
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=5..}] run gamerule doFireTick true
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=155}] run gamerule doFireTick false
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=505}] run function cannons:extinguishfire
execute as @e[type=marker,tag=RingOfFire,scores={CmdData=505}] run kill @s