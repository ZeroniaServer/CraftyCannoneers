execute if score $NoTracers CmdData matches 1 run scoreboard players set $NoTracers CmdData 2
execute if score $NoTracers CmdData matches 0 run tellraw @s ["","\n",{"text":"No Tracers","color":"#33ccff"},{"text":": Removes Tracer Cannonballs from player loadouts, forcing players to learn how to aim without them.","color":"blue"},"\n",{"text":"Recommended for experienced pirates.","italic":true,"color":"dark_gray"},"\n"]
execute if score $NoTracers CmdData matches 0 run scoreboard players set $NoTracers CmdData 1
execute if score $NoTracers CmdData matches 2 run scoreboard players set $NoTracers CmdData 0

function lobby:customizer/updatemodifiersigns
scoreboard players reset @s moditimer