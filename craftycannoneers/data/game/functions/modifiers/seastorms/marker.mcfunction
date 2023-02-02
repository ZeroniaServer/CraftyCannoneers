scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=1}] at @s run function game:modifiers/seastorms/lightningcheck
execute at @s[scores={CmdData=1..30}] run particle minecraft:electric_spark ~ ~ ~ 1 0 1 0.1 10 force @a[team=!Lobby]
execute at @s[scores={CmdData=30}] run summon lightning_bolt ~ ~ ~ {Tags:["StormEntity"]}
execute at @s[scores={CmdData=30}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0
execute at @s[scores={CmdData=30}] run particle flash ~ ~ ~ 0 0 0 0 3 force @a[team=!Lobby]
execute at @s[scores={CmdData=30}] run particle minecraft:firework ~ ~20 ~ 0 30 0 0.1 100
kill @s[scores={CmdData=30..}]