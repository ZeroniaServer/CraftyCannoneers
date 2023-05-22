execute at @s[type=husk,tag=TDZombie] run function tutorial:trainingdummies/hurtdetection
execute at @s[type=villager,tag=BlastBarrel] run function weapons:barrel/punch
execute if entity @s[type=villager,tag=CBTrap] on vehicle run tag @s add TrapExplode

#> Do knockback to crab vehicle if hitting upper endermite
execute if entity @s[type=endermite,tag=CrabEntity,tag=!CrabVehicle,tag=!inwater] on vehicle run damage @s 1 mob_attack by @a[tag=hitter,limit=1]
execute if entity @s[type=endermite,tag=CrabEntity,tag=!CrabVehicle,tag=inwater] on vehicle on vehicle run damage @s 1 mob_attack by @a[tag=hitter,limit=1]

#> Crab enters steal mode when passive
execute if entity @s[type=endermite,tag=CrabEntity,tag=CrabVehicle] on passengers at @s[type=item_display,tag=!hasitem,tag=!steal] run function game:modifiers/crabs/forcestealmode
execute if entity @s[type=endermite,tag=CrabEntity,tag=!CrabVehicle] on vehicle on passengers at @s[type=item_display,tag=!hasitem,tag=!steal] run function game:modifiers/crabs/forcestealmode

#> Crab drops item
execute if entity @s[type=endermite,tag=CrabEntity,tag=CrabVehicle] on passengers at @s[type=item_display,tag=hasitem] run function game:modifiers/crabs/dropitem
execute if entity @s[type=endermite,tag=CrabEntity,tag=!CrabVehicle] on vehicle on passengers at @s[type=item_display,tag=hasitem] run function game:modifiers/crabs/dropitem
execute if entity @s[type=cat,tag=CrabEntity,tag=CrabVehicle] on passengers at @s[type=item_display,tag=hasitem] run function game:modifiers/crabs/dropitem