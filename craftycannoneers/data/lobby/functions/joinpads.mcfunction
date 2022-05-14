scoreboard players add @e[tag=joinpad,tag=Locked] CmdData 1
execute as @e[tag=joinpad,tag=Locked,scores={CmdData=1}] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1
scoreboard players reset @e[tag=joinpad,tag=Locked,scores={CmdData=80..}] CmdData

execute as @e[tag=JoinpadOrange,tag=!Locked] at @s run particle falling_dust orange_concrete ~ ~1 ~ 0.7 0.3 0.7 0 3 force
execute as @e[tag=JoinpadPurple,tag=!Locked] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0.7 0.3 0.7 0 3 force
execute as @e[tag=JoinpadSpec,tag=!Locked] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0.7 0.3 0.7 0 3 force

execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Purple","bold":true,"underlined":true,"color":"#D100D1"},{"text":" and ","bold":true,"color":"blue"},{"text":"Orange","bold":true,"underlined":true,"color":"#FF6600"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Orange","bold":true,"underlined":true,"color":"#FF6600"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Purple","bold":true,"underlined":true,"color":"#D100D1"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name {"text":"Waiting for the game to get started...","bold":true,"color":"blue"}

#> Join Purple
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData matches 5.. as @e[team=Lobby,tag=JoinpadPurple,tag=!Locked] at @s run tag @a[limit=1,sort=random,distance=..2] add JoinPurple
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] run tellraw @a ["",{"selector":"@s","color":"dark_blue"},{"text":" joined the ","color":"blue"},{"text":"Purple","underlined":true,"color":"#D100D1"},{"text":" team!","color":"blue"}]
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] at @s run tp @s @s 
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] at @s run tp @s -46 -28.5 2 -180 0
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] run team join Purple @s
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] run function game:givelobbygear
execute if score $gamestate CmdData matches 1 as @a[tag=JoinPurple] run tag @s remove JoinPurple

#> Join Orange
execute unless score $InOrange CmdData > $InPurple CmdData unless score $InPurple CmdData matches 5.. as @e[team=Lobby,tag=JoinpadOrange,tag=!Locked] at @s run tag @a[limit=1,sort=random,distance=..2] add JoinOrange
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] run tellraw @a ["",{"selector":"@s","color":"dark_blue"},{"text":" joined the ","color":"blue"},{"text":"Orange","underlined":true,"color":"#FF6600"},{"text":" team!","color":"blue"}]
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] at @s run tp @s @s 
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] at @s run tp @s -46 -28.5 -2 0 0
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] run team join Orange @s
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] run function game:givelobbygear
execute if score $gamestate CmdData matches 1 as @a[tag=JoinOrange] run tag @s remove JoinOrange