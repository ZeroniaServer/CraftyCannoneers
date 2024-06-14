team join NoName
summon item_display ~ ~ ~ {Tags:["traderanchor","new"]}
ride @s mount @e[type=item_display,tag=traderanchor,tag=new,limit=1]
execute on vehicle run tag @s remove new