summon interaction ~ ~0.5 ~ {Tags:["BoatCannon","new"],response:0b,width:1,height:-1}
ride @e[type=interaction,tag=BoatCannon,tag=new,limit=1] mount @s
execute on passengers run tag @s[tag=new] remove new
tag @s add interaction