function chests:looted
execute if entity @s[tag=!grave,tag=!CargoHopper] run playsound chestempty master @a ~ ~ ~ 0.9 0.6
execute if entity @s[tag=CargoHopper] run playsound cargobarrelempty master @a ~ ~ ~ 0.9 0.6
execute if entity @s[tag=grave] run playsound graveempty master @a ~ ~ ~ 0.9 0.6
tag @s add ContainerLooted
execute unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] on passengers run kill
execute unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] run kill