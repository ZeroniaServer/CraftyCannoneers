#> Empty
execute at @s[nbt={Items:[]}] run function tutorial:treasurepit/empty

#> Abandoned
execute unless entity @a[team=Lobby,distance=..7] run function tutorial:treasurepit/abandoned