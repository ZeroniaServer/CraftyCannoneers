advancement revoke @s only game:openorangechest
execute as @e[tag=orangeteamchest,tag=!Opened] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[tag=orangeteamchest] add Opened
data modify entity @e[tag=orangechestdisplay,limit=1] HandItems[0].tag.CustomModelData set value 21