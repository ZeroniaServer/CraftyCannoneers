#> Replace boat
execute if entity @s[tag=1] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1] run function game:boat/replace
execute if entity @s[tag=2] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2] run function game:boat/replace
execute if entity @s[tag=3] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3] run function game:boat/replace
execute if entity @s[tag=4] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4] run function game:boat/replace