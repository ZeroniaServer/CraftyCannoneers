data modify entity @e[type=villager,tag=newVillager,limit=1] Tags set from entity @s data.Tags
data modify entity @e[type=marker,tag=newVillager,limit=1] data.Tags set from entity @s data.Tags
scoreboard players operation @e[type=villager,tag=newVillager,limit=1] CannonID = @s CannonID
scoreboard players operation @e[type=marker,tag=newVillager,limit=1] CannonID = @s CannonID
execute if entity @s[tag=Tutorial] run tag @e[type=marker,tag=newVillager,limit=1] add Tutorial
tag @e[type=marker,tag=newVillager,limit=1] add villager
tag @e[type=marker,tag=newVillager,limit=1] remove newVillager
kill @s