advancement revoke @s only game:openpurplechest
execute as @e[type=chest_minecart,ag=purpleteamchest,tag=!Opened] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=chest_minecart,tag=purpleteamchest] add Opened
data modify entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] HandItems[0].tag.CustomModelData set value 21