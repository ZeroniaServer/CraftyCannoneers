tag @s[scores={LeftGame=1..}] add LeaveGame

#Join reset
tag @s add self
execute if score @s LeftGame matches 1.. at @s unless entity @a[tag=!self] run function everytick:joinreset
tag @s remove self

execute unless score $servermode CmdData matches 1 run scoreboard players enable @s[team=!Lobby] leavegame
execute unless score $servermode CmdData matches 1 run scoreboard players reset @s[team=Lobby] leavegame
execute if score $servermode CmdData matches 1 run scoreboard players enable @s leavegame

#Pirate Hat game leaving
execute if entity @s[team=Purple,predicate=!game:has_hat] unless score @s death matches 1.. run trigger leavegame
execute if entity @s[team=Orange,predicate=!game:has_hat] unless score @s death matches 1.. run trigger leavegame
execute if entity @s[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveGame

execute if entity @s[team=!Lobby,team=!Spectator,team=!Developer] unless score @s leavegame matches 0 run tellraw @a ["",{translate:"game.left_team",color:"dark_aqua",with:[{selector:"@s"}]}]
execute if entity @s[team=Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{translate:"game.left_spectator",color:"gray",with:[{selector:"@s",color:"dark_gray"}]}]
execute if entity @s[team=Spectator] unless score @s leavegame matches 0 run title @s actionbar ""
tellraw @s[team=Lobby,scores={leavegame=1..}] [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{translate:"error.cannot_leave",color:"red"}]

#Unready by leaving
execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple,tag=ClickedReady] run function game:readyteams/unreadyleavepurple
execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange,tag=ClickedReady] run function game:readyteams/unreadyleaveorange

title @s[tag=LeaveGame] times 0 50 15
team join Lobby @s[tag=LeaveGame]
execute if score $gamestate CmdData matches 2.. run function game:ingame/endcriteria
execute if score #noplayers CmdData matches 1 run tag @s[tag=LeaveGame] remove msgReceived
scoreboard players reset #noplayers CmdData
execute at @s[tag=LeaveGame] run tp @s @s
execute if entity @s[tag=LeaveGame,predicate=!game:tutorialbounds_extended] run tp @s -55 -21 0 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds_extended] run tag @s add Warped
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds_extended] unless score @s LeftGame matches 1.. run tp @s -264 -20 -21 -90 0
execute if entity @s[tag=LeaveGame,predicate=game:tutorialbounds_extended] if score @s LeftGame matches 1.. run tp @s -55 -21 0 -90 0
clear @s[tag=LeaveGame]
execute if entity @s[tag=LeaveGame] run function lobby:items
effect clear @s[tag=LeaveGame]
gamemode adventure @s[tag=LeaveGame]
attribute @s[tag=LeaveGame] armor base set 0
recipe take @s[tag=LeaveGame] *
execute unless score @s leavegame matches 1.. run tag @s[tag=LeaveGame,tag=!WaterTP] remove msgReceived
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,tag=!WaterTP,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,tag=!WaterTP,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,tag=!WaterTP,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
execute unless score @s leavegame matches 1.. run tag @s[tag=firstJoined,tag=LeaveGame,tag=!WaterTP,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
execute if entity @s[tag=LeaveGame] unless entity @s[team=] unless score @s LeftGame matches 1.. at @s run playsound leavegame master @s ~ ~ ~ 1 1
title @s[tag=firstJoined,scores={LeftGame=1..}] title ["",{translate:"game.name",with:[{translate:"game.crafty",bold:true,color:"dark_purple"},{translate:"game.cannoneers",bold:true,color:"gold"}]}]
title @s[tag=firstJoined,scores={LeftGame=1..}] subtitle ["",{translate:"game.made_by",color:"gray",with:[{text:"v1.1.8",color:"aqua"},{translate:"zeronia",color:"green"}]}]
scoreboard players reset @s[scores={LeftGame=1..}] LeftGame
tag @s[tag=LeaveGame] remove onboatregen
tag @s[tag=LeaveGame] remove onboatweakness
tag @s[tag=LeaveGame] remove lookAtBarrel
tag @s[tag=LeaveGame] remove lookAtCannon
tag @s[tag=LeaveGame] remove WaterTP
attribute @s[tag=LeaveGame] attack_damage modifier remove craftycannoneers:nodamage
attribute @s[tag=LeaveGame] safe_fall_distance base set 1024
tag @s[tag=LeaveGame] remove lookAtBCannon
tag @s[tag=LeaveGame] remove barrelMainhand
tag @s[tag=LeaveGame] remove barrelOffhand
tag @s[tag=LeaveGame] remove loaded
tag @s[tag=LeaveGame] remove InPlayerCB
tag @s[tag=LeaveGame] remove EnemyMSG
tag @s[tag=LeaveGame] remove NeedsCutlass
tag @s[tag=LeaveGame] remove NeedsCrossbow
tag @s[tag=LeaveGame] remove NeedsSpyglass
tag @s[tag=LeaveGame] remove NeedsTracer
tag @s[tag=LeaveGame] remove mobtesting
tag @s[tag=LeaveGame] remove ModiOwner
tag @s[tag=LeaveGame] remove lowerteam
tag @s[tag=LeaveGame] remove cr
scoreboard players reset @s[tag=LeaveGame] respawn
execute if entity @s[tag=LeaveGame] run function lobby:easteregg/rocket/reset
execute if entity @s[tag=LeaveGame] run function game:boat/removetags
scoreboard players reset @s[tag=LeaveGame] loverocks
advancement revoke @s[tag=LeaveGame,advancements={tutorial:zzzunlockables/rocks={50=false}}] only tutorial:zzzunlockables/rocks
scoreboard players reset @s[tag=LeaveGame] shotArrows
scoreboard players reset @s[tag=LeaveGame] KillerUUID
scoreboard players reset @s[tag=LeaveGame] KillerUUIDreset
scoreboard players reset @s[scores={leavegame=1..}] leavegame

tellraw @s[tag=LeaveGame,tag=inParkour] [{translate:"parkour.left_canceled",color:"red"}]
tag @s[tag=LeaveGame,tag=inParkour] remove resettimeonce
tag @s[tag=LeaveGame,tag=inParkour] remove inParkour

tag @s[tag=LeaveGame] remove LeaveGame