fill ~5 ~-10 ~5 ~-5 ~20 ~-5 air replace fire
tp @s[tag=!StormEntity] ~ 500 ~
execute if entity @s[tag=!StormEntity,tag=!damaged] as @a[team=!Lobby,team=!Spectator,distance=..3] run damage @s 5 lightning_bolt at ~ ~ ~
tag @s[tag=!StormEntity,tag=!damaged] add damaged