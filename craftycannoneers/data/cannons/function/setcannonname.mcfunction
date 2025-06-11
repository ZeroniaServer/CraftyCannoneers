scoreboard players operation $nametag playerUUID = @s playerUUID
setblock ~ 200 ~ crimson_sign
execute as @a if score @s playerUUID = $nametag playerUUID run tag @s add SetCannonName
data modify block ~ 200 ~ front_text.messages[0] set value ["",{translate:"cannon.possessive",color:"#FFFFFF",with:[{selector:"@a[limit=1,tag=SetCannonName]"}]}]
execute unless entity @a[limit=1,tag=SetCannonName,team=Lobby] unless entity @e[type=area_effect_cloud,tag=CannonNametag,tag=!New,distance=..2] run summon area_effect_cloud ~ ~1.2 ~ {Duration:2000000000,Tags:["CannonNametag","New"],CustomNameVisible:1b,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
execute if entity @a[limit=1,tag=SetCannonName,team=Lobby] unless entity @e[type=area_effect_cloud,tag=CannonNametag,tag=!New,distance=..2] run summon area_effect_cloud ~ ~1.2 ~ {Duration:2000000000,Tags:["CannonNametag","New","Tutorial"],CustomNameVisible:1b,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
data modify entity @e[type=area_effect_cloud,tag=CannonNametag,tag=New,limit=1,sort=nearest] CustomName set from block ~ 200 ~ front_text.messages[0]
fill ~2 200 ~2 ~-2 200 ~-2 air replace crimson_sign
tag @e[type=area_effect_cloud,tag=CannonNametag,tag=New] remove New
tag @a[tag=SetCannonName] remove SetCannonName
scoreboard players reset $nametag playerUUID