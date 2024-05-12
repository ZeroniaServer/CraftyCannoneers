function tutorial:enterarea

item replace entity @s hotbar.4 with ender_eye[custom_name='[{"translate":"item.skeleton_key","italic":false,"color":"dark_aqua"}]',lore=['[{"translate":"item.skeleton_key.lore.1","italic":false,"color":"white"}]','[{"translate":"item.skeleton_key.lore.2","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data=1,custom_data={NoDrop:1b,Key:1b}]

title @s title {"translate":"tutorial.treasure_pit","color":"aqua"}
title @s subtitle {"translate":"tutorial.treasure_pit.description","color":"yellow"}

tag @s add InPit