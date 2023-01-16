#> Hot Cannonball interaction
kill @e[type=armor_stand,tag=GasAS,distance=..1,limit=1,sort=nearest]
summon marker ~ ~ ~ {Tags:["ImpactMarker","GasPower"],CustomName:'{"translate":"gas_explosion"}'}
scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=GasPower,limit=1,sort=nearest] playerUUID = @s playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=GasPower] at @s unless entity @s[scores={CmdData=1..}] run function cannons:namecannonball
execute as @e[type=marker,tag=ImpactMarker,tag=GasPower] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper
particle flame ~ ~ ~ 2 2 2 1 150 force
particle flash ~ ~ ~ 0.1 0.1 0.1 0 4 force
particle large_smoke ~ ~ ~ 2 2 2 0.7 200 force
particle lava ~ ~ ~ 1 1 1 1 60 force
particle explosion_emitter ~ ~ ~ 1.5 1 1.5 1 5 force
execute at @s[predicate=cannons:ships/purple] run scoreboard players add $DamagePurple CmdData 15
execute at @s[predicate=cannons:ships/purple] run scoreboard players add $CritPurple CmdData 100
execute at @s[predicate=cannons:ships/orange] run scoreboard players add $DamageOrange CmdData 15
execute at @s[predicate=cannons:ships/orange] run scoreboard players add $CritOrange CmdData 100
function cannons:gas/hitmarker
summon minecraft:lightning_bolt ~ ~300000 ~
playsound gasexplode master @a ~ ~ ~ 4 1
playsound gasexplode_distant master @a[distance=15..] ~ ~ ~ 8 1
kill @s