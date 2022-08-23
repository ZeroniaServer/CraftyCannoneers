#> 2 tick delay before actually dismounting
execute if entity @s[tag=1] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1] run scoreboard players add @s eyeclick 1
execute if entity @s[tag=2] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2] run scoreboard players add @s eyeclick 1
execute if entity @s[tag=3] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3] run scoreboard players add @s eyeclick 1
execute if entity @s[tag=4] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4] run scoreboard players add @s eyeclick 1

#> Cancel dismount check
execute if entity @s[tag=1] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1] run function game:boat/canceldismount
execute if entity @s[tag=2] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2] run function game:boat/canceldismount
execute if entity @s[tag=3] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3] run function game:boat/canceldismount
execute if entity @s[tag=4] if entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4] run function game:boat/canceldismount

#> Replace boat
execute at @s[scores={eyeclick=2..}] run function game:boat/replace