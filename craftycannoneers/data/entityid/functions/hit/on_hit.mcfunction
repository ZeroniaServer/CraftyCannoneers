execute at @s[type=husk,tag=TDZombie] run function tutorial:trainingdummies/hurtdetection
execute at @s[type=villager,tag=BlastBarrel] run function weapons:barrel/punch
## TODO prevent picking up trap during release animation
execute at @s[type=interaction,tag=CrabTrap] on passengers run function weapons:crabtrap/break
execute if entity @s[type=villager,tag=CBTrap] on vehicle run tag @s add TrapExplode

#> Do knockback to crab vehicle if hitting upper endermite
execute if entity @s[type=endermite,tag=CrabController,tag=!inwater] on vehicle run damage @s 1 mob_attack by @a[tag=hitter,limit=1]
execute if entity @s[type=endermite,tag=CrabController,tag=inwater] on vehicle on vehicle run damage @s 1 mob_attack by @a[tag=hitter,limit=1]

#> Crab enters steal mode when passive
execute if entity @s[type=cat,tag=CrabVehicle] on passengers at @s[type=item_display,tag=!hasitem,tag=!steal] run function game:modifiers/crabs/forcestealmode
execute if entity @s[type=endermite,tag=CrabController,tag=!inwater] on vehicle on passengers at @s[type=item_display,tag=!hasitem,tag=!steal] run function game:modifiers/crabs/forcestealmode
execute if entity @s[type=endermite,tag=CrabController,tag=inwater] on vehicle at @s[type=item_display,tag=!hasitem,tag=!steal] run function game:modifiers/crabs/forcestealmode

#> Crab drops item
execute if entity @s[type=cat,tag=CrabVehicle] on passengers at @s[type=item_display,tag=hasitem,tag=!hashorn] run function game:modifiers/crabs/dropitem
execute if entity @s[type=endermite,tag=CrabController,tag=!inwater] on vehicle on passengers at @s[type=item_display,tag=hasitem,tag=!hashorn] run function game:modifiers/crabs/dropitem
execute if entity @s[type=endermite,tag=CrabController,tag=inwater] on vehicle at @s[type=item_display,tag=hasitem,tag=!hashorn] run function game:modifiers/crabs/dropitem

#> Hitting Boat Cannon entities hurts the boat
execute if score $trident CmdData matches 1 if entity @s[type=camel,tag=BoatCannonAnchor] on vehicle run damage @s[type=boat] 5 arrow at ~ ~ ~
execute if score $trident CmdData matches 0 if entity @s[type=camel,tag=BoatCannonAnchor] on vehicle run damage @s[type=boat] 1 arrow at ~ ~ ~

execute if score $trident CmdData matches 1 if entity @s[type=villager,tag=BoatCannon] on vehicle on vehicle run damage @s[type=boat] 5 arrow at ~ ~ ~
execute if score $trident CmdData matches 0 if entity @s[type=villager,tag=BoatCannon] on vehicle on vehicle run damage @s[type=boat] 1 arrow at ~ ~ ~

execute if score $trident CmdData matches 1 if entity @s[type=husk,tag=BoatCannonBlocker] on vehicle on vehicle run damage @s[type=boat] 5 arrow at ~ ~ ~
execute if score $trident CmdData matches 0 if entity @s[type=husk,tag=BoatCannonBlocker] on vehicle on vehicle run damage @s[type=boat] 1 arrow at ~ ~ ~

execute if score $trident CmdData matches 1 if entity @s[type=husk,tag=BoatCannonDisplay] on vehicle on vehicle on vehicle run damage @s[type=boat] 5 arrow at ~ ~ ~
execute if score $trident CmdData matches 0 if entity @s[type=husk,tag=BoatCannonDisplay] on vehicle on vehicle on vehicle run damage @s[type=boat] 1 arrow at ~ ~ ~