tag @s remove inParkour
tag @s remove resettimeonce
execute positioned -71 -21 -1 if entity @s[distance=10..] at @s run tp @s @s
execute positioned -71 -21 -1 if entity @s[distance=10..] at @s run tp @s -71 -21 -1 90 0
execute positioned -71 -21 -1 unless entity @s[distance=10..] run tellraw @s {"translate":"parkour.canceled","color":"red","bold":true}
execute positioned -71 -21 -1 unless entity @s[distance=10..] run function game:clearinventory
execute positioned -71 -21 -1 unless entity @s[distance=10..] run function lobby:items
execute at @s run playsound parkourcancel master @s ~ ~ ~ 1 1.2
execute at @s run playsound parkourcancel master @s ~ ~ ~ 1 0.8
clear @s carrot_on_a_stick
title @s actionbar {"text":""}
tag @s remove CancelParkour