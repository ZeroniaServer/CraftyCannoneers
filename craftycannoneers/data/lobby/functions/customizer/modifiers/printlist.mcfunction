#> Prints list of modifiers

tellraw @a {"translate":"customizer.current_modifiers","color":"#0077af"}
execute if score $BoatCannons CmdData matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"modifier.boat_cannons","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.boat_cannons.description","color":"white"}]}}]
execute if score $GraveRobbery CmdData matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"modifier.grave_robbery","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"translate":"modifier.grave_robbery.description","color":"white"}]}}]
execute if score $LostCargo CmdData matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"modifier.lost_cargo","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.lost_cargo.description","color":"white"}]}}]
execute if score $Storms CmdData matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"modifier.sea_storms","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.sea_storms.description","color":"white"},"\n",{"translate":"modifier.experienced_pirates","color":"gray","italic":true}]}}]
execute if score $Wildlife CmdData matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"modifier.wildlife","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.wildlife.description","color":"white"}]}}]
execute if score $NoTracers CmdData matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"modifier.no_tracers","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.no_tracers.description","color":"white"},"\n",{"translate":"modifier.experienced_pirates","color":"gray","italic":true}]}}]