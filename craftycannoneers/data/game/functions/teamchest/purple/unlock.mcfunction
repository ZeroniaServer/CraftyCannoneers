playsound chestunlock master @a ~ ~ ~ 1.3 1
item replace entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:49}
kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Purple]
summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST UNLOCKED","color":"dark_green","bold":"true","underlined":"true"}'}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy unlocked the chest!","color":"green","bold":"true"}'}
tag @s add PlayedSound2
execute unless entity @e[type=chest_minecart,tag=purpleteamchest] run function game:teamchest/purple/respawn