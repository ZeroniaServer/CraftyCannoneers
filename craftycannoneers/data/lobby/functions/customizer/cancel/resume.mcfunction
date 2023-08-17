scoreboard players set $mcancelcount CmdData 10
data modify block -54 -24 9 front_text.messages[1] set value '{"translate":"customizer.cancel.available_in","italic":true,"with":[{"text":"10","italic":true}]}'
data modify block -54 -24 9 front_text.color set value "light_gray"
scoreboard players reset $mcancel CmdData
schedule function lobby:customizer/cancel/counter 1s