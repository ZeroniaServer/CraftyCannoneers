##Updates parkour leaderboard with new player/time
tag @s[tag=finishedParkour] add templeader
execute if entity @s[tag=templeader] store result score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run scoreboard players get @s finalParkourTime
execute if entity @s[tag=templeader] run data modify block -74 -24 1 front_text.messages[0] set value '[{"selector":"@a[limit=1,tag=templeader]","color":"yellow"}]'
execute if entity @s[tag=templeader] run data modify entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] CustomName set from block -74 -24 1 front_text.messages[0]

execute if entity @s[tag=templeader,scores={parkourSecs=..9,parkourMins=..9}] run data modify block -74 -24 1 front_text.messages[1] set value '["",{"text":"0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[tag=templeader,scores={parkourSecs=10..,parkourMins=..9}] run data modify block -74 -24 1 front_text.messages[1] set value '["",{"text":"0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[tag=templeader,scores={parkourSecs=..9,parkourMins=10..}] run data modify block -74 -24 1 front_text.messages[1] set value '["",{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[tag=templeader,scores={parkourSecs=10..,parkourMins=10..}] run data modify block -74 -24 1 front_text.messages[1] set value '["",{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'

execute if entity @s[tag=templeader] run data modify entity @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] CustomName set from block -74 -24 1 front_text.messages[1]

execute if entity @s[tag=templeader] run loot replace entity @e[type=armor_stand,tag=ParkourAS,limit=1] armor.head 1 loot cannons:playerhead

execute if entity @s[tag=templeader] run item replace entity @a[predicate=lobby:hasparkourhat,tag=!templeader] armor.head with diamond_hoe[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.hat","italic":false,"color":"white"}]',lore=['[{"text":"","italic":false}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data=39]
item replace entity @s[tag=templeader] armor.head with diamond_hoe[unbreakable={show_in_tooltip:0b},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},custom_name='[{"translate":"armor.hat.parkour","italic":false,"color":"red"}]',lore=['[{"text":"","italic":false}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data=61,custom_data={NoDrop:1b}]

execute if entity @s[tag=templeader] run tellraw @a[team=!Purple,team=!Orange] ["",{"translate":"parkour.new_record","color":"dark_green","with":[{"selector":"@s"}]}]
tag @s remove templeader

#> Save parkour data into storage
data modify storage craftycannoneers:parkour Head set from entity @e[type=armor_stand,tag=ParkourAS,limit=1] ArmorItems[3]
data modify storage craftycannoneers:parkour Name set from entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] CustomName
data modify storage craftycannoneers:parkour Time set from entity @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] CustomName