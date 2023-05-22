execute at @s[type=husk,tag=TDZombie] run function tutorial:trainingdummies/hurtdetection
execute at @s[type=villager,tag=BlastBarrel] run function weapons:barrel/punch
execute if entity @s[type=villager,tag=CBTrap] on vehicle run tag @s add TrapExplode
execute if entity @s[type=endermite,tag=CrabEntity,tag=!CrabVehicle] on vehicle run damage @s 1 mob_attack by @a[tag=hitter,limit=1]
execute if entity @s[type=endermite,tag=CrabEntity,tag=CrabVehicle] on passengers if entity @s[tag=hasitem] at @s run function game:modifiers/crabs/dropitem
execute if entity @s[type=cat,tag=CrabEntity,tag=CrabVehicle] on passengers if entity @s[tag=hasitem] at @s run function game:modifiers/crabs/dropitem