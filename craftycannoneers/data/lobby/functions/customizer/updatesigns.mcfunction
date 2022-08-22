execute if score $TimeLimit CmdData matches 42069 run data merge block -53 -22 9 {Text4:'{"text":"UNLIMITED","color":"#FF7200"}'}
execute if score $TimeLimit CmdData matches 30 run data merge block -53 -22 9 {Text4:'{"text":"30 Minutes","color":"#FF7200"}'}
execute if score $TimeLimit CmdData matches 20 run data merge block -53 -22 9 {Text4:'{"text":"20 Minutes","color":"#FF7200"}'}
execute if score $TimeLimit CmdData matches 15 run data merge block -53 -22 9 {Text4:'{"text":"15 Minutes","color":"#FF7200"}'}
execute if score $TimeLimit CmdData matches 10 run data merge block -53 -22 9 {Text4:'{"text":"10 Minutes","color":"#FF7200"}'}

execute if score $ShipHP CmdData matches 42069 run data merge block -55 -22 9 {Text4:'{"text":"AUTO","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 2000 run data merge block -55 -22 9 {Text4:'{"text":"2000","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 1500 run data merge block -55 -22 9 {Text4:'{"text":"1500","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 1250 run data merge block -55 -22 9 {Text4:'{"text":"1250","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 1000 run data merge block -55 -22 9 {Text4:'{"text":"1000","color":"#FF49FC"}'}

execute as @a[tag=ModiOwner] at @s run playsound ui.button.click master @s ~ ~ ~ 1 1

scoreboard players reset @a[tag=ModiOwner] moditimer