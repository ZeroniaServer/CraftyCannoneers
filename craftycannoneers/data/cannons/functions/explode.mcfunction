execute as @s[tag=!Hit1] at @s unless entity @s[predicate=cannons:safezones/island] run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute as @s[tag=!Hit1] at @s unless entity @s[predicate=cannons:safezones/island] run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute as @s at @s run tp @s ^ ^ ^1
#>Safezone check
#Island
execute as @s at @s if entity @s[predicate=cannons:safezones/island] run tag @s add InSafezone
#Cannons
execute as @s at @s if entity @e[tag=cannon,distance=..2] run tag @s add InSafezone
#Purple
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/1] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/2] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/3] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/4] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/purple/5] run tag @s add InSafezone
#Orange
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/1] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/2] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/3] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/4] run tag @s add InSafezone
execute as @s at @s if entity @s[predicate=cannons:safezones/orange/5] run tag @s add InSafezone

#FIREBALL EFFECT
execute as @s[tag=!InSafezone,tag=!Hit1,tag=HotCannonball] unless entity @s[scores={doublehit=1..}] at @s run summon marker ^ ^-2 ^3 {Tags:["RingOfFire"]}
#GAS EFFECT
execute as @s[tag=!InSafezone,tag=Hit1,tag=GasCannonball] at @s run summon marker ^ ^-2 ^3 {Tags:["GasCloud"]}

execute as @s[tag=InSafezone,tag=!Hit1] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute as @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..}] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}

execute as @s[tag=!InSafezone,tag=!Hit1] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}

execute as @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..}] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2"]}

execute as @e[tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper


execute as @s[tag=!Hit1] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute as @s[tag=Hit1,scores={doublehit=4..}] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
tag @s[tag=Hit1,scores={doublehit=4..}] add Hit2
tag @s add Hit1

kill @s[tag=Hit2]