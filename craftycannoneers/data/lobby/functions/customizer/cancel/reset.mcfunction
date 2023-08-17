schedule clear lobby:customizer/cancel/counter
scoreboard players set $mcancelcounter CmdData 10
scoreboard players set $mcancel CmdData -1
data modify block -54 -24 9 front_text.color set value "light_gray"
execute if score $mcancelcount CmdData matches 0 run data modify block -54 -24 9 front_text.messages[0] set value '{"translate":"customizer.cancel"}'
data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel.unavailable","italic":true}'