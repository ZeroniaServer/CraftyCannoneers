execute if score $BoatCannons CmdData matches 1 run scoreboard players set $BoatCannons CmdData 2
execute if score $BoatCannons CmdData matches 0 run tellraw @s ["\n",{"translate":"modifier.boat_cannons","color":"#33ccff"},{"text":": ","color":"blue"},{"translate":"modifier.boat_cannons.description","color":"blue"},"\n"]
execute if score $BoatCannons CmdData matches 0 run scoreboard players set $BoatCannons CmdData 1
execute if score $BoatCannons CmdData matches 2 run scoreboard players set $BoatCannons CmdData 0

function lobby:customizer/modifiers/updatemodifiersigns
scoreboard players reset @s moditimer