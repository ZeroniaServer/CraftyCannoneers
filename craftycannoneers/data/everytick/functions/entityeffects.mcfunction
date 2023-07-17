execute if score #loaded entityid matches 1 run function entityid:real_tick
effect give @e[type=slime,tag=!PCannonballname] invisibility infinite 100 true
kill @e[type=falling_block]
kill @e[type=experience_orb]
execute as @e[type=arrow] at @s run function everytick:arrow
execute as @e[type=trident] at @s run function everytick:harpoon