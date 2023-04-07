execute as @e[type=witch] at @s run function everytick:witchfix
execute if score #loaded entityid matches 1 run function entityid:real_tick
execute as @e[type=villager] run function everytick:villagers
effect give @e[type=slime,tag=!PCannonballname] invisibility infinite 100 true
kill @e[type=falling_block]
kill @e[type=experience_orb]
execute as @e[type=arrow] at @s run function everytick:arrowkill