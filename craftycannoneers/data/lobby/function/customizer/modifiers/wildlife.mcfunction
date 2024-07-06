execute if score $Wildlife CmdData matches 1 run scoreboard players set $Wildlife CmdData 2
execute if score $Wildlife CmdData matches 0 run tellraw @s ["\n",{"translate":"modifier.wildlife","color":"#33ccff"},{"text":": ","color":"blue"},{"translate":"modifier.wildlife.description","color":"blue"},"\n"]
execute if score $Wildlife CmdData matches 0 run scoreboard players set $Wildlife CmdData 1
execute if score $Wildlife CmdData matches 2 run scoreboard players set $Wildlife CmdData 0

function lobby:customizer/modifiers/updatemodifiersigns
scoreboard players reset @s moditimer