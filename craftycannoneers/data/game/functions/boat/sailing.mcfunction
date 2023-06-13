#> Prevent automatic dismounting via 7 tick delay
execute unless score @s click matches 7.. run scoreboard players add @s click 1
execute if score @s click matches 7.. run tag @s add DismountCheck

#> Hide interaction
data modify entity @s[tag=!hideinteraction] Invulnerable set value 0b
execute unless entity @s[tag=hideinteraction] on passengers run data merge entity @s {width:0,height:0,response:0b}
tag @s[tag=!hideinteraction] add hideinteraction

#> Invulnerable against Harpoons
execute store success score $harpoonnearby CmdData if entity @e[type=trident,limit=1,distance=..6]
execute store result entity @s Invulnerable byte 1 run scoreboard players get $harpoonnearby CmdData

#> Explode Cargo Traps
execute if score $LostCargo CmdData matches 1 as @e[type=villager,tag=CBTrap,distance=..1] on vehicle run tag @s add TrapExplode

#> Dismount check
execute at @s[tag=DismountCheck,tag=!Sinking] run function game:boat/dismountcheck