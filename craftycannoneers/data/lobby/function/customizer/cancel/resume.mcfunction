scoreboard players set $mcancelcount CmdData 10
data modify block -54 -24 9 front_text.messages[1] set value {translate:"customizer.cancel.available_in",with:[{text:"10"}]}
data merge block -54 -24 9 {front_text:{color:"light_gray"}}
scoreboard players reset $mcancel CmdData
schedule function lobby:customizer/cancel/counter 1s