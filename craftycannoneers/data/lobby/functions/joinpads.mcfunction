execute if score $barrier CmdData matches 0 as @e[type=marker,tag=joinpad,tag=Locked] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby]
execute if score $barrier CmdData matches 0 if score $InOrange CmdData > $InPurple CmdData as @e[type=marker,tag=JoinpadOrange] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby]
execute if score $barrier CmdData matches 0 if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby]
execute if score $barrier CmdData matches 0 if score $InPurple CmdData > $InOrange CmdData as @e[type=marker,tag=JoinpadPurple] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby]
execute if score $barrier CmdData matches 0 if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 0 normal @a[team=Lobby]

execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run particle falling_dust orange_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby]
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby]
execute as @e[type=marker,tag=JoinpadSpec,tag=!Locked] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby]

execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar value 0
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","color":"aqua"},{"text":"Purple","bold":true,"color":"dark_purple"},{"text":" and ","color":"aqua"},{"text":"Orange","bold":true,"color":"gold"},{"text":" players...","color":"aqua"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar value 5
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","color":"aqua"},{"text":"Orange","bold":true,"color":"gold"},{"text":" players...","color":"aqua"}]
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar value 5
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","color":"aqua"},{"text":"Purple","bold":true,"color":"dark_purple"},{"text":" players...","color":"aqua"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar value 10
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name {"text":"Waiting for teams to ready up...","color":"aqua"}
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
execute unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinPurple
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Purple","color":"dark_purple"},{"text":" team! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run tellraw @s ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"aqua","italic":true}]
execute as @a[tag=JoinPurple] at @s run tp @s @s
execute as @a[tag=JoinPurple] run title @s times 0 50 15
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] at @s run tp @s -46 -28.5 -2 0 0
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] at @s run tp @s 52 -26 -55 -90 0
execute as @a[tag=JoinPurple] at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinPurple] run team join Purple @s
execute as @a[tag=JoinPurple] run tag @s add loaded
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinPurple] run function game:givegear
execute as @a[tag=JoinPurple] run tag @s remove JoinPurple

execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Orange","color":"gold","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] times 0 30 5
execute if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinPurple] add tryJoinPurple
execute if score $InPurple CmdData > $InOrange CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if score $InPurple CmdData > $InOrange CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Orange","color":"gold","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InPurple CmdData > $InOrange CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinPurple] times 0 30 5
execute if score $InPurple CmdData > $InOrange CmdData as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinPurple] add tryJoinPurple
execute as @e[type=marker,tag=JoinpadPurple,tag=!Locked] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinPurple

#> Join Orange
execute unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinOrange
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Orange","color":"gold"},{"text":" team!","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the ","color":"dark_aqua"},{"text":"Orange","color":"gold"},{"text":" team! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run tellraw @s[team=Orange] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"gold"},{"text":" to leave the game!","color":"aqua","italic":true}]
execute as @a[tag=JoinOrange] at @s run tp @s @s
execute as @a[tag=JoinOrange] run title @s times 0 50 15
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] at @s run tp @s -46 -28.5 2 -180 0
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] at @s run tp @s 88 -26 55 90 0
execute as @a[tag=JoinOrange] at @s run playsound block.beehive.enter master @a ~ ~ ~ 1 1
execute as @a[tag=JoinOrange] run team join Orange @s
execute as @a[tag=JoinOrange] run tag @s add loaded
execute unless score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run function game:givelobbygear
execute if score $gamestate CmdData matches 2.. as @a[tag=JoinOrange] run function game:givegear
execute as @a[tag=JoinOrange] run tag @s remove JoinOrange

execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Purple","color":"dark_purple","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData if score $InPurple CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] times 0 30 5
execute if score $InOrange CmdData >= $MaxTeamSize CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinOrange] add tryJoinOrange
execute if score $InOrange CmdData > $InPurple CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if score $InOrange CmdData > $InPurple CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Purple","color":"dark_purple","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InOrange CmdData > $InPurple CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinOrange] times 0 30 5
execute if score $InOrange CmdData > $InPurple CmdData as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinOrange] add tryJoinOrange
execute as @e[type=marker,tag=JoinpadOrange,tag=!Locked] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinOrange

#> Join Spectator
execute as @e[type=marker,tag=JoinpadSpec,tag=!Locked] at @s run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinSpec
execute as @a[tag=JoinSpec] at @s run gamemode spectator
execute as @a[tag=JoinSpec] at @s run team join Spectator @s
execute as @a[tag=JoinSpec] at @s run tp @s @s
execute as @a[tag=JoinSpec] at @s run tp @s 70 18 0
execute as @a[tag=JoinSpec] at @s run playsound block.beehive.enter master @s ~ ~ ~ 1 1
execute as @a[tag=JoinSpec] at @s run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"text":" is now spectating the game.","color":"gray"}]
tag @a[tag=JoinSpec] add NewSpec
tag @a[tag=JoinSpec] remove JoinSpec

title @a[team=Spectator] actionbar {"text":"Fly into a ring of seagulls to stop spectating!","bold":true,"color":"aqua"}

execute as @a[team=Spectator,tag=!NewSpec] at @s if entity @e[type=marker,tag=seagullSpawner,distance=..4] run trigger leavegame
execute as @a[team=Spectator,tag=NewSpec] at @s unless entity @e[type=marker,tag=seagullSpawner,distance=..4] run tag @s remove NewSpec
tag @a[tag=NewSpec,team=!Spectator] remove NewSpec

execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tellraw @s {"text":"Unable to spectate outside of the arena!","color":"red"}
execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tag @s add NewSpec
execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tp @s @s
execute as @a[team=Spectator] at @s unless entity @s[predicate=game:inarena] run tp @s 70 18 0