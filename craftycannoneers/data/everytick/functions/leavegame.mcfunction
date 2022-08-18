tag @a[scores={LeftGame=1..}] remove KillMVP
tag @a[scores={LeftGame=1..}] remove DeathMVP
tag @a[scores={LeftGame=1..}] remove CannonMVP
execute as @a[scores={LeftGame=1..}] run tag @s add LeaveGame

scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[team=!Lobby,team=!Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" left their team!","color":"dark_aqua"}]
execute as @a[team=Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"text":" is no longer spectating the game.","color":"gray"}]
execute as @a[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveGame

#Pirate Hat game leaving
execute as @a[team=Purple,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame
execute as @a[team=Orange,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame

execute as @a[tag=LeaveGame] run title @s times 0 50 15
execute as @a[tag=LeaveGame] at @s run tp @s @s
execute as @a[tag=LeaveGame,predicate=!game:tutorialbounds] run tp @s -55 -21 0 -90 0
execute as @a[tag=LeaveGame,predicate=game:tutorialbounds] unless score @s LeftGame matches 1.. run tp @s -264 -20 -21 -90 0
execute as @a[tag=LeaveGame,predicate=game:tutorialbounds] if score @s LeftGame matches 1.. run tp @s -55 -21 0 -90 0
execute as @a[tag=LeaveGame,predicate=game:tutorialbounds] run tag @s add Warped
execute as @a[tag=LeaveGame] at @s run clear @s
execute as @a[tag=LeaveGame] run function lobby:easteregg/buttonreset
execute as @a[tag=LeaveGame] run function lobby:items
execute as @a[tag=LeaveGame] at @s run effect clear @s
execute as @a[team=] run effect give @s slowness 2 100 true
execute as @a[team=] run effect give @s jump_boost 2 128 true
execute as @a[tag=LeaveGame] at @s run gamemode adventure @s
execute as @a[tag=LeaveGame] run attribute @s minecraft:generic.luck base set 0.0
execute as @a[tag=LeaveGame] run recipe take @s *
execute as @a[tag=LeaveGame,scores={LeftGame=1..}] run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{"text":"Ahoy, matey! Thank you for using the resource pack!","color":"aqua","italic":true}]}]
tag @a[tag=LeaveGame,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
tag @a[tag=LeaveGame,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
tag @a[tag=LeaveGame,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
tag @a[tag=LeaveGame,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
execute as @a[tag=NeedsTutorial,tag=!hideTips,scores={LeftGame=1..}] run tellraw @s ["","\n",{"text":"It seems like you're new to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"We highly recommend you to check out the ","color":"green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":" before playing the actual game!","color":"green"},"\n",{"text":"You can go there by using the blue teleport platform on the left side of the lobby.","italic":true,"color":"dark_green"},"\n"]
tag @a[tag=NeedsTutorial] remove NeedsTutorial
execute as @a[tag=LeaveGame] unless entity @s[team=] unless score @s LeftGame matches 1.. at @s run playsound block.beehive.exit master @s ~ ~ ~ 1 1
execute as @a[scores={LeftGame=1..}] run scoreboard players reset @s LeftGame
execute as @a[tag=LeaveGame] at @s run team join Lobby @s
tag @a[tag=LeaveGame] remove onboatregen
tag @a[tag=LeaveGame] remove loaded
execute as @a[tag=LeaveGame] run scoreboard players reset @s loverocks

execute as @a[tag=LeaveGame,tag=inParkour] run tellraw @s [{"text":"You left the game, so your Parkour run was canceled.","color":"red"}]
execute as @a[tag=LeaveGame,tag=inParkour] run tag @s remove inParkour

tag @a[tag=LeaveGame] remove LeaveGame