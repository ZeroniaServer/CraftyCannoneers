execute on passengers on passengers run tag @s[type=endermite,tag=CrabController] add temp
execute on passengers on passengers run ride @s[type=endermite,tag=CrabController] dismount
execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
ride @e[type=endermite,tag=temp,limit=1] mount @s
tag @e[type=endermite,tag=temp,limit=1] remove inwater
tag @e[type=endermite,tag=temp,limit=1] remove temp
ride @e[type=item_display,tag=temp,limit=1] mount @s
tag @e[type=item_display,tag=temp,limit=1] remove temp
tag @s remove inwater