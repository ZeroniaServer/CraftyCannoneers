title @s title {"text":" "}
title @s subtitle {"text":" "}
clear @s
function lobby:items
tag @s add exiter
execute as @e[type=item] if items entity @s contents *[custom_data~{NoDrop:1b}] run function tutorial:killitems
tag @s remove exiter