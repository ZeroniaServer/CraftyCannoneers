#> Empty
execute at @s[tag=!Looted,tag=!LoadLoot,nbt={Items:[]}] run function chests:empty

#> Abandoned
execute unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] run function chests:abandoned