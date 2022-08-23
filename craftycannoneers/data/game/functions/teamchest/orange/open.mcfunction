advancement revoke @s only game:openorangechest
execute as @e[type=chest_minecart,tag=orangeteamchest,tag=!Opened] at @s run playsound block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=chest_minecart,tag=orangeteamchest] add Opened
item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:54}