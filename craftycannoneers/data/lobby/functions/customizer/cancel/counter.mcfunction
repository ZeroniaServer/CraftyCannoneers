execute unless score $gamestate CmdData matches 0 run function lobby:customizer/cancel/disable
execute unless score $gamestate CmdData matches 0 run return 0

scoreboard players remove $mcancelcount CmdData 1

execute if score $mcancelcount CmdData matches 0 run data modify block -54 -24 9 front_text.messages[1] set value '{"text":""}'
execute if score $mcancelcount CmdData matches 0 run data modify block -54 -24 9 front_text.messages[0] set value '{"translate":"customizer.cancel","color":"white"}'
execute if score $mcancelcount CmdData matches 0 run data modify block -54 -24 9 front_text.color set value "red"
execute if score $mcancelcount CmdData matches 0 run item replace entity @e[type=item_display,tag=CancelMatch,limit=1] container.0 with diamond_hoe{CustomModelData:57}
execute if score $mcancelcount CmdData matches 0 run return 1

data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel.available_in","italic":true,"with":[{"score":{"name":"$mcancelcount","objective":"CmdData"},"italic":true}]}'
schedule function lobby:customizer/cancel/counter 1s