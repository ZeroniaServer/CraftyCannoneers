#> Prevent automatic dismounting via 7 tick delay
execute unless score @s click matches 7.. run scoreboard players add @s click 1
execute if score @s click matches 7.. run tag @s add DismountCheck

#> Hide interaction
data modify entity @s[tag=!hideinteraction] Invulnerable set value 0b
execute on passengers run data merge entity @s[tag=boatoccupant,tag=!hidden] {width:0,height:0,response:0b}
execute on passengers run tag @s[tag=boatoccupant,tag=!hidden] add hidden

#> Boat invulnerability conditions with nearby projectiles/players
execute store success score $arrownearby CmdData if entity @e[type=arrow,limit=1,distance=..6]
execute if score $arrownearby CmdData matches 1 run data modify entity @s Invulnerable set value 0b
execute if entity @a[limit=1,predicate=!game:boat/inboat,distance=..6] run data modify entity @s Invulnerable set value 1b
execute if entity @e[type=trident,limit=1,distance=..6] run data modify entity @s Invulnerable set value 1b
execute unless score $arrownearby CmdData matches 1 run data modify entity @s Invulnerable set value 1b

#> Explode Cargo Traps
execute if score $LostCargo CmdData matches 1 as @e[type=husk,tag=CBTrap,distance=..1] on vehicle run tag @s add TrapExplode

#> Dismount check
execute at @s[tag=DismountCheck,tag=!Sinking] run function game:boat/dismountcheck