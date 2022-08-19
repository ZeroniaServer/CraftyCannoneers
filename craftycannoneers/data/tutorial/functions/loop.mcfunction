#> Combat Area
scoreboard players set $runcombat CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:combatarea] run scoreboard players set $runcombat CmdData 1
execute if entity @a[team=Lobby,predicate=tutorial:combatarea2] run scoreboard players set $runcombat CmdData 1
execute if entity @a[team=Lobby,tag=InCombat] run scoreboard players set $runcombat CmdData 1
execute if score $runcombat CmdData matches 1 run function tutorial:combatarea
function tutorial:trainingdummies/functionality

#> Cannon Dock
scoreboard players set $runcannon CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:cannondock] run scoreboard players set $runcannon CmdData 1
execute if entity @a[team=Lobby,tag=OnDock] run scoreboard players set $runcannon CmdData 1
execute if score $runcannon CmdData matches 1 run function tutorial:cannondock
function tutorial:shiptimer

#> Watchtower
scoreboard players set $runwatchtower CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:watchtower] run scoreboard players set $runwatchtower CmdData 1
execute if entity @a[team=Lobby,tag=InTower] run scoreboard players set $runwatchtower CmdData 1

scoreboard players set $runxparticle CmdData 0
execute if score $runcannon CmdData matches 1 run scoreboard players set $runxparticle CmdData 1
execute if score $runwatchtower CmdData matches 1 run scoreboard players set $runxparticle CmdData 1
execute if score $runxparticle CmdData matches 1 as @e[type=marker,tag=FXParticle,tag=!WeakpointDamaged] at @s run function tutorial:xparticle

execute if score $runwatchtower CmdData matches 1 run function tutorial:watchtower

#> Treasure Pit
function tutorial:treasurepit

#> Pirate Teachers
execute as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {HandItems:[],Offers:{Recipes:[]}}
effect clear @e[type=wandering_trader,tag=Teacher] invisibility
execute as @e[type=wandering_trader,tag=Teacher] at @s run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..10]