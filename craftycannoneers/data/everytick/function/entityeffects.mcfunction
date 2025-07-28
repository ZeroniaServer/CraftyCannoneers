execute if score #loaded entityid matches 1 run function entityid:real_tick
effect give @e[type=slime,tag=!PCannonballname] invisibility infinite 100 true
execute as @e[type=slime] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_fire":true}}} run data modify entity @s Fire set value -20
kill @e[type=falling_block]
kill @e[type=experience_orb]
execute as @e[type=arrow] at @s run function everytick:arrow
execute as @e[type=trident] at @s run function everytick:harpoon