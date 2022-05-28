scoreboard players add @e[tag=joinpad,tag=Locked] CmdData 1
execute as @e[tag=joinpad,tag=Locked,scores={CmdData=1}] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1 force
execute if score $InOrange CmdData > $InPurple CmdData as @e[tag=JoinpadOrange] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1 force
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1 force
execute if score $InPurple CmdData > $InOrange CmdData as @e[tag=JoinpadPurple] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1 force
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple] at @s run particle minecraft:block_marker barrier ~ ~1 ~ 0 0 0 0 1 force
scoreboard players reset @e[tag=joinpad,tag=Locked,scores={CmdData=80..}] CmdData

execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run particle falling_dust orange_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 force
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 force
execute as @e[tag=JoinpadSpec,tag=!Locked] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 force

execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Purple","bold":true,"underlined":true,"color":"dark_purple"},{"text":" and ","bold":true,"color":"blue"},{"text":"Orange","bold":true,"underlined":true,"color":"gold"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Orange","bold":true,"underlined":true,"color":"gold"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","bold":true,"color":"blue"},{"text":"Purple","bold":true,"underlined":true,"color":"dark_purple"},{"text":" players...","bold":true,"color":"blue"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name {"text":"Waiting for the game to get started...","bold":true,"color":"blue"}
execute unless score $gamestate CmdData matches 2.. unless score $Countdown CmdData matches 1.. run bossbar set lobbybar color blue

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
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run tellraw @s ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"aqua","italic":true}]
execute as @a[tag=JoinPurple] at @s run tp @s @s
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] at @s run tp @s -46 -28.5 2 -180 0
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] at @s run tp @s 52 -26 -55 -90 0
execute as @a[tag=JoinPurple] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinPurple] run team join Purple @s
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run function game:givegear
execute as @a[tag=JoinPurple] run tag @s remove JoinPurple

execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Orange","color":"gold","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] times 5 30 5
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinPurple] add tryJoinPurple
execute if score $InPurple CmdData > $InOrange CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if score $InPurple CmdData > $InOrange CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Orange","color":"gold","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InPurple CmdData > $InOrange CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] times 5 30 5
execute if score $InPurple CmdData > $InOrange CmdData as @e[tag=JoinpadPurple,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinPurple] add tryJoinPurple
execute as @e[tag=JoinpadPurple,tag=!Locked] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinPurple

#> Join Orange
execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinOrange
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Orange","color":"gold"},{"text":" team!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Orange","color":"gold"},{"text":" team! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run tellraw @s[team=Orange] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"gold"},{"text":" to leave the game!","color":"aqua","italic":true}]
execute as @a[tag=JoinOrange] at @s run tp @s @s
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] at @s run tp @s -46 -28.5 -2 0 0
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] at @s run tp @s 88 -26 55 90 0
execute as @a[tag=JoinOrange] at @s run playsound minecraft:block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinOrange] run team join Orange @s
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run function game:givegear
execute as @a[tag=JoinOrange] run tag @s remove JoinOrange

execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Purple","color":"dark_purple","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] times 5 30 5
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinOrange] add tryJoinOrange
execute if score $InOrange CmdData > $InPurple CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if score $InOrange CmdData > $InPurple CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Purple","color":"dark_purple","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InOrange CmdData > $InPurple CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] times 5 30 5
execute if score $InOrange CmdData > $InPurple CmdData as @e[tag=JoinpadOrange,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinOrange] add tryJoinOrange
execute as @e[tag=JoinpadOrange,tag=!Locked] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinOrange

#> Join Spectator
execute as @e[tag=JoinpadSpec,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinSpec
execute as @a[tag=JoinSpec] at @s run gamemode spectator @s
execute as @a[tag=JoinSpec] at @s run team join Spectator @s
execute as @a[tag=JoinSpec] at @s run tp @s @s
execute as @a[tag=JoinSpec] at @s run tp @s 70 10 0
execute as @a[tag=JoinSpec] at @s run playsound block.beehive.enter master @s ~ ~ ~ 1 1
execute as @a[tag=JoinSpec] at @s run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"text":" is now spectating the game.","color":"gray"}]
tag @a[tag=JoinSpec] add NewSpec
tag @a[tag=JoinSpec] remove JoinSpec

title @a[team=Spectator] actionbar {"text":"Fly into the center particle cluster to stop spectating!","bold":true,"color":"aqua"}

execute positioned 70 10 0 as @a[team=Spectator,tag=!NewSpec,distance=..4] run trigger leavegame
execute positioned 70 10 0 run tag @a[team=Spectator,tag=NewSpec,distance=5..] remove NewSpec
execute positioned 70 10 0 run particle dust 0 1 3 2 ~ ~ ~ 1 1 1 0.1 10 force @a[team=Spectator]
tag @a[tag=NewSpec,team=!Spectator] remove NewSpec

execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tellraw @s {"text":"Unable to spectate outside of the arena!","color":"red"}
execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tag @s add NewSpec
execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tp @s @s
execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tp @s 70 10 0