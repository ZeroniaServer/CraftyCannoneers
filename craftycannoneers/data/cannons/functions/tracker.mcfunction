summon snowball ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:slime_ball",count:1},Tags:["cbtracker","new"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Item:{id:"minecraft:slime_ball",count:1},Tags:["cbtracker"]}]}
summon marker ~ ~ ~ {Tags:["cbmarker","new"]}
ride @e[type=snowball,tag=cbtracker,tag=new,limit=1] mount @s
execute on passengers run tag @s remove new
execute on passengers run data modify entity @s[tag=cbtracker] Owner set from entity @e[type=marker,tag=cbmarker,tag=new,limit=1] UUID
execute on passengers on origin run tag @s remove new
summon marker ~ ~ ~ {Tags:["cbmarker","new"]}
execute on passengers on passengers run data modify entity @s[tag=cbtracker] Owner set from entity @e[type=marker,tag=cbmarker,tag=new,limit=1] UUID
execute on passengers on passengers on origin run tag @s remove new