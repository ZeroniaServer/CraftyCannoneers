execute at @s[team=Purple] run effect give @a[team=Purple,distance=0.001..7] strength 28 1 true
execute at @s[team=Purple] run effect give @a[team=Purple,distance=7.1..14] strength 20 1 true
execute at @s[team=Purple] run effect give @a[team=Purple,distance=14.1..20] strength 20 0 true
execute at @s[team=Purple] run effect give @a[team=Purple,distance=20.1..] strength 16 0 true
execute at @s[team=Purple] run effect give @a[team=Purple] regeneration 1 4 true
execute at @s[team=Purple] run effect give @a[team=Purple] haste 12 1 true
execute at @s[team=Purple] as @a[team=Purple] at @s run particle note ~ ~1 ~ 0.4 0.6 0.4 0.1 15 force @a[team=!Lobby]
execute at @s[team=Purple] as @a[team=Purple] at @s run particle note ^ ^1 ^0.6 0.3 0.3 0.3 0.1 10 force @s
execute at @s[team=Purple] as @a[team=Purple] at @s run playsound block.note_block.flute master @s ~ ~ ~ 1 0

execute at @s[team=Orange] run effect give @a[team=Orange,distance=0.001..7] strength 28 1 true
execute at @s[team=Orange] run effect give @a[team=Orange,distance=7.1..14] strength 20 1 true
execute at @s[team=Orange] run effect give @a[team=Orange,distance=14.1..20] strength 20 0 true
execute at @s[team=Orange] run effect give @a[team=Orange,distance=20.1..] strength 16 0 true
execute at @s[team=Orange] run effect give @a[team=Orange] regeneration 1 4 true
execute at @s[team=Orange] run effect give @a[team=Orange] haste 12 1 true
execute at @s[team=Orange] as @a[team=Orange] at @s run particle note ~ ~1 ~ 0.4 0.6 0.4 0.1 15 force @a[team=!Lobby]
execute at @s[team=Orange] as @a[team=Orange] at @s run particle note ^ ^1 ^0.6 0.3 0.3 0.3 0.1 10 force @s
execute at @s[team=Orange] as @a[team=Orange] at @s run playsound block.note_block.flute master @s ~ ~ ~ 1 0

effect give @s strength 20 0 true

item replace entity @s[predicate=game:horn_mainhand,gamemode=!creative] weapon.mainhand with air
item replace entity @s[predicate=game:horn_offhand,gamemode=!creative] weapon.offhand with air
title @s subtitle {"text":" ","color":"white"}

execute at @s[team=Orange] run playsound raidhorn master @a[team=Orange] ~ ~ ~ 6 1
execute at @s[team=Orange] run playsound raidhornenemy master @a[team=!Orange,team=!Lobby] ~ ~ ~ 6 1
execute at @s[team=Purple] run playsound raidhorn master @a[team=Purple] ~ ~ ~ 6 1
execute at @s[team=Purple] run playsound raidhornenemy master @a[team=!Purple,team=!Lobby] ~ ~ ~ 6 1
scoreboard players reset @s horntime