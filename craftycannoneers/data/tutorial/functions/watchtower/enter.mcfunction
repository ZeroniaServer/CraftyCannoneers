clear @s

function lobby:hats

item replace entity @s hotbar.4 with spyglass{NoDrop:1b,display:{Name:'[{"text":"Spotting Spyglass","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this Spyglass to expose","italic":false,"color":"aqua"}]','[{"text":"the weakpoints of a ship!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']}}

playsound ding master @s ~ ~ ~ 1 0.6
title @s title {"text":"Watchtower","color":"aqua"}
title @s subtitle {"text":"(Learn about spotting Weakpoints)","color":"yellow"}

tag @s add InTower