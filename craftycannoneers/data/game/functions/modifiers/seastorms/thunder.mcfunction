execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~10 ~ 20 0
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~10 ~ 20 0.6

summon lightning_bolt 70 250 0 {Tags:["StormEntity"]}

scoreboard players set $StormTime CmdData 650