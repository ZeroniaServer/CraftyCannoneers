execute at @s run playsound throwbomb master @a ~ ~ ~ 0.4 0.9
execute at @s run summon snowball ~ ~1.62 ~ {Silent:1b,Tags:["Bomb","ThrowBomb","bomb"],Item:{id:"minecraft:slime_ball",Count:1},Passengers:[{id:"item_display",Tags:["Bomb","bomb","BombTracker"],item:{id:"minecraft:ender_eye",Count:1,tag:{CustomModelData:2}},item_display:"head",width:1f,height:1f,billboard:"center"}]}
execute at @s run tp @e[type=snowball,tag=ThrowBomb,tag=!BombThrown] @s
execute at @s store result score @e[type=snowball,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] playerUUID run data get entity @s UUID[0]
execute at @s as @e[type=snowball,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] run function cannons:namecannonball
item modify entity @s[predicate=weapons:bomb_mainhand,gamemode=!creative] weapon.mainhand game:reducecount
item modify entity @s[predicate=weapons:bomb_offhand,gamemode=!creative] weapon.offhand game:reducecount
tag @s add BombDelay