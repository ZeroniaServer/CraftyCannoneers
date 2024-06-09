clear @s
function lobby:hats
playsound ding master @s ~ ~ ~ 1 0.6
tag @s add exiter
execute as @e[type=item] if items entity @s contents *[custom_data~{NoDrop:1b}] run function tutorial:killitems
tag @s remove exiter