clear @s

function lobby:hats
item replace entity @s hotbar.4 with ender_eye{NoDrop:1b,CustomModelData:1,Key:1b,display:{Name:'[{"text":"Skeleton Key","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this key to unlock ","italic":false,"color":"white"}]','[{"text":"any kind of locked Chests!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]']}}

playsound ding master @s ~ ~ ~ 1 0.6
title @s title {"text":"Treasure Pit","color":"aqua"}
title @s subtitle {"text":"(Learn about Treasure Chests)","color":"yellow"}

tag @s add InPit