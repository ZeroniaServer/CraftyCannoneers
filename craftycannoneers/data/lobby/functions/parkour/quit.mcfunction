tag @s remove inParkour
playsound parkourcancel master @s ~ ~ ~ 1 1.2
playsound parkourcancel master @s ~ ~ ~ 1 0.8
function game:clearinventory
function lobby:items
title @s actionbar {"text":""}
tellraw @s {"translate":"parkour.canceled","color":"red","bold":true}
tag @s remove QuitParkour