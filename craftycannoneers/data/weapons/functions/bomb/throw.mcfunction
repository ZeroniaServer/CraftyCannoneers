tag @a[predicate=weapons:bomb_mainhand] add HoldBomb
tag @a[predicate=weapons:bomb_offhand] add HoldBomb

execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run playsound entity.witch.throw master @a ~ ~ ~ 0.4 0.9
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run summon armor_stand ~ ~1.62 ~ {Small:1b,Silent:1b,Tags:["Bomb","ThrowBomb","bomb"],ArmorItems:[{},{},{},{id:"minecraft:ender_eye",tag:{CustomModelData:2},Count:1}],Invisible:1,DisabledSlots:4144959}
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run tp @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown] @s
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s store result score @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] playerUUID run data get entity @s UUID[0]
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s as @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] run function cannons:namecannonball
item modify entity @a[predicate=weapons:bomb_mainhand,tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] weapon.mainhand game:reducecount
item modify entity @a[predicate=weapons:bomb_offhand,tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] weapon.offhand game:reducecount
tag @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] add BombDelay
execute as @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown] at @s run tp @s ~ ~1.62 ~
execute as @e[type=armor_stand,tag=ThrowBomb,tag=!BombThrown] run function weapons:bomb/tick

scoreboard players add @a[tag=BombDelay] BombDelay 1
tag @a[tag=BombDelay,scores={BombDelay=5..}] remove BombDelay
scoreboard players reset @a[tag=!BombDelay,scores={BombDelay=1..}] BombDelay

tag @a remove HoldBomb