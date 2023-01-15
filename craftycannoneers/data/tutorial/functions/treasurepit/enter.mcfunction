function tutorial:enterarea

item replace entity @s hotbar.4 with ender_eye{NoDrop:1b,CustomModelData:1,Key:1b,display:{Name:'[{"translate":"item.skeleton_key","italic":false,"color":"dark_aqua"}]',Lore:['[{"translate":"item.skeleton_key.lore.1","italic":false,"color":"white"}]','[{"translate":"item.skeleton_key.lore.2","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]']}}

title @s title {"translate":"tutorial.treasure_pit","color":"aqua"}
title @s subtitle {"translate":"tutorial.treasure_pit.description","color":"yellow"}

tag @s add InPit