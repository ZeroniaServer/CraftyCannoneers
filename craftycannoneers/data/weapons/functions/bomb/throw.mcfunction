tag @a[nbt={SelectedItem:{tag:{Bomb:1b}}}] add HoldBomb

execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run playsound entity.witch.throw master @a ~ ~ ~ 0.4 0.9
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run summon armor_stand ~ ~1.62 ~ {Small:1b,Silent:1b,Tags:["Bomb","ThrowBomb","bomb"],ArmorItems:[{},{},{},{id:"minecraft:ender_eye",tag:{CustomModelData:2},Count:1}],Invisible:1,DisabledSlots:4144959}
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run tp @e[tag=ThrowBomb,tag=!BombThrown] @s
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s store result score @e[tag=ThrowBomb,tag=!BombThrown,limit=1,sort=nearest] UUIDscore run data get entity @s UUID[0]
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run clear @s ender_eye{CustomModelData:2} 1
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run tag @s add BombDelay
execute as @e[tag=ThrowBomb,tag=!BombThrown] at @s run tp @s ~ ~1.62 ~
execute as @e[tag=ThrowBomb,tag=!BombThrown] run function weapons:bomb/tick

scoreboard players add @a[tag=BombDelay] BombDelay 1
tag @a[tag=BombDelay,scores={BombDelay=5..}] remove BombDelay
scoreboard players reset @a[tag=!BombDelay,scores={BombDelay=1..}] BombDelay

tag @a remove HoldBomb