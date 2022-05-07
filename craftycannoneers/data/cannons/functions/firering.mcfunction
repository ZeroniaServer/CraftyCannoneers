scoreboard players add @e[tag=RingOfFire] CmdData 1

execute as @e[tag=RingOfFire] at @s if entity @e[tag=GasCloud,distance=..5] run tag @e[tag=GasCloud,distance=..4] add GasExplode
execute as @e[tag=RingOfFire] at @s if entity @e[tag=GasCloud,distance=..5] run kill @s
execute as @e[tag=RingOfFire,scores={CmdData=1}] at @s run playsound minecraft:fireshot master @a ~ ~ ~ 1 0.6
execute as @e[tag=RingOfFire,scores={CmdData=1}] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 fire replace air
execute as @e[tag=RingOfFire,scores={CmdData=3}] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 air replace fire
execute as @e[tag=RingOfFire,scores={CmdData=3}] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 fire replace air
execute as @e[tag=RingOfFire,scores={CmdData=5}] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 air replace fire
execute as @e[tag=RingOfFire,scores={CmdData=5}] at @s run fill ~-3 ~3 ~-3 ~3 ~3 ~3 fire replace air
execute as @e[tag=RingOfFire,scores={CmdData=5..}] at @s run scoreboard players set $TempFire CmdData 0
execute as @e[tag=RingOfFire,scores={CmdData=5..}] at @s run kill @s

execute unless score $TempFire CmdData matches 501.. run scoreboard players add $TempFire CmdData 1
execute if score $TempFire CmdData matches 1 run gamerule doFireTick true
execute if score $TempFire CmdData matches 150 run gamerule doFireTick false
execute if score $TempFire CmdData matches 500 run function cannons:extinguishfire