execute as @e[type=armor_stand,tag=CannonDisp] unless score @s playerUUID matches 0 run scoreboard players add @s cannonclaim 1

#add nametag
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] run scoreboard players operation $nametag playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] at @s run setblock ~ 200 ~ crimson_sign
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] as @a if score @s playerUUID = $nametag playerUUID run tag @s add SetCannonName
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] at @s run data merge block ~ 200 ~ {Text1:'["",{"selector":"@p[tag=SetCannonName]"},{"text":"\'s Cannon","color":"#FFFFFF"}]'}
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Duration:2000000000,Tags:["CannonNametag","New"],CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] at @s run data modify entity @e[type=area_effect_cloud,tag=CannonNametag,tag=New,limit=1,sort=nearest] CustomName set from block ~ 200 ~ Text1
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] at @s run fill ~2 200 ~2 ~-2 200 ~-2 air replace crimson_sign
tag @e[type=area_effect_cloud,tag=CannonNametag,tag=New] remove New
tag @a[tag=SetCannonName] remove SetCannonName
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] run scoreboard players reset $nametag playerUUID

execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s run kill @e[type=area_effect_cloud,tag=CannonNametag,limit=1,sort=nearest,distance=..3]
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s run kill @e[type=area_effect_cloud,tag=GPDispText,limit=2,sort=nearest,distance=..3]
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] run scoreboard players set @s playerUUID 0
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] if score @s playerUUID matches 0 run scoreboard players reset @s cannonclaim


#> Unclaim for distance/leave game
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=1..120}] run function cannons:hasowner