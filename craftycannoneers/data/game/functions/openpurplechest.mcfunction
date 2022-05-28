advancement revoke @s only game:openpurplechest
execute as @e[tag=purpleteamchest,tag=!Opened] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[tag=purpleteamchest] add Opened
data modify entity @e[tag=purplechestdisplay,limit=1] HandItems[0].tag.CustomModelData set value 21