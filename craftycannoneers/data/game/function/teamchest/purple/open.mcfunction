advancement revoke @s only game:openpurplechest
schedule clear game:teamchest/purple/visualclose
execute as @e[type=marker,tag=purpleteamchest,tag=!Opened] at @s run playsound block.chest.open master @a ~ ~ ~ 1 0.75
tag @e[type=marker,tag=purpleteamchest] add Opened
item replace entity @e[type=item_display,tag=purplechestdisplay,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[51.0f]}]