scoreboard players add @s[tag=Opened] eyeclick 1

#> Empty
execute at @s[tag=!Looted,nbt={Items:[]}] run function tutorial:treasurepit/empty

#> Abandoned
execute at @s[tag=!Looted] unless entity @a[team=Lobby,distance=..7] run function tutorial:treasurepit/abandoned