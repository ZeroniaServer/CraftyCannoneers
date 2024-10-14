scoreboard players add $gravetries CmdData 1
tag @s remove overlap
execute if entity @e[type=armor_stand,tag=chest,distance=..1.2,limit=1] run tag @s add overlap
execute unless entity @s[tag=overlap] if entity @e[type=hopper_minecart,distance=..1.2,limit=1] run tag @s add overlap
execute unless entity @s[tag=overlap] if entity @e[type=chest_minecart,distance=..1.2,limit=1] run tag @s add overlap
execute unless entity @s[tag=overlap] if entity @e[type=item_display,tag=BlastBarrel,distance=..1.2] run tag @s add overlap
execute unless entity @s[tag=overlap] if entity @e[type=item_display,tag=CrabTrap,distance=..1.2,limit=1] run tag @s add overlap
execute unless entity @s[tag=overlap] if entity @e[type=oak_boat,distance=..3,limit=1] run tag @s add overlap
execute at @s[tag=overlap] run spreadplayers ~ ~ 1 1 false @s
execute at @s[tag=overlap] unless score $gravetries CmdData matches 10.. run function game:modifiers/graverobbery/nooverlap