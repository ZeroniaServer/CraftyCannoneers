#> Prevent automatic dismounting via 7 tick delay
execute unless score @s click matches 7.. run scoreboard players add @s click 1
execute if score @s click matches 7.. run tag @s add DismountCheck

#> Dismount check
execute at @s[tag=DismountCheck,tag=!Sinking] run function game:boat/dismountcheck