item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:53}
summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST LOCKED","color":"dark_red","bold":"true","underlined":"true"}'}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy is nearby!","color":"red","bold":"true"}'}
playsound chestlock master @a ~ ~ ~ 1.3 1
tag @s add PlayedSound