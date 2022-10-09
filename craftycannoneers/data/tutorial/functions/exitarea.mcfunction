title @s title {"text":" "}
title @s subtitle {"text":" "}
clear @s
function lobby:items
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @e[type=item] if entity @s[nbt={Item:{tag:{NoDrop:1b}}}] run function tutorial:killitems
scoreboard players reset $tempuuid playerUUID