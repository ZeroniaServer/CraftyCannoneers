#> Combat Area
scoreboard players set $runcombat CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:combatarea] run scoreboard players set $runcombat CmdData 1
execute if entity @a[team=Lobby,predicate=tutorial:combatarea2] run scoreboard players set $runcombat CmdData 1
execute if entity @a[team=Lobby,tag=InCombat] run scoreboard players set $runcombat CmdData 1
execute if score $runcombat CmdData matches 1 run function tutorial:combatarea
function tutorial:trainingdummies/main

#> Cannon Dock
scoreboard players set $runcannon CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:cannondock] run scoreboard players set $runcannon CmdData 1
execute if entity @a[team=Lobby,tag=OnDock] run scoreboard players set $runcannon CmdData 1
execute if score $runcannon CmdData matches 1 run function tutorial:cannondock

#> Ship Timer
execute if score $shipstatus CmdData matches 1 unless entity @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/tutorial] run function tutorial:shiptimer
execute unless entity @a[tag=OnDock] if score $shipstatus CmdData matches 1 if score $shiptimer CmdData matches 1.. run function tutorial:restoreship
execute unless entity @a[predicate=game:tutorialbounds] as @e[type=armor_stand,tag=CannonDisp,tag=Tutorial,scores={eyeclick=1..}] run scoreboard players set @s eyeclick 120
execute as @e[type=marker,tag=ShipRestore] at @s run function tutorial:restoreloop

#> Watchtower
scoreboard players set $runwatchtower CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:watchtower] run scoreboard players set $runwatchtower CmdData 1
execute if entity @a[team=Lobby,tag=InTower] run scoreboard players set $runwatchtower CmdData 1

#> X Particles
scoreboard players set $runxparticle CmdData 0
execute if score $runcannon CmdData matches 1 run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=UsingSpyglass,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed1,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed2,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed3,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed4,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed5,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed6,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed7,tag=InTower] run scoreboard players set $runxparticle CmdData 1
execute if score $runxparticle CmdData matches 1 as @e[type=marker,tag=FXParticle,tag=!WeakpointDamaged] at @s run function tutorial:xparticle

execute if score $runwatchtower CmdData matches 1 run function tutorial:watchtower

#> Treasure Pit
scoreboard players set $runtreasure CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:treasurepit] run scoreboard players set $runtreasure CmdData 1
execute if entity @a[team=Lobby,tag=InPit] run scoreboard players set $runtreasure CmdData 1
execute if entity @e[type=#game:chest,tag=fakechest,tag=Looted] run scoreboard players set $runtreasure CmdData 1
execute if entity @e[type=#game:chest,tag=fakechest,scores={CmdData=..10}] run scoreboard players set $runtreasure CmdData 1
execute if score $runtreasure CmdData matches 1 run function tutorial:treasurepit

#> Pirate Teachers
execute as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {Offers:{Recipes:[]}}
execute as @e[type=wandering_trader,tag=Teacher] at @s run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..10]