#> Summon new boat with correct rotation if dismounting
tag @s[tag=DismountCheck,tag=!Sinking] add Replace
execute at @s positioned ~ ~-0.3 ~ store success score $boatwatercheck CmdData if predicate game:instillwater
execute if score $boatwatercheck CmdData matches 1 at @s[tag=Replace] align y positioned ~ ~0.7 ~ run function game:boat/rotate
execute unless score $boatwatercheck CmdData matches 1 at @s[tag=Replace] run function game:boat/rotate

#> Place new boat if sinking
execute if entity @s[tag=Sinking] run function game:boat/placenew

#> Teleport previous occupant up if dismounting
execute at @s[tag=1,tag=Replace] as @a[tag=inBoat1,distance=..1] run function game:boat/dismounter
execute at @s[tag=2,tag=Replace] as @a[tag=inBoat2,distance=..1] run function game:boat/dismounter
execute at @s[tag=3,tag=Replace] as @a[tag=inBoat3,distance=..1] run function game:boat/dismounter
execute at @s[tag=4,tag=Replace] as @a[tag=inBoat4,distance=..1] run function game:boat/dismounter

#> Untag previous occupant
execute if entity @s[tag=1] run tag @a[tag=inBoat1] remove inBoat1
execute if entity @s[tag=2] run tag @a[tag=inBoat2] remove inBoat2
execute if entity @s[tag=3] run tag @a[tag=inBoat3] remove inBoat3
execute if entity @s[tag=4] run tag @a[tag=inBoat4] remove inBoat4

#> Kill old boat
function game:boat/cannon/kill