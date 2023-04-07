scoreboard players add @s CmdData 1
scoreboard players set @s[scores={CmdData=..29},tag=Instant] CmdData 30
execute if score @s CmdData matches 1 run function game:modifiers/seastorms/lightningcheck
execute if score @s CmdData matches 1..30 run particle minecraft:electric_spark ~ ~ ~ 1 0 1 0.1 10 force @a[team=!Lobby]
execute if score @s CmdData matches 30 run summon lightning_bolt ~ ~ ~ {Tags:["StormEntity"]}
execute if score @s CmdData matches 30 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0
execute if score @s CmdData matches 30 run particle flash ~ ~ ~ 0 0 0 0 3 force @a[team=!Lobby]
execute if score @s CmdData matches 30 run particle minecraft:firework ~ ~20 ~ 0 30 0 0.1 100
kill @s[scores={CmdData=30..}]