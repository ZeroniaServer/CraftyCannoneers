#> Break Empty Barrels
execute unless score @s CmdData matches 1.. at @s run particle item{item:{id:"mooshroom_spawn_egg",components:{"minecraft:custom_model_data":{floats:[1.0f]}}}} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force @a[team=!Lobby]
execute unless score @s CmdData matches 1.. at @s run playsound blastbarrelbreak master @a[distance=..2] ~ ~ ~ 0.4 0.9
execute unless score @s CmdData matches 1.. at @s run playsound blastbarrelbreak master @a[distance=2.0001..3] ~ ~ ~ 0.2 0.9
execute unless score @s CmdData matches 1.. at @s run playsound blastbarrelbreak master @a[distance=3.0001..] ~ ~ ~ 0.1 0.9
execute unless score @s CmdData matches 1.. run loot spawn ~ ~0.1 ~ loot weapons:barrel
execute unless score @s CmdData matches 1.. run kill

#> Ignite Full Barrels
scoreboard players add @s eyeclick 1
execute at @s[scores={eyeclick=2}] run playsound blastbarrelignite master @a ~ ~ ~ 1 1
execute at @s[scores={eyeclick=2}] run playsound blastbarrelburn master @a ~ ~ ~ 1 1

execute at @s[scores={eyeclick=2}] run particle soul_fire_flame ^0.46 ^0.12 ^ .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={eyeclick=2}] run particle soul_fire_flame ^-0.46 ^0.12 ^ .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={eyeclick=5..}] run particle flame ^0.4 ^0.54 ^ .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={eyeclick=5..}] run particle flame ^-0.4 ^0.54 ^ .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]

execute at @s[scores={eyeclick=10..20}] run particle smoke ~ ~1.3 ~ 0.1 0.4 0.1 0.01 1 force @a[team=!Lobby]
execute at @s[scores={eyeclick=60..}] run particle flame ~ ~1.3 ~ 0.1 0.4 0.1 0.01 1 force @a[team=!Lobby]
execute at @s[scores={eyeclick=70..}] run particle lava ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a[team=!Lobby]

execute at @s[scores={eyeclick=10,CmdData=10}] run playsound blastbarrelcharge master @a ~ ~ ~ 2 1

execute at @s[scores={eyeclick=10,CmdData=6..9}] run playsound blastbarrelcharge master @a ~ ~ ~ 2 1.5
scoreboard players set @s[scores={eyeclick=10,CmdData=6..9}] eyeclick 38

execute at @s[scores={eyeclick=10,CmdData=1..5}] run playsound blastbarrelcharge master @a ~ ~ ~ 2 2
scoreboard players set @s[scores={eyeclick=10,CmdData=1..5}] eyeclick 55

#Fire models
item replace entity @s[scores={eyeclick=2}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[12.0f]}]
item replace entity @s[scores={eyeclick=58}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[13.0f]}]
item replace entity @s[scores={eyeclick=60..95}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[14.0f]}]
item replace entity @s[scores={eyeclick=95..}] container.0 with air

#> Light blocks
execute at @s[scores={eyeclick=2..}] positioned ~ ~ ~ run function weapons:barrel/light
execute at @s[scores={eyeclick=2..}] positioned ~ ~1 ~ run function weapons:barrel/light
execute at @s[scores={eyeclick=2..}] positioned ~ ~ ~1 run function weapons:barrel/light
execute at @s[scores={eyeclick=2..}] positioned ~ ~ ~-1 run function weapons:barrel/light
execute at @s[scores={eyeclick=2..}] positioned ~1 ~ ~ run function weapons:barrel/light
execute at @s[scores={eyeclick=2..}] positioned ~-1 ~ ~ run function weapons:barrel/light

execute at @s[scores={eyeclick=80}] run data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{scale:[1.2f,0.9f,1.2f]}}
execute at @s[scores={eyeclick=94}] run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[1.3f,1.3f,1.3f]}}

execute at @s[scores={eyeclick=94}] positioned ~ ~-0.05 ~ run function weapons:barrel/levitate
execute at @s[scores={eyeclick=95,CmdData=10}] positioned ~ ~-0.05 ~ run function weapons:barrel/tier3
execute at @s[scores={eyeclick=95,CmdData=6..9}] positioned ~ ~-0.05 ~ run function weapons:barrel/tier2
execute at @s[scores={eyeclick=95,CmdData=1..5}] positioned ~ ~-0.05 ~ run function weapons:barrel/tier1

#> Remount nearby Crabs/Sharks
execute at @s[scores={eyeclick=98}] as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute at @s[scores={eyeclick=98}] as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount
kill @s[scores={eyeclick=98..}]