#> Prevent certain items from being stored in chests
function chests:preventitems

#> Empty
execute unless data storage craftycannoneers:chest Inventory[] at @s[tag=!Looted,tag=!LoadLoot] run function chests:empty

#> Abandoned
execute unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] at @s[tag=!Looted,tag=!grave] run function chests:abandoned