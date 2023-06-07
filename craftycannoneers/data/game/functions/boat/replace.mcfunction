#> Summon new boat with correct rotation if dismounting
execute at @s[tag=DismountCheck,tag=!Sinking] positioned ~ ~-0.3 ~ store success score $boatwatercheck CmdData if predicate game:instillwater
execute if score $boatwatercheck CmdData matches 1 at @s[tag=DismountCheck,tag=!Sinking] align y positioned ~ ~0.7 ~ run function game:boat/rotatesplit
execute unless score $boatwatercheck CmdData matches 1 at @s[tag=DismountCheck,tag=!Sinking] run function game:boat/rotatesplit

#> Place new boat if sinking
execute unless score $BoatCannons CmdData matches 1 run function game:boat/placenew
execute if score $BoatCannons CmdData matches 1 run function game:boat/placenewcannon

#> Teleport previous occupant up if dismounting
execute at @s[tag=1,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat1,distance=..1] run function game:boat/dismounter
execute at @s[tag=2,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat2,distance=..1] run function game:boat/dismounter
execute at @s[tag=3,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat3,distance=..1] run function game:boat/dismounter
execute at @s[tag=4,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat4,distance=..1] run function game:boat/dismounter

#> Untag previous occupant
execute if entity @s[tag=1] run tag @a[tag=inBoat1] remove inBoat1
execute if entity @s[tag=2] run tag @a[tag=inBoat2] remove inBoat2
execute if entity @s[tag=3] run tag @a[tag=inBoat3] remove inBoat3
execute if entity @s[tag=4] run tag @a[tag=inBoat4] remove inBoat4

#> Kill old boat
execute at @s on passengers on passengers on passengers on passengers run function arenaclear:kill
execute at @s on passengers on passengers on passengers run function arenaclear:kill
execute at @s on passengers on passengers run function arenaclear:kill
execute at @s on passengers run function arenaclear:kill
kill @s