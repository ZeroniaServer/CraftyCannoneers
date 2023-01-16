execute if entity @e[type=creeper,tag=mobtest,limit=1] as @a[tag=ModiOwner,limit=1] run function lobby:customizer/interact

execute unless entity @e[type=creeper,tag=mobtest,limit=1] as @a[tag=ModiOwner,limit=1] at @s run playsound error master @s ~ ~ ~ 1 1
execute unless entity @e[type=creeper,tag=mobtest,limit=1] run tellraw @a[tag=ModiOwner,limit=1] ["",{"text":"\n[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"game.mob_warn","color":"gray"}]

kill @e[type=creeper,tag=mobtest,limit=1]
tag @a remove mobtesting
scoreboard players reset @a[tag=ModiOwner,limit=1] modisigns