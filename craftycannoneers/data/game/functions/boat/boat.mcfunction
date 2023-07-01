#> Prevent duplicates
execute store result score $boat playerUUID run data get entity @s UUID[0]
execute if entity @s[tag=1] unless score $boat playerUUID = $boat1 CmdData run function game:boat/quickkill
execute if entity @s[tag=1] unless score $boat playerUUID = $boat1 CmdData run return 0
execute if entity @s[tag=2] unless score $boat playerUUID = $boat2 CmdData run function game:boat/quickkill
execute if entity @s[tag=2] unless score $boat playerUUID = $boat2 CmdData run return 0
execute if entity @s[tag=3] unless score $boat playerUUID = $boat3 CmdData run function game:boat/quickkill
execute if entity @s[tag=3] unless score $boat playerUUID = $boat3 CmdData run return 0
execute if entity @s[tag=4] unless score $boat playerUUID = $boat4 CmdData run function game:boat/quickkill
execute if entity @s[tag=4] unless score $boat playerUUID = $boat4 CmdData run return 0

#> Only allow mounting after 5 ticks to prevent issues with display interpolation
scoreboard players add @s[tag=!allowmount] click 1 
execute if entity @s[scores={click=5..},tag=!allowmount] on passengers run data merge entity @s[tag=boatoccupant,tag=!hidden] {width:2,height:1}
tag @s[scores={click=8},tag=!allowmount] add allowmount

#> Handle Boat Cannon if enabled
execute if score $BoatCannons CmdData matches 1 run function game:boat/cannon/move

#> Sailing check
execute at @s[tag=1,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1,limit=1] run tag @s add Sailing
execute at @s[tag=2,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2,limit=1] run tag @s add Sailing
execute at @s[tag=3,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3,limit=1] run tag @s add Sailing
execute at @s[tag=4,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4,limit=1] run tag @s add Sailing

#> Idle teleport while in water (prevents top collision glitches)
execute at @s[tag=!Sailing,tag=!Sinking] positioned ~ ~-0.3 ~ if predicate game:instillwater at @s align y run tp @s ~ ~0.7 ~

#> Sailing
execute at @s[tag=Sailing] run function game:boat/sailing

#> Sinking check
execute at @s[tag=1,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 109 -31 0 unless entity @s[distance=..8] run tag @s add Sinking
execute at @s[tag=2,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 31 -31 0 unless entity @s[distance=..8] run tag @s add Sinking
execute at @s[tag=3,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 83 -31 12 unless entity @s[distance=..8] run tag @s add Sinking
execute at @s[tag=4,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 57 -31 -12 unless entity @s[distance=..8] run tag @s add Sinking
tag @s[tag=!Sailing,predicate=game:inwater,predicate=game:boat/belowwater] add Sinking

#> Sinking
execute at @s[tag=Sinking] run function game:boat/sinking

#> No entity collision
team join NoName

#> Prevent clipping into ship floorboards
execute if entity @s[tag=!Sinking,predicate=cannons:ships/orange,predicate=cannons:ships/underbottom,predicate=!game:instillwater,nbt={OnGround:0b}] align y run tp @s ~ ~1 ~
execute if entity @s[tag=!Sinking,predicate=cannons:ships/purple,predicate=cannons:ships/underbottom,predicate=!game:instillwater,nbt={OnGround:0b}] align y run tp @s ~ ~1 ~

#> Break when in ground to fix issues with boat motion/collision
execute unless block ~ ~ ~ #cannons:cannonball_passable unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ ladder unless block ~ ~ ~ #minecraft:candles[waterlogged=true] run kill @s
execute unless block ~ ~1 ~ #cannons:cannonball_passable unless block ~ ~1 ~ ladder unless block ~ ~1 ~ #minecraft:slabs[type=top] unless block ~ ~1 ~ lantern run kill @s