execute if score $TimeLimit CmdData matches 42069 run data modify block -53 -22 9 front_text.messages[3] set value '{"translate":"customizer.unlimited","color":"#FF7200"}'
execute if score $TimeLimit CmdData matches 30 run data modify block -53 -22 9 front_text.messages[3] set value '[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"30","color":"#FF7200"}]}]'
execute if score $TimeLimit CmdData matches 20 run data modify block -53 -22 9 front_text.messages[3] set value '[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"20","color":"#FF7200"}]}]'
execute if score $TimeLimit CmdData matches 15 run data modify block -53 -22 9 front_text.messages[3] set value '[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"15","color":"#FF7200"}]}]'
execute if score $TimeLimit CmdData matches 10 run data modify block -53 -22 9 front_text.messages[3] set value '[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"10","color":"#FF7200"}]}]'

execute if score $ShipHP CmdData matches 42069 run data modify block -55 -22 9 front_text.messages[3] set value '{"translate":"customizer.auto","color":"#FF49FC"}'
execute if score $ShipHP CmdData matches 2000 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"2000","color":"#FF49FC"}'
execute if score $ShipHP CmdData matches 1500 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"1500","color":"#FF49FC"}'
execute if score $ShipHP CmdData matches 1250 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"1250","color":"#FF49FC"}'
execute if score $ShipHP CmdData matches 1000 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"1000","color":"#FF49FC"}'

execute if score $Daytime CmdData matches 0 run data modify block -54 -22 9 front_text.messages[3] set value '{"translate":"customizer.daytime.morning","color":"dark_aqua"}'
execute if score $ModiMapActive CmdData matches 0 if score $Daytime CmdData matches 0 run item replace entity @e[type=armor_stand,tag=DaytimeIcon,limit=1] armor.head with diamond_hoe{CustomModelData:120}

execute if score $Daytime CmdData matches 1 run data modify block -54 -22 9 front_text.messages[3] set value '{"translate":"customizer.daytime.sunset","color":"dark_aqua"}'
execute if score $ModiMapActive CmdData matches 0 if score $Daytime CmdData matches 1 run item replace entity @e[type=armor_stand,tag=DaytimeIcon,limit=1] armor.head with diamond_hoe{CustomModelData:121}

execute if score $Daytime CmdData matches 2 run data modify block -54 -22 9 front_text.messages[3] set value '{"translate":"customizer.daytime.night","color":"dark_aqua"}'
execute if score $ModiMapActive CmdData matches 0 if score $Daytime CmdData matches 2 run item replace entity @e[type=armor_stand,tag=DaytimeIcon,limit=1] armor.head with diamond_hoe{CustomModelData:122}