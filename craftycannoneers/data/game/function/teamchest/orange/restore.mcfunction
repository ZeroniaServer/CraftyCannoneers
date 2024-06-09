playsound chestunlock master @a ~ ~ ~ 1.3 1
execute if entity @s[tag=!Opened] run item replace entity @e[type=item_display,tag=orangechestdisplay,limit=1] container.0 with diamond_hoe[custom_model_data=52]
kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Orange]
tag @s remove PlayedSound2
tag @s remove PlayedSound
execute unless entity @e[type=chest_minecart,tag=orangeteamchest] run function game:teamchest/orange/respawn