scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=1}] run playsound chestspawn master @a ~ ~ ~ 1.2 0.9
execute at @s[scores={CmdData=1..30}] run tp @s ~ ~0.0329 ~
execute at @s[scores={CmdData=1..30}] run particle block sand ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=1..30}] run particle block dirt ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=1..30}] run playsound chestrise master @a ~ ~ ~ 1 1
tag @s[scores={CmdData=31..}] remove NewChest