execute if entity @s[tag=ToIsland] run particle falling_dust light_blue_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]
execute if entity @s[tag=ToIsland] as @a[team=Lobby,tag=!Warped,distance=..1.2] run function tutorial:warppads/toisland

execute if entity @s[tag=FromIsland] run particle falling_dust light_blue_concrete ~ ~1 ~ 0.7 0.3 0.7 0 1 normal @a[team=Lobby,tag=!inParkour,predicate=game:tutorialbounds]
execute if entity @s[tag=FromIsland] as @a[team=Lobby,tag=!Warped,distance=..1.2] run function tutorial:warppads/fromisland