advancement revoke @s only game:openpurplechest
schedule clear game:teamchest/purple/visualclose
execute as @e[type=marker,tag=purpleteamchest,tag=!Opened] at @s run playsound block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=marker,tag=purpleteamchest] add Opened
item replace entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:51}