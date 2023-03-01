execute at @s run playsound entity.witch.throw master @a ~ ~ ~ 0.4 0.9
execute at @s run summon armor_stand ~ ~1.62 ~ {Small:1b,Silent:1b,Tags:["Bomb","ThrowBomb","bomb"],ArmorItems:[{},{},{},{id:"minecraft:ender_eye",tag:{CustomModelData:2},Count:1}],Invisible:1,DisabledSlots:4144959}
execute at @s run tp @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown] @s
execute at @s store result score @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] playerUUID run data get entity @s UUID[0]
execute at @s as @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] run function cannons:namecannonball
item modify entity @s[predicate=weapons:bomb_mainhand,gamemode=!creative] weapon.mainhand game:reducecount
item modify entity @s[predicate=weapons:bomb_offhand,gamemode=!creative] weapon.offhand game:reducecount
tag @s add BombDelay