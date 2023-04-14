#> Empty
execute at @s[tag=!Looted,nbt={Items:[]},tag=!LoadLoot] run function tutorial:treasurepit/empty

#> Abandoned
execute unless entity @a[team=Lobby,distance=..7] run function tutorial:treasurepit/abandoned