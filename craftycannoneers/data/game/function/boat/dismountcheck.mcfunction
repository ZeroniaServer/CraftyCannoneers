#> Handle motion locked boats
execute if entity @s[tag=motionlock] run scoreboard players set $hasplayer CmdData 0
execute if entity @s[tag=motionlock] on passengers on passengers if entity @s[type=player] run scoreboard players set $hasplayer CmdData 1
execute if entity @s[tag=motionlock] if score $hasplayer CmdData matches 0 run function game:boat/replace
execute if entity @s[tag=motionlock] run return 0

#> Replace boat
execute if entity @s[tag=1] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1,limit=1] run function game:boat/replace
execute if entity @s[tag=2] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2,limit=1] run function game:boat/replace
execute if entity @s[tag=3] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3,limit=1] run function game:boat/replace
execute if entity @s[tag=4] unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4,limit=1] run function game:boat/replace