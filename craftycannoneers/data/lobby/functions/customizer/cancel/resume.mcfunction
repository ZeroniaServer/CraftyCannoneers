scoreboard players set $mcancelcount CmdData 10
data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel.available_in","italic":true,"with":[{"text":"10","italic":true}]}'
data modify block -54 -24 9 front_text.color set value "light_gray"
item replace entity @e[type=item_display,tag=CancelMatch,limit=1] container.0 with diamond_hoe{CustomModelData:58}
scoreboard players reset $mcancel CmdData
schedule function lobby:customizer/cancel/counter 1s