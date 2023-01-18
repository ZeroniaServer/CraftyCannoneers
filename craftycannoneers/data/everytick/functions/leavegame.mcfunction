tag @s[scores={LeftGame=1..}] remove KillMVP
tag @s[scores={LeftGame=1..}] remove DeathMVP
tag @s[scores={LeftGame=1..}] remove CannonMVP
tag @s[scores={LeftGame=1..}] add LeaveGame

title @s[scores={LeftGame=1..}] title {"text":" ","color":"white"}
title @s[scores={LeftGame=1..}] subtitle {"text":" ","color":"white"}

#Join reset
execute if entity @s[scores={LeftGame=1..}] if score $gamestate CmdData matches 0 unless entity @a[distance=0.0001..] run function everytick:joinreset

scoreboard players enable @s[team=!Lobby] leavegame
scoreboard players reset @s[team=Lobby] leavegame
execute if entity @s[team=!Lobby,team=!Spectator,team=!Developer] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s"},{"translate":"game.left_team","color":"dark_aqua"}]
execute if entity @s[team=Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"translate":"game.left_spectator","color":"gray"}]
execute if entity @s[team=Spectator] unless score @s leavegame matches 0 run title @s actionbar ""
execute if entity @s[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveGame

#Pirate Hat game leaving
execute if entity @s[team=Purple,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame
execute if entity @s[team=Orange,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame

#Unready by leaving
execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] run function game:readyteams/unreadyleavepurple
execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange,tag=ClickedReady] run function game:readyteams/unreadyleaveorange

title @s[tag=LeaveGame] times 0 50 15
execute at @s[tag=LeaveGame] run tp @s @s
execute if entity @s[tag=LeaveGame,predicate=!game:tutorialbounds] run tp @s -55 -21 0 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds] unless score @s LeftGame matches 1.. run tp @s -264 -20 -21 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds] if score @s LeftGame matches 1.. run tp @s -55 -21 0 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds] run tag @s add Warped
clear @s[tag=LeaveGame]
execute if entity @s[tag=LeaveGame] run function lobby:easteregg/buttonreset
execute if entity @s[tag=LeaveGame] run function lobby:items
effect clear @s[tag=LeaveGame]
gamemode adventure @s[tag=LeaveGame]
attribute @s[tag=LeaveGame] minecraft:generic.luck base set 0.0
recipe take @s[tag=LeaveGame] *
tag @s[tag=LeaveGame,scores={LeftGame=1..}] remove hasMoved
tag @s[tag=LeaveGame,scores={LeftGame=1..}] remove msgReceived
scoreboard players reset @s[tag=!firstJoined,tag=LeaveGame] msgdelay
tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
tag @s[tag=firstJoined,tag=LeaveGame,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
execute if entity @s[tag=NeedsTutorial,tag=!hideTips,scores={LeftGame=1..}] run tellraw @s ["","\n",{"translate":"chat.new_here","color":"green"},{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"translate":"chat.recommend","color":"green"},{"translate":"tutorial.training_island","bold":true,"color":"aqua"},{"translate":"chat.before_playing","color":"green"},"\n",{"translate":"chat.warp_pad","italic":true,"color":"dark_green"},"\n"]
tag @s[tag=NeedsTutorial] remove NeedsTutorial
execute if entity @s[tag=LeaveGame] unless entity @s[team=] unless score @s LeftGame matches 1.. at @s run playsound block.beehive.exit master @s ~ ~ ~ 1 1
scoreboard players reset @s[scores={LeftGame=1..}] LeftGame
team join Lobby @s[tag=LeaveGame]
tag @s[tag=LeaveGame] remove onboatregen
tag @s[tag=LeaveGame] remove loaded
tag @s[tag=LeaveGame] remove InPlayerCB
tag @s[tag=LeaveGame] remove EnemyMSG
tag @s[tag=LeaveGame] remove NeedsCutlass
tag @s[tag=LeaveGame] remove NeedsCrossbow
tag @s[tag=LeaveGame] remove NeedsSpyglass
tag @s[tag=LeaveGame] remove NeedsTracer
tag @s[tag=LeaveGame] remove mobtesting
tag @s[tag=LeaveGame] remove ModiOwner
execute if entity @s[tag=LeaveGame] run function lobby:easteregg/rocket/reset
execute if entity @s[tag=LeaveGame] run function game:boat/removetags
scoreboard players reset @s[tag=LeaveGame] loverocks
advancement revoke @s[tag=LeaveGame,advancements={tutorial:zzzunlockables/rocks={50=false}}] only tutorial:zzzunlockables/rocks
scoreboard players reset @s[tag=LeaveGame] shotArrows

tellraw @s[tag=LeaveGame,tag=inParkour] [{"translate":"parkour.left_canceled","color":"red"}]
tag @s[tag=LeaveGame,tag=inParkour] remove inParkour

tag @s[tag=LeaveGame] remove LeaveGame