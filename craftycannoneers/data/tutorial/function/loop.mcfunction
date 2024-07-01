#> Combat Area
scoreboard players set $runcombat CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:combatarea,limit=1] run scoreboard players set $runcombat CmdData 1
execute if entity @a[team=Lobby,tag=InCombat,limit=1] run scoreboard players set $runcombat CmdData 1
execute if score $runcombat CmdData matches 1 run function tutorial:combatarea/main
function tutorial:trainingdummies/main

#> Cannon Dock
scoreboard players set $runcannon CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:cannondock,limit=1] run scoreboard players set $runcannon CmdData 1
execute if entity @a[team=Lobby,tag=OnDock,limit=1] run scoreboard players set $runcannon CmdData 1
execute if score $runcannon CmdData matches 1 run function tutorial:cannondock/main

#> Ship Timer
execute if score $shipstatus CmdData matches 1 unless entity @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/tutorial,limit=1] run function tutorial:cannondock/shiptimer
execute unless entity @a[tag=OnDock] if score $shipstatus CmdData matches 1 if score $shiptimer CmdData matches 1.. run function tutorial:cannondock/restoreship
execute unless entity @a[predicate=game:tutorialbounds] as @e[type=item_display,tag=CannonDisp,tag=Tutorial,scores={eyeclick=1..}] run scoreboard players set @s eyeclick 120

#> Watchtower
scoreboard players set $runwatchtower CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:watchtower,limit=1] run scoreboard players set $runwatchtower CmdData 1
execute if entity @a[team=Lobby,tag=InTower,limit=1] run scoreboard players set $runwatchtower CmdData 1
execute if score $runwatchtower CmdData matches 1 as @a[team=Lobby,tag=!SpotFake,tag=UsingSpyglass,predicate=tutorial:watchtower] at @s run function tutorial:raycast/check_start_ray

#> X Particles
scoreboard players set $runxparticle CmdData 0
execute if score $runcannon CmdData matches 1 run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=UsingSpyglass,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed1,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed2,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed3,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed4,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed5,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed6,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if entity @a[team=Lobby,tag=Exposed7,tag=InTower,limit=1] run scoreboard players set $runxparticle CmdData 1
execute if score $runxparticle CmdData matches 1 as @e[type=marker,tag=FXParticle,tag=!WeakpointDamaged] at @s run function tutorial:xparticles/main

execute if score $runwatchtower CmdData matches 1 run function tutorial:watchtower/main

#> Treasure Pit
scoreboard players set $runtreasure CmdData 0
execute if entity @a[team=Lobby,predicate=tutorial:treasurepit,limit=1] run scoreboard players set $runtreasure CmdData 1
execute if entity @a[team=Lobby,tag=InPit,limit=1] run scoreboard players set $runtreasure CmdData 1
execute if entity @e[type=armor_stand,tag=fakechest,tag=Looted,limit=1] run scoreboard players set $runtreasure CmdData 1
execute if entity @e[type=armor_stand,tag=fakechest,scores={CmdData=..9},limit=1] run scoreboard players set $runtreasure CmdData 1
execute if score $runtreasure CmdData matches 1 run function tutorial:treasurepit/main

#> Pirate Teachers
execute as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {Offers:{Recipes:[]},CustomName:'["",{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]',HandItems:[{id:"air"},{id:"air"}],NoAI:1b,Silent:1b}
execute as @e[type=wandering_trader,tag=Teacher] at @s run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..10]
execute as @e[type=wandering_trader,tag=CannonTeacher] at @s unless entity @a[team=Lobby,distance=..10,limit=1] run tp @s ~ ~ ~ -90 0
execute as @e[type=wandering_trader,tag=ChestTeacher] at @s unless entity @a[team=Lobby,distance=..10,limit=1] run tp @s ~ ~ ~ 90 0
execute as @e[type=wandering_trader,tag=CombatTeacher] at @s unless entity @a[team=Lobby,distance=..10,limit=1] run tp @s ~ ~ ~ 0 0
execute as @e[type=wandering_trader,tag=WeakpointTeacher] at @s unless entity @a[team=Lobby,distance=..10,limit=1] run tp @s ~ ~ ~ 180 0