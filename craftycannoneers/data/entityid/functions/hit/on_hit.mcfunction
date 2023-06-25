#> Training Dummy
execute at @s[type=husk,tag=TDZombie] run function tutorial:trainingdummies/hurtdetection

#> Blast Barrel
execute at @s[type=husk,tag=BlastBarrel] positioned ~ ~1 ~ run function weapons:barrel/punch
execute at @s[type=interaction,tag=BlastBarrel] as @e[type=item_display,tag=BlastBarrel,distance=..1,sort=nearest,limit=1] at @s run function weapons:barrel/empty

#> Crab Trap 
execute at @s[type=interaction,tag=CrabTrap] on passengers run function weapons:crabtrap/break

#> Cargo Trap
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

#> Shooting Boat Cannon entities hurts the player
execute if score $arrow CmdData matches 1 if entity @s[type=camel,tag=BoatCannonAnchor] on vehicle on passengers run function entityid:hit/fakearrow
execute if score $arrow CmdData matches 1 if entity @s[type=husk,tag=BoatCannonDisplay] on vehicle on vehicle on vehicle on vehicle on passengers run function entityid:hit/fakearrow

#> Tags for interacting with Cannons
execute if entity @s[tag=CannonVLeft,tag=!GPLocked] run tag @a[limit=1,tag=hitter] add FillLeft
execute if entity @s[tag=CannonVRight,tag=!GPLocked] run tag @a[limit=1,tag=hitter] add FillRight

#> Cannon Claim tag 
execute at @s if entity @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @a[limit=1,tag=hitter,tag=FillLeft] run function cannons:checkowner
execute at @s if entity @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @a[limit=1,tag=hitter,tag=FillRight] run function cannons:checkowner

#> Remove Cannon tags
tag @a[limit=1,tag=hitter] remove FillLeft
tag @a[limit=1,tag=hitter] remove FillRight

#> Remove Gunpowder from Boat Cannons
execute if entity @s[type=interaction,tag=BoatCannon] on vehicle on vehicle on vehicle if score @s PowerM matches 1.. on passengers run loot give @s[gamemode=!creative,tag=hitter] loot weapons:gunpowder
execute if entity @s[type=interaction,tag=BoatCannon] on vehicle on vehicle on vehicle if score @s PowerM matches 1.. on passengers if entity @s[tag=hitter] on vehicle run function game:boat/cannon/unloadgunpowder