tag @s add steal
tag @s remove follow
tag @s remove roam
scoreboard players reset @s crabtime
scoreboard players set @s crabmode 100
execute on vehicle on controller run attribute @s follow_range base set 16
execute on vehicle if entity @s[tag=Orange] run team join Orange
execute on vehicle if entity @s[tag=Orange] on controller run team join Orange
execute on vehicle if entity @s[tag=Purple] run team join Purple
execute on vehicle if entity @s[tag=Purple] on controller run team join Purple