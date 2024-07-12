execute if score $NoTracers CmdData matches 1 run scoreboard players set $NoTracers CmdData 2
execute if score $NoTracers CmdData matches 0 run tellraw @s ["\n",{"translate":"modifier.no_tracers","color":"#33ccff"},{"text":": ","color":"blue"},{"translate":"modifier.no_tracers.description","color":"blue"},"\n",{"translate":"modifier.experienced_pirates","italic":true,"color":"dark_gray"}]
execute if score $NoTracers CmdData matches 0 run scoreboard players set $NoTracers CmdData 1
execute if score $NoTracers CmdData matches 2 run scoreboard players set $NoTracers CmdData 0

function lobby:customizer/modifiers/updatemodifiersigns
scoreboard players reset @s moditimer