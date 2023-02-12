execute at @s[type=husk,tag=TDZombie] run function tutorial:trainingdummies/hurtdetection
execute at @s[type=villager,tag=BlastBarrel] run tag @s add IgniteBarrel
execute at @s[type=villager,tag=BlastBarrel] run tag @e[type=armor_stand,tag=BlastBarrel,distance=..1,limit=1,sort=nearest] add IgniteBarrel