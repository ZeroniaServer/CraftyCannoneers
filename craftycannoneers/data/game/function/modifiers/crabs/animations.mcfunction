#> Rotate with vehicle
execute on vehicle rotated as @s on passengers run rotate @s[tag=CrabDisplay] ~ 0
execute on vehicle rotated as @s on passengers on passengers run rotate @s[type=item_display] ~ 0

#> Moving detection
tag @s remove Moving
execute unless score $crabrave CmdData matches 1 run function game:modifiers/crabs/detectmove

#> Pinch when in steal mode
execute if entity @s[tag=steal] run function game:modifiers/crabs/pinch

#> Water detection - allows crab to swim
execute on vehicle at @s[tag=!inwater,predicate=game:inwater] run function game:modifiers/crabs/enterwater
execute on vehicle at @s[tag=inwater,predicate=!game:inwater] run function game:modifiers/crabs/exitwater
execute on vehicle at @s[tag=inwater,predicate=game:inwater] on controller if entity @s[type=endermite] on vehicle run function game:modifiers/crabs/enterwater

#> Despawn if in water for too long
execute on vehicle at @s[tag=inwater,predicate=game:inwater] unless entity @a[team=!Lobby,team=!Spectator,distance=..7] on passengers run scoreboard players add @s[tag=CrabDisplay] drowning 1
execute on vehicle at @s[tag=!inwater,predicate=!game:inwater] on passengers run scoreboard players remove @s[tag=CrabDisplay,scores={drowning=1..}] drowning 2
scoreboard players set @s[scores={drowning=..-1}] drowning 0
execute if score @s drowning matches 200.. on vehicle run function game:modifiers/crabs/killcrab

#> Swim towards players if underwater
execute if entity @s[tag=!roam] on vehicle run function game:modifiers/crabs/detectstuck
execute unless score $crabrave CmdData matches 1 on vehicle at @s[tag=waterstuck] run function game:modifiers/crabs/waterstuck

#> Mode switching
scoreboard players reset @s[tag=hasitem,scores={crabtime=1..}] crabtime
scoreboard players add @s[tag=!hasitem] crabtime 1
execute if entity @a[team=!Spectator,distance=..8] run scoreboard players set @s[tag=follow] crabtime 100
execute if entity @s[tag=!hasitem,scores={crabtime=100..}] run function game:modifiers/crabs/switchmode

#> Make sprints temporary
scoreboard players add @s[tag=itemsprint] CmdData 1
execute at @s[tag=itemsprint,scores={CmdData=..3}] on vehicle run damage @s 0.1 sonic_boom by @s
execute at @s[tag=itemsprint,scores={CmdData=4..}] on vehicle at @a[team=Orange,distance=..5,limit=1,sort=nearest] run damage @s[tag=Purple] 0.1 sonic_boom at ~ ~ ~
execute at @s[tag=itemsprint,scores={CmdData=4..}] on vehicle at @a[team=Purple,distance=..5,limit=1,sort=nearest] run damage @s[tag=Orange] 0.1 sonic_boom at ~ ~ ~
execute at @s[tag=itemsprint,scores={CmdData=4..}] on vehicle at @a[distance=..5,limit=1,sort=nearest] run damage @s[tag=!Purple,tag=!Orange] 0.1 sonic_boom at ~ ~ ~
execute if score @s[tag=chase] CmdData matches 50.. on vehicle run function game:modifiers/crabs/return
execute if score @s CmdData matches 50.. run function game:modifiers/crabs/endsprint

#> Detect release from Crab Traps
execute on vehicle unless entity @e[type=item_display,tag=CrabTrap,limit=1,distance=..2] run tag @s remove justReleased

#> Crab Rave
execute if score $crabrave CmdData matches 1 run item replace entity @s container.0 with diamond_hoe[custom_model_data={floats:[119.0f]}]
execute if score $crabrave CmdData matches 1 at @s run particle note ~ ~0.2 ~ 0.2 0.2 0.2 0.1 1 force @a[team=!Lobby]
execute if score $crabrave CmdData matches 1 on vehicle run effect give @s slowness 1 100 true
execute if score $ravetime CmdData matches 100.. at @s run function game:modifiers/crabs/endrave

#> Crab Trap Immunity
execute on vehicle run scoreboard players add @s[tag=CrabtrapImmune] eyeclick 1
execute if entity @s[tag=!chase] on vehicle at @s[tag=CrabtrapImmune,scores={eyeclick=1}] run function game:modifiers/crabs/chase
execute if entity @s[tag=!roam] on vehicle if entity @s[tag=CrabtrapImmune,scores={eyeclick=1}] on passengers if entity @s[type=item_display] run function game:modifiers/crabs/forceroammode
execute if entity @s[tag=chase] on vehicle at @s[tag=CrabtrapImmune,scores={eyeclick=40..}] run function game:modifiers/crabs/return
execute on vehicle run tag @s[tag=CrabtrapImmune,scores={eyeclick=40..}] remove CrabtrapImmune
execute on vehicle run scoreboard players reset @s[tag=!CrabtrapImmune,scores={eyeclick=1..}] eyeclick

#> Crab tracking
scoreboard players add $curr crabs 1
execute on passengers if items entity @s contents mooshroom_spawn_egg[custom_data~{CrabTrap:1b,Empty:0b}] run scoreboard players add $curr crabs 1

#> Vehicle permababy
execute on vehicle run function everytick:permababy

#> Controller lifetime
execute on vehicle on controller if entity @s[type=endermite] run function game:modifiers/crabs/lifetime