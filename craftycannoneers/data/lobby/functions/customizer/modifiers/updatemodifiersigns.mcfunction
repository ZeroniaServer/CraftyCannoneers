execute if score $NoTracers CmdData matches 0 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"❌","color":"#FF282E","bold":true}'
execute if score $NoTracers CmdData matches 1 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"✔","color":"#28FF3E","bold":true}'

execute if score $Sharks CmdData matches 0 run data modify block -54 -22 9 front_text.messages[3] set value '{"text":"❌","color":"#FF282E","bold":true}'
execute if score $Sharks CmdData matches 1 run data modify block -54 -22 9 front_text.messages[3] set value '{"text":"✔","color":"#28FF3E","bold":true}'

execute if score $Storms CmdData matches 0 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"❌","color":"#FF282E","bold":true}'
execute if score $Storms CmdData matches 1 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"✔","color":"#28FF3E","bold":true}'

execute if score $LostCargo CmdData matches 0 run data modify block -53 -23 9 front_text.messages[3] set value '{"text":"❌","color":"#FF282E","bold":true}'
execute if score $LostCargo CmdData matches 1 run data modify block -53 -23 9 front_text.messages[3] set value '{"text":"✔","color":"#28FF3E","bold":true}'