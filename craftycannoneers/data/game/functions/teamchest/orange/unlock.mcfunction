playsound chestunlock master @a ~ ~ ~ 1.3 1
item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:52}
kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Orange]
summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST UNLOCKED","color":"dark_green","bold":true,"underlined":true}'}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy unlocked the chest!","color":"green","bold":true}'}
tag @s add PlayedSound2
execute unless entity @e[type=chest_minecart,tag=orangeteamchest] run function game:teamchest/orange/respawn