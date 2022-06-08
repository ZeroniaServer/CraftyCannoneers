scoreboard players operation $nametag playerUUID = @s playerUUID
setblock ~ 200 ~ crimson_sign
execute as @a if score @s playerUUID = $nametag playerUUID run tag @s add SetCannonName
data merge block ~ 200 ~ {Text1:'["",{"selector":"@p[tag=SetCannonName]"},{"text":"\'s Cannon","color":"#FFFFFF"}]'}
execute unless entity @e[type=area_effect_cloud,tag=CannonNametag,tag=!New,distance=..2] run summon area_effect_cloud ~ ~1.2 ~ {Duration:2000000000,Tags:["CannonNametag","New"],CustomNameVisible:1b}
data modify entity @e[type=area_effect_cloud,tag=CannonNametag,tag=New,limit=1,sort=nearest] CustomName set from block ~ 200 ~ Text1
fill ~2 200 ~2 ~-2 200 ~-2 air replace crimson_sign
tag @e[type=area_effect_cloud,tag=CannonNametag,tag=New] remove New
tag @a[tag=SetCannonName] remove SetCannonName
scoreboard players reset $nametag playerUUID