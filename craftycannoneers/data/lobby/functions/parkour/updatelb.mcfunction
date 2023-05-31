##Updates parkour leaderboard with new player/time
tag @s[tag=finishedParkour] add templeader
execute if entity @s[tag=templeader] store result score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run scoreboard players get @s finalParkourTime
execute if entity @s[tag=templeader] run data modify block -74 -24 1 Text1 set value '[{"selector":"@a[limit=1,tag=templeader]","color":"yellow"}]'
execute if entity @s[tag=templeader] run data modify entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] CustomName set from block -74 -24 1 Text1

execute if entity @s[tag=templeader,scores={parkourSecs=..9,parkourMins=..9}] run data modify block -74 -24 1 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[tag=templeader,scores={parkourSecs=10..,parkourMins=..9}] run data modify block -74 -24 1 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[tag=templeader,scores={parkourSecs=..9,parkourMins=10..}] run data modify block -74 -24 1 Text2 set value '["",{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[tag=templeader,scores={parkourSecs=10..,parkourMins=10..}] run data modify block -74 -24 1 Text2 set value '["",{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@a[limit=1,tag=templeader]","objective":"parkourDeci2"},"color":"green"}]'

execute if entity @s[tag=templeader] run data modify entity @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] CustomName set from block -74 -24 1 Text2

execute if entity @s[tag=templeader] run loot replace entity @e[type=armor_stand,tag=ParkourAS,limit=1] armor.head 1 loot cannons:playerhead

execute if entity @s[tag=templeader] run item replace entity @a[predicate=lobby:hasparkourhat,tag=!templeader] armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"translate":"armor.hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
item replace entity @s[tag=templeader] armor.head with diamond_hoe{NoDrop:1b,CustomModelData:61,Unbreakable:1b,display:{Name:'[{"translate":"armor.hat.parkour","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7}

execute if entity @s[tag=templeader] run tellraw @a[team=!Purple,team=!Orange] ["",{"translate":"parkour.new_record","color":"dark_green","with":[{"selector":"@s"}]}]
tag @s remove templeader

#> Save parkour data into storage
data modify storage craftycannoneers:parkour Head set from entity @e[type=armor_stand,tag=ParkourAS,limit=1] ArmorItems[3]
data modify storage craftycannoneers:parkour Name set from entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] CustomName
data modify storage craftycannoneers:parkour Time set from entity @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] CustomName