advancement revoke @s only game:openorangechest
schedule clear game:teamchest/orange/visualclose
execute as @e[type=marker,tag=orangeteamchest,tag=!Opened] at @s run playsound block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=marker,tag=orangeteamchest] add Opened
item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:54}