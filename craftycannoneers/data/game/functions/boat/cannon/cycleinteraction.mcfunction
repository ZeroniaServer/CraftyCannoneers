execute on passengers run tag @s[type=interaction] add kill
summon interaction ~ ~0.375 ~ {Tags:["BoatCannon","new"],response:1b,width:1,height:-1}
ride @e[type=interaction,tag=BoatCannon,tag=new,limit=1] mount @s
execute on passengers run tag @s[tag=new] remove new