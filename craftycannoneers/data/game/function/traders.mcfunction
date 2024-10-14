rotate @s facing entity @p[gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer,distance=..10]
execute at @s[tag=Orange] unless entity @a[gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer,distance=..10,limit=1] run rotate @s 180 0
execute at @s[tag=Purple] unless entity @a[gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer,distance=..10,limit=1] run rotate @s 0 0
effect clear @s invisibility