clear @s
function lobby:hats
playsound ding master @s ~ ~ ~ 1 0.6
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @e[type=item] if entity @s[nbt={Item:{tag:{NoDrop:1b}}}] run function tutorial:killitems
scoreboard players reset $tempuuid playerUUID