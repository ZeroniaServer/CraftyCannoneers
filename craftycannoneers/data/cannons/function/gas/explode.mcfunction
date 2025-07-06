#> Hot Cannonball interaction
execute as @e[type=item_display,tag=GasDisplay,distance=..1,limit=1,sort=nearest] on vehicle run function cannons:gas/cloudkill
summon marker ~ ~ ~ {Tags:["ImpactMarker","GasPower"],CustomName:{translate:"gas_explosion.generic"}}
scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=GasPower,limit=1,sort=nearest] playerUUID = @s playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=GasPower] at @s unless score @s CmdData matches 1.. run function cannons:namecannonball
particle flame ~ ~ ~ 2 2 2 1 150 force @a[predicate=cannons:seeparticles]
particle flash ~ ~ ~ 0.1 0.1 0.1 0 4 force @a[predicate=cannons:seeparticles]
particle large_smoke ~ ~ ~ 2 2 2 0.7 200 force @a[predicate=cannons:seeparticles]
particle lava ~ ~ ~ 1 1 1 1 60 force @a[predicate=cannons:seeparticles]
particle explosion_emitter ~ ~ ~ 1.5 1 1.5 1 5 force @a[predicate=cannons:seeparticles]
execute if predicate cannons:ships/purple run scoreboard players add $DamagePurple CmdData 15
execute if predicate cannons:ships/purple run scoreboard players add $CritPurple CmdData 100
execute if predicate cannons:ships/orange run scoreboard players add $DamageOrange CmdData 15
execute if predicate cannons:ships/orange run scoreboard players add $CritOrange CmdData 100
function cannons:gas/hitmarker
summon minecraft:lightning_bolt ~ ~300000 ~
playsound gasexplode master @a ~ ~ ~ 4 1
playsound gasexplode_distant master @a[distance=15..] ~ ~ ~ 8 1
kill @s