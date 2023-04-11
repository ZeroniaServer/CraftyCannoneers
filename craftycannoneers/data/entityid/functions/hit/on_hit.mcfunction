execute at @s[type=husk,tag=TDZombie] run function tutorial:trainingdummies/hurtdetection
execute at @s[type=villager,tag=BlastBarrel] run function weapons:barrel/punch
execute if entity @s[type=villager,tag=CBTrap] on vehicle run tag @s add TrapExplode