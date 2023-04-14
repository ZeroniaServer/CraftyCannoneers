#> Sailing check
execute at @s[tag=1,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1,limit=1] run tag @s add Sailing
execute at @s[tag=2,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2,limit=1] run tag @s add Sailing
execute at @s[tag=3,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3,limit=1] run tag @s add Sailing
execute at @s[tag=4,tag=!Sinking] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4,limit=1] run tag @s add Sailing

#> Idle teleport while in water (prevents collision glitches)
execute at @s[tag=!Sailing,tag=!Sinking] positioned ~ ~-0.3 ~ if predicate game:instillwater at @s align y run tp @s ~ ~0.7 ~

#> Sailing
execute at @s[tag=Sailing] run function game:boat/sailing

#> Sinking check
execute at @s[tag=1,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 109 -31 0 unless entity @s[distance=..8] run tag @s add Sinking
execute at @s[tag=2,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 31 -31 0 unless entity @s[distance=..8] run tag @s add Sinking
execute at @s[tag=3,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 83 -31 12 unless entity @s[distance=..8] run tag @s add Sinking
execute at @s[tag=4,tag=!Sailing] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] positioned 57 -31 -12 unless entity @s[distance=..8] run tag @s add Sinking

#> Sinking
execute at @s[tag=Sinking] run function game:boat/sinking

#> No entity collision
team join NoName

#> Fix clipping into the floor
execute if entity @s[tag=!Sinking,predicate=cannons:ships/orange,predicate=cannons:ships/underbottom,predicate=!game:instillwater] run tp @s ~ -34 ~
execute if entity @s[tag=!Sinking,predicate=cannons:ships/purple,predicate=cannons:ships/underbottom,predicate=!game:instillwater] run tp @s ~ -34 ~