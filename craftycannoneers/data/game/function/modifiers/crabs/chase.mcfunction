execute on controller run tag @s add temp
execute on controller run ride @s dismount
damage @s 0.1 arrow by @e[type=endermite,tag=temp,limit=1]
execute as @e[type=endermite,tag=temp] run function arenaclear:kill
execute on passengers run tag @s add chase