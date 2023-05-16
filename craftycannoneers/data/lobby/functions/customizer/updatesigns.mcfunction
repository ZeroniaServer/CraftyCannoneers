execute if score $TimeLimit CmdData matches 42069 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"UNLIMITED","color":"#FF7200"}'
execute if score $TimeLimit CmdData matches 30 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"30 Minutes","color":"#FF7200"}'
execute if score $TimeLimit CmdData matches 20 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"20 Minutes","color":"#FF7200"}'
execute if score $TimeLimit CmdData matches 15 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"15 Minutes","color":"#FF7200"}'
execute if score $TimeLimit CmdData matches 10 run data modify block -53 -22 9 front_text.messages[3] set value '{"text":"10 Minutes","color":"#FF7200"}'

execute if score $ShipHP CmdData matches 42069 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"AUTO","color":"#FF49FC"}'
execute if score $Ship CmdData matches 2000 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"2000","color":"#FF49FC"}'
execute if score $Ship CmdData matches 1500 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"1500","color":"#FF49FC"}'
execute if score $Ship CmdData matches 1250 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"1250","color":"#FF49FC"}'
execute if score $Ship CmdData matches 1000 run data modify block -55 -22 9 front_text.messages[3] set value '{"text":"1000","color":"#FF49FC"}'

execute as @a[tag=ModiOwner] at @s run playsound ui.button.click master @s ~ ~ ~ 1 1

scoreboard players reset @a[tag=ModiOwner] moditimer