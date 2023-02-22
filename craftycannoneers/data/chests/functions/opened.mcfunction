#> Empty
execute at @s[tag=!Looted,scores={LootLoader=32..},nbt={Items:[]}] run function chests:empty

#> Abandoned
execute unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] run function chests:abandoned