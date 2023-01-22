execute if score $Storms CmdData matches 1 run scoreboard players set $Storms CmdData 2
execute if score $Storms CmdData matches 0 run tellraw @s ["","\n",{"translate":"modifier.sea_storms","color":"#33ccff"},{"text":": ","color":"blue"},{"translate":"modifier.sea_storms.description","color":"blue"},"\n",{"translate":"modifier.experienced_pirates","italic":true,"color":"dark_gray"},"\n"]
execute if score $Storms CmdData matches 0 run scoreboard players set $Storms CmdData 1
execute if score $Storms CmdData matches 2 run scoreboard players set $Storms CmdData 0

function lobby:customizer/updatemodifiersigns
scoreboard players reset @s moditimer