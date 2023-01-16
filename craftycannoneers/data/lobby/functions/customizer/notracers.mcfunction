execute if score $NoTracers CmdData matches 1 run scoreboard players set $NoTracers CmdData 2
execute if score $NoTracers CmdData matches 0 run scoreboard players set $NoTracers CmdData 1
execute if score $NoTracers CmdData matches 2 run scoreboard players set $NoTracers CmdData 0
tellraw @s ["",{"text":"No Tracers","color":"#33ccff"},{"text":": Removes Tracer Cannonballs from player loadouts.","color":"blue"},"\n",{"text":"Recommended for experienced pirates.","italic":true,"color":"dark_gray"}]

function lobby:customizer/updatemodifiersigns
scoreboard players reset @s moditimer