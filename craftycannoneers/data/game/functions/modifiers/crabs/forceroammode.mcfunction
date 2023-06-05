tag @s add roam
tag @s remove follow
tag @s remove steal
execute on vehicle on controller run attribute @s minecraft:generic.follow_range base set 0
execute on vehicle unless entity @s[tag=!Orange,tag=!Purple] run team join Blank
execute on vehicle unless entity @s[tag=!Orange,tag=!Purple] on controller run team join Blank