#> Hide the items
execute if entity @s[tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:cbdisplays/hide

#> Show the items
execute if entity @s[tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:cbdisplays/show