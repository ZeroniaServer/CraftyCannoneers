scoreboard players add $StormTime CmdData 1

execute if score $StormTime CmdData matches 1 run weather thunder
execute if score $StormTime CmdData matches 75 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}
execute if score $StormTime CmdData matches 75 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}

execute if score $StormTime CmdData matches 90 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}
execute if score $StormTime CmdData matches 90 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}


execute if score $StormTime CmdData matches 690.. run function game:modifiers/seastorms/pickevent





#> Lightning
execute as @e[type=lightning_bolt] at @s run fill ~5 ~-10 ~5 ~-5 ~20 ~-5 air replace fire
kill @e[type=lightning_bolt,tag=!StormEntity]
scoreboard players add @e[type=marker,tag=LightningMarker] CmdData 1
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=1}] at @s run function game:modifiers/seastorms/lightning_check
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=1..30}] at @s run particle minecraft:electric_spark ~ ~ ~ 1 0 1 0.1 10 force @a[team=!Lobby]
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=30}] at @s run summon lightning_bolt ~ ~ ~ {Tags:["StormEntity"]}
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=30}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=30}] at @s run particle flash ~ ~ ~ 0 0 0 0 3 force
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=30}] at @s run particle minecraft:firework ~ ~20 ~ 0 30 0 0.1 100
execute as @e[type=marker,tag=LightningMarker,scores={CmdData=30..}] run kill @s