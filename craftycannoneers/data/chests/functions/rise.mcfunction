scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=1}] run playsound chestspawn master @a ~ ~ ~ 1.2 0.9
execute at @s[scores={CmdData=1..30}] run tp @s ~ ~0.033 ~
execute at @s[scores={CmdData=1..30}] run particle block sand ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=1..30}] run particle block dirt ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=1..30}] run playsound chestrise master @a ~ ~ ~ 1 1
execute at @s[tag=LChestAS,scores={CmdData=30}] run summon villager ~ ~-1 ~ {Tags:["LChestVillager","notifylock"],Invulnerable:1b,NoGravity:1b,NoAI:1b,Silent:1b}
team join Collide @e[type=villager,tag=LChestVillager]
tag @s[scores={CmdData=31..}] remove NewChest