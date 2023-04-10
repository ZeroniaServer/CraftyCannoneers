function chests:looted
playsound chestempty master @a ~ ~ ~ 1 0.6
tag @s add ContainerLooted
execute unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] run kill @s