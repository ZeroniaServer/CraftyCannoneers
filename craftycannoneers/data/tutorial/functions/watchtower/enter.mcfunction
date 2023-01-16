function tutorial:enterarea

item replace entity @s hotbar.4 with spyglass{NoDrop:1b,display:{Name:'[{"translate":"item.spyglass","italic":false,"color":"dark_aqua"}]',Lore:['[{"translate":"item.spyglass.lore.1","italic":false,"color":"aqua"}]','[{"translate":"item.spyglass.lore.2","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']}}

title @s title {"translate":"tutorial.watchtower","color":"aqua"}
title @s subtitle {"translate":"tutorial.watchtower.description","color":"yellow"}

tag @s add InTower