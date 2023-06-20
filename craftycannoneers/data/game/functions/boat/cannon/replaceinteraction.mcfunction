summon interaction ~ ~0.375 ~ {Tags:["BoatCannon","new"],response:0b,width:0,height:0}
execute on passengers run kill @s[type=interaction]
ride @e[type=interaction,tag=new,limit=1] mount @s
execute on passengers run tag @s remove new