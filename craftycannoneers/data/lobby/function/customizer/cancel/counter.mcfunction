execute unless score $gamestate CmdData matches 0 run function lobby:customizer/cancel/disable
execute unless score $gamestate CmdData matches 0 run return 0

scoreboard players remove $mcancelcount CmdData 1

execute if score $mcancelcount CmdData matches 0 run data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel","color":"#ff8585"}'
execute if score $mcancelcount CmdData matches 0 run data merge block -54 -24 9 {front_text:{color:"red"}}
execute if score $mcancelcount CmdData matches 0 run item replace entity @e[type=item_display,tag=CancelMatch,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[57.0f]}]
execute if score $mcancelcount CmdData matches 0 run return 1

data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel.available_in","with":[{"score":{"name":"$mcancelcount","objective":"CmdData"}}]}'
schedule function lobby:customizer/cancel/counter 1s