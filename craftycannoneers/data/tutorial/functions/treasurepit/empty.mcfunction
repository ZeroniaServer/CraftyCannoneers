function tutorial:treasurepit/looted
playsound chestempty master @a ~ ~ ~ 1 0.6
execute unless entity @a[team=Lobby,distance=..6] run kill @s