schedule clear lobby:customizer/cancel/counter
scoreboard players set $mcancelcount CmdData 10
scoreboard players set $mcancel CmdData -1
data merge block -54 -24 9 {front_text:{color:"light_gray"}}
data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel.unavailable"}'
item replace entity @e[type=item_display,tag=CancelMatch,limit=1] container.0 with diamond_hoe[custom_model_data=58]