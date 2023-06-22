advancement revoke @s only game:openorangechest
schedule clear game:teamchest/orange/visualclose
execute as @e[type=marker,tag=orangeteamchest,tag=!Opened] at @s run playsound block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=marker,tag=orangeteamchest] add Opened
item replace entity @e[type=item_display,tag=orangechestdisplay,limit=1] container.0 with diamond_hoe{CustomModelData:54}