#> Dust particles
execute at @s[tag=!Locked] run particle falling_dust light_gray_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,predicate=!game:tutorialbounds]

#> Join team
execute at @s[tag=!Locked] run tag @a[team=Lobby,limit=1,sort=random,distance=..1.2] add JoinSpec