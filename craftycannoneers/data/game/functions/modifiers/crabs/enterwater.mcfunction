execute on controller run tag @s add temp
execute on controller run ride @s dismount
execute on passengers run ride @e[type=endermite,tag=temp,limit=1] mount @s
tag @e[type=endermite,tag=temp,limit=1] add inwater
tag @e[type=endermite,tag=temp,limit=1] remove temp
tag @s add inwater