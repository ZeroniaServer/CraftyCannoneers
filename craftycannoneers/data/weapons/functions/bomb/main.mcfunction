#> Functionality
execute as @e[type=armor_stand,tag=Bomb] at @s run function weapons:bomb/functionality

#> Blasted players
scoreboard players add @a[tag=Blasted] blasttime 1
tag @a[tag=Blasted,scores={blasttime=6..}] remove Blasted
execute as @a[tag=!Blasted,scores={blasttime=1..}] run scoreboard players reset @s blasttime

#> Blast entities
execute as @e[type=slime,tag=BlastSlime] at @s run function weapons:bomb/slime
execute as @e[type=area_effect_cloud,tag=BlastAEC] at @s run function weapons:bomb/aec