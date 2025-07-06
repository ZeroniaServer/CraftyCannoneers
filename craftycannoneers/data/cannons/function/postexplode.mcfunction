execute at @s[predicate=!cannons:safezones/island,predicate=!cannons:safezones/lobby] run function cannons:lightfill2
execute at @s[predicate=!cannons:safezones/island,predicate=!cannons:safezones/lobby,predicate=!cannons:safezones/tutorial] run function cannons:afterdamage
execute at @s[predicate=!cannons:safezones/island,predicate=!cannons:safezones/lobby,predicate=cannons:safezones/tutorial] run function cannons:afterdamagetutorial

#> Remount nearby Crabs/Sharks
execute at @s as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute at @s as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount

tag @s remove currImpactMarker
kill @s