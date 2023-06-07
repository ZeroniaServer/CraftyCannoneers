#> Generates list of modifiers as JSON text components in storage
data modify storage craftycannoneers:modifiers list set value []
execute if score $BoatCannons CmdData matches 1 run data modify storage craftycannoneers:modifiers list append value '{"translate":"modifier.boat_cannons","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.boat_cannons.description","color":"white"}]}}'
execute if score $GraveRobbery CmdData matches 1 run data modify storage craftycannoneers:modifiers list append value '{"translate":"modifier.grave_robbery","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.grave_robbery.description","color":"white"}]}}'
execute if score $LostCargo CmdData matches 1 run data modify storage craftycannoneers:modifiers list append value '{"translate":"modifier.lost_cargo","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.lost_cargo.description","color":"white"}]}}'
execute if score $Storms CmdData matches 1 run data modify storage craftycannoneers:modifiers list append value '{"translate":"modifier.sea_storms","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.sea_storms.description","color":"white"},"\\n",{"translate":"modifier.experienced_pirates","color":"gray","italic":true}]}}'
execute if score $Wildlife CmdData matches 1 run data modify storage craftycannoneers:modifiers list append value '{"translate":"modifier.wildlife","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.wildlife.description","color":"white"}]}}'
execute if score $NoTracers CmdData matches 1 run data modify storage craftycannoneers:modifiers list append value '{"translate":"modifier.no_tracers","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"translate":"modifier.no_tracers.description","color":"white"},"\\n",{"translate":"modifier.experienced_pirates","color":"gray","italic":true}]}}'

#Creates companion list of each modifier's name length
data modify storage craftycannoneers:modifiers length set value []
execute if score $BoatCannons CmdData matches 1 run data modify storage craftycannoneers:modifiers length append value 11
execute if score $GraveRobbery CmdData matches 1 run data modify storage craftycannoneers:modifiers length append value 13
execute if score $LostCargo CmdData matches 1 run data modify storage craftycannoneers:modifiers length append value 10
execute if score $Storms CmdData matches 1 run data modify storage craftycannoneers:modifiers length append value 10
execute if score $Wildlife CmdData matches 1 run data modify storage craftycannoneers:modifiers length append value 6
execute if score $NoTracers CmdData matches 1 run data modify storage craftycannoneers:modifiers length append value 10

#Splits this list into lines for chat legibility
data modify storage craftycannoneers:modifiers line set value []
data modify storage craftycannoneers:modifiers line append value []
function lobby:customizer/modifiers/splitlist

#Prints list
function lobby:customizer/modifiers/printlist