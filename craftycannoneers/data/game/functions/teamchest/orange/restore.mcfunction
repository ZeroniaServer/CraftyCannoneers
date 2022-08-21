playsound chestunlock master @a ~ ~ ~ 1.3 1
execute if entity @s[tag=!Opened] run item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:52}
kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Orange]
tag @s remove PlayedSound2
tag @s remove PlayedSound