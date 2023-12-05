tag @s[scores={LeftGame=1..}] remove KillMVP
tag @s[scores={LeftGame=1..}] remove DeathMVP
tag @s[scores={LeftGame=1..}] remove CannonMVP
tag @s[scores={LeftGame=1..}] add LeaveGame

#Join reset
tag @s add self
execute if score @s LeftGame matches 1.. at @s unless entity @a[tag=!self] run function everytick:joinreset
tag @s remove self

scoreboard players enable @s[team=!Lobby] leavegame
scoreboard players reset @s[team=Lobby] leavegame

#Pirate Hat game leaving
execute if entity @s[team=Purple,predicate=!game:has_hat] unless score @s death matches 1.. unless score @s respawn matches 1.. run trigger leavegame
execute if entity @s[team=Orange,predicate=!game:has_hat] unless score @s death matches 1.. unless score @s respawn matches 1.. run trigger leavegame
execute if entity @s[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveGame

execute if entity @s[team=!Lobby,team=!Spectator,team=!Developer] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" left their team!","color":"dark_aqua"}]
execute if entity @s[team=Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"text":" is no longer spectating the game.","color":"gray"}]
execute if entity @s[team=Spectator] unless score @s leavegame matches 0 run title @s actionbar ""
tellraw @s[team=Lobby,scores={leavegame=1..}] [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"Unable to leave the game.","color":"red"}]

#Unready by leaving
execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] run function game:readyteams/unreadyleavepurple
execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange,tag=ClickedReady] run function game:readyteams/unreadyleaveorange

title @s[tag=LeaveGame] times 0 50 15
team join Lobby @s[tag=LeaveGame]
execute if score $gamestate CmdData matches 2.. run function game:ingame/endcriteria
execute at @s[tag=LeaveGame] run tp @s @s
execute if entity @s[tag=LeaveGame,predicate=!game:tutorialbounds] run tp @s -55 -21 0 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds] unless score @s LeftGame matches 1.. run tp @s -264 -20 -21 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds] if score @s LeftGame matches 1.. run tp @s -55 -21 0 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds] run tag @s add Warped
clear @s[tag=LeaveGame]
execute if entity @s[tag=LeaveGame] run function lobby:items
effect clear @s[tag=LeaveGame]
gamemode adventure @s[tag=LeaveGame]
attribute @s[tag=LeaveGame] minecraft:generic.luck base set 0.0
recipe take @s[tag=LeaveGame] *
execute unless score @s leavegame matches 1.. run tag @s[tag=LeaveGame] remove msgReceived
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
execute if entity @s[tag=LeaveGame] unless entity @s[team=] unless score @s LeftGame matches 1.. at @s run playsound block.beehive.exit master @s ~ ~ ~ 1 1
scoreboard players reset @s[scores={LeftGame=1..}] LeftGame
tag @s[tag=LeaveGame] remove onboatregen
tag @s[tag=LeaveGame] remove onboatweakness
tag @s[tag=LeaveGame] remove loaded
tag @s[tag=LeaveGame] remove InPlayerCB
tag @s[tag=LeaveGame] remove EnemyMSG
tag @s[tag=LeaveGame] remove NeedsCutlass
tag @s[tag=LeaveGame] remove NeedsCrossbow
tag @s[tag=LeaveGame] remove NeedsSpyglass
tag @s[tag=LeaveGame] remove NeedsTracer
tag @s[tag=LeaveGame] remove mobtesting
tag @s[tag=LeaveGame] remove ModiOwner
scoreboard players reset @s[tag=LeaveGame] respawn
execute if entity @s[tag=LeaveGame] run function lobby:easteregg/rocket/reset
execute if entity @s[tag=LeaveGame] run function game:boat/removetags
scoreboard players reset @s[tag=LeaveGame] loverocks
advancement revoke @s[tag=LeaveGame,advancements={tutorial:zzzunlockables/rocks={50=false}}] only tutorial:zzzunlockables/rocks
scoreboard players reset @s[tag=LeaveGame] shotArrows
scoreboard players reset @s[tag=LeaveGame] KillerUUID
scoreboard players reset @s[tag=LeaveGame] KillerUUIDreset
title @s[tag=LeaveGame] title ""
title @s[tag=LeaveGame] subtitle ""
scoreboard players reset @s[scores={leavegame=1..}] leavegame

tellraw @s[tag=LeaveGame,tag=inParkour] [{"text":"You left the game, so your Parkour run was canceled.","color":"red"}]
tag @s[tag=LeaveGame,tag=inParkour] remove inParkour

tag @s[tag=LeaveGame] remove LeaveGame