execute at @s run playsound throwbomb master @a ~ ~ ~ 0.4 0.9
execute at @s run summon snowball ~ ~1.62 ~ {Silent:1b,Tags:["Bomb","ThrowBomb","bomb"],Item:{id:"minecraft:ender_eye",tag:{CustomModelData:2},Count:1},Passengers:[{id:"item_display",Tags:["Bomb","bomb","BombTracker"],item_display:"ground",width:1f,height:1f,billboard:"fixed",transformation:{translation:[0.0f,-0.2f,0.0f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}]}
execute at @s run tp @e[type=snowball,tag=ThrowBomb,tag=!BombThrown] @s
execute at @s store result score @e[type=snowball,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] playerUUID run data get entity @s UUID[0]
execute at @s as @e[type=snowball,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] run function cannons:namecannonball
item modify entity @s[predicate=weapons:bomb_mainhand,gamemode=!creative] weapon.mainhand game:reducecount
item modify entity @s[predicate=weapons:bomb_offhand,gamemode=!creative] weapon.offhand game:reducecount
tag @s add BombDelay