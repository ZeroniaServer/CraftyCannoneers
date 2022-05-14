scoreboard players add @e[tag=joinpad,tag=Locked] CmdData 1
execute as @e[tag=joinpad,tag=Locked,scores={CmdData=1}] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1
scoreboard players reset @e[tag=joinpad,tag=Locked,scores={CmdData=80..}] CmdData

execute as @e[tag=JoinpadOrange,tag=!Locked] at @s run particle falling_dust orange_concrete ~ ~1 ~ 0.7 0.3 0.7 0 3 force
execute as @e[tag=JoinpadPurple,tag=!Locked] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0.7 0.3 0.7 0 3 force
execute as @e[tag=JoinpadSpec,tag=!Locked] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0.7 0.3 0.7 0 3 force

execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Purple","bold":true,"underlined":true,"color":"dark_purple"},{"text":" and ","bold":true,"color":"blue"},{"text":"Orange","bold":true,"underlined":true,"color":"gold"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Orange","bold":true,"underlined":true,"color":"gold"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Purple","bold":true,"underlined":true,"color":"dark_purple"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name {"text":"Waiting for the game to get started...","bold":true,"color":"blue"}

#> Team balancing
scoreboard players set $InTeams CmdData 0
scoreboard players set $InPurple CmdData 0
scoreboard players set $InOrange CmdData 0
execute as @a[team=Purple] run scoreboard players add $InTeams CmdData 1
execute as @a[team=Orange] run scoreboard players add $InTeams CmdData 1
execute as @a[team=Purple] run scoreboard players add $InPurple CmdData 1
execute as @a[team=Orange] run scoreboard players add $InOrange CmdData 1

#> Join Purple
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinPurple
execute if score $gamestate CmdData matches 0 as @a[tag=JoinPurple] run tellraw @a ["",{"selector":"@s","color":"dark_blue"},{"text":" joined the ","color":"blue"},{"text":"Purple","color":"dark_purple"},{"text":" team!","color":"blue"}]
execute as @a[tag=JoinPurple] at @s run tp @s @s 
execute as @a[tag=JoinPurple] at @s run tp @s -46 -28.5 2 -180 0
execute as @a[tag=JoinPurple] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinPurple] run team join Purple @s
execute as @a[tag=JoinPurple] run function game:givelobbygear
execute as @a[tag=JoinPurple] run tag @s remove JoinPurple

#> Join Orange
execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinOrange
execute if score $gamestate CmdData matches 0 as @a[tag=JoinOrange] run tellraw @a ["",{"selector":"@s","color":"dark_blue"},{"text":" joined the ","color":"blue"},{"text":"Orange","color":"gold"},{"text":" team!","color":"blue"}]
execute as @a[tag=JoinOrange] at @s run tp @s @s 
execute as @a[tag=JoinOrange] at @s run tp @s -46 -28.5 -2 0 0
execute as @a[tag=JoinOrange] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinOrange] run team join Orange @s
execute as @a[tag=JoinOrange] run function game:givelobbygear
execute as @a[tag=JoinOrange] run tag @s remove JoinOrange