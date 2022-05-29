advancement revoke @s only game:openorangechest
execute as @e[type=chest_minecart,tag=orangeteamchest,tag=!Opened] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=chest_minecart,tag=orangeteamchest] add Opened
data modify entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] HandItems[0].tag.CustomModelData set value 21