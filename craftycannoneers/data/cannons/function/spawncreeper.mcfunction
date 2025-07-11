#> Dismount nearby Crabs/Sharks so they can be moved
execute if entity @s[tag=Power1] as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..5] run function game:modifiers/crabs/dismount
execute if entity @s[tag=Power1] as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..5] run function game:modifiers/sharks/dismount

execute if entity @s[tag=Power2] as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..6] run function game:modifiers/crabs/dismount
execute if entity @s[tag=Power2] as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..6] run function game:modifiers/sharks/dismount

execute if entity @s[tag=Power3] as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute if entity @s[tag=Power3] as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..7] run function game:modifiers/sharks/dismount

execute if entity @s[tag=GasPower] as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute if entity @s[tag=GasPower] as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..7] run function game:modifiers/sharks/dismount

execute if entity @s[tag=BlastBarrel1] as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..6] run function game:modifiers/crabs/dismount
execute if entity @s[tag=BlastBarrel1] as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..6] run function game:modifiers/sharks/dismount

execute if entity @s[tag=BlastBarrel2] as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute if entity @s[tag=BlastBarrel2] as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..7] run function game:modifiers/sharks/dismount

execute if entity @s[tag=Power1] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:{translate:"cannonball.normal.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:-1}
execute if entity @s[tag=Power2] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:{translate:"cannonball.normal.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:1}
execute if entity @s[tag=Power3] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:{translate:"cannonball.normal.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:2}
execute if entity @s[tag=BlastBarrel1] run summon creeper ~ ~ ~ {Tags:["BlastBarrelCreeper","CannonballCreeper"],CustomName:{translate:"item.blast_barrel.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:2}
execute if entity @s[tag=BlastBarrel1] run summon creeper ~ ~ ~ {Tags:["BlastBarrelCreeper","CannonballCreeper"],CustomName:{translate:"item.blast_barrel.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:2}
execute if entity @s[tag=BlastBarrel2] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["BlastBarrelCreeper","CannonballCreeper"],CustomName:{translate:"item.blast_barrel.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:3}
execute if entity @s[tag=BlastBarrel2] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["BlastBarrelCreeper","CannonballCreeper"],CustomName:{translate:"item.blast_barrel.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:2}
team join Collide @e[type=creeper,tag=BlastBarrelCreeper]
execute if entity @s[tag=GasPower,predicate=!cannons:safezones/island,predicate=!cannons:safezones/tutorial,predicate=!cannons:safezones/lobby] run summon creeper ~ ~ ~ {Tags:["GasCreeper","CannonballCreeper"],CustomName:{translate:"gas_explosion.generic"},Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:17s,ExplosionRadius:2}
team join NoName @e[type=creeper,tag=!hasUUID]
scoreboard players operation @e[type=creeper,tag=!HasUUID,sort=nearest,distance=..2] playerUUID = @s playerUUID
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=creeper,tag=!HasUUID,sort=nearest,distance=..2] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] add UtilKilled
execute if entity @s[tag=GoldImpact] run tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] add GoldKilled
execute store result score @a[tag=UtilKilled,distance=..6] KillerUUID run scoreboard players get @s playerUUID
execute as @e[type=creeper,tag=!HasUUID] run scoreboard players operation $current playerUUID = @s playerUUID
tag @e[type=creeper,tag=!HasUUID] add HasUUID

#> Blast Barrel chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=Power1] as @e[type=bat,tag=BlastBarrel,distance=..5] run function weapons:barrel/chainreact
execute if entity @s[tag=Power2] as @e[type=bat,tag=BlastBarrel,distance=..6] run function weapons:barrel/chainreact
execute if entity @s[tag=Power3] as @e[type=bat,tag=BlastBarrel,distance=..7] run function weapons:barrel/chainreact
execute if entity @s[tag=GasPower] as @e[type=bat,tag=BlastBarrel,distance=..7] run function weapons:barrel/chainreact
execute if entity @s[tag=BlastBarrel1] as @e[type=bat,tag=BlastBarrel,distance=..6] run function weapons:barrel/chainreact
execute if entity @s[tag=BlastBarrel2] as @e[type=bat,tag=BlastBarrel,distance=..7] run function weapons:barrel/chainreact

#> Explode nearby Cargo Traps
execute if entity @s[tag=Power1] as @e[type=husk,tag=CBTrap,distance=..5] on vehicle run function game:modifiers/lostcargo/chainreact
execute if entity @s[tag=Power2] as @e[type=husk,tag=CBTrap,distance=..6] on vehicle run function game:modifiers/lostcargo/chainreact
execute if entity @s[tag=Power3] as @e[type=husk,tag=CBTrap,distance=..7] on vehicle run function game:modifiers/lostcargo/chainreact
execute if entity @s[tag=GasPower] as @e[type=husk,tag=CBTrap,distance=..7] on vehicle run function game:modifiers/lostcargo/chainreact
execute if entity @s[tag=BlastBarrel1] as @e[type=husk,tag=CBTrap,distance=..6] on vehicle run function game:modifiers/lostcargo/chainreact
execute if entity @s[tag=BlastBarrel2] as @e[type=husk,tag=CBTrap,distance=..7] on vehicle run function game:modifiers/lostcargo/chainreact

#> Break nearby Cargo Barrels
execute if entity @s[tag=Power1] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..5] at @s run function game:modifiers/lostcargo/spillbarrel
execute if entity @s[tag=Power2] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..6] at @s run function game:modifiers/lostcargo/spillbarrel
execute if entity @s[tag=Power3] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..7] at @s run function game:modifiers/lostcargo/spillbarrel
execute if entity @s[tag=GasPower] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..7] at @s run function game:modifiers/lostcargo/spillbarrel
execute if entity @s[tag=BlastBarrel1] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..6] at @s run function game:modifiers/lostcargo/spillbarrel
execute if entity @s[tag=BlastBarrel2] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..7] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Boats
execute if entity @s[tag=Power1] run kill @e[type=oak_boat,tag=BoatBoat,distance=..5]
execute if entity @s[tag=Power2] run kill @e[type=oak_boat,tag=BoatBoat,distance=..6]
execute if entity @s[tag=Power3] run kill @e[type=oak_boat,tag=BoatBoat,distance=..7]
execute if entity @s[tag=GasPower] run kill @e[type=oak_boat,tag=BoatBoat,distance=..7]
execute if entity @s[tag=BlastBarrel1] run kill @e[type=oak_boat,tag=BoatBoat,distance=..6]
execute if entity @s[tag=BlastBarrel2] run kill @e[type=oak_boat,tag=BoatBoat,distance=..7]

#> Break nearby Crab Traps
execute if entity @s[tag=Power1] as @e[type=item_display,tag=CrabTrap,distance=..5] at @s run function weapons:crabtrap/break
execute if entity @s[tag=Power2] as @e[type=item_display,tag=CrabTrap,distance=..6] at @s run function weapons:crabtrap/break
execute if entity @s[tag=Power3] as @e[type=item_display,tag=CrabTrap,distance=..7] at @s run function weapons:crabtrap/break
execute if entity @s[tag=GasPower] as @e[type=item_display,tag=CrabTrap,distance=..7] at @s run function weapons:crabtrap/break
execute if entity @s[tag=BlastBarrel1] as @e[type=item_display,tag=CrabTrap,distance=..6] at @s run function weapons:crabtrap/break
execute if entity @s[tag=BlastBarrel2] as @e[type=item_display,tag=CrabTrap,distance=..7] at @s run function weapons:crabtrap/break

execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,distance=..2] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:3b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a[tag=UtilKilled,distance=..2] add damaged
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,tag=!damaged,distance=..4] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a[tag=UtilKilled,tag=!damaged,distance=..4] add damaged
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,tag=!damaged,distance=..5] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:1b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a[tag=UtilKilled,tag=!damaged,distance=..5] add damaged
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,tag=!damaged,distance=..6] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a remove damaged

# gold cannonballs don't instakill players on their own ships
execute if entity @s[tag=GoldImpact] as @a[tag=UtilKilled,distance=..6] unless entity @s[predicate=game:onorange,team=Orange] unless entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:3b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=GoldImpact] as @a[tag=UtilKilled,distance=..6] if entity @s[predicate=game:onorange,team=Orange] run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=GoldImpact] as @a[tag=UtilKilled,distance=..6] if entity @s[predicate=game:onpurple,team=Purple] run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}

# gas explosions don't instakill players on their own ships
execute if entity @s[tag=GasPower] as @a[tag=UtilKilled,distance=..6] unless entity @s[predicate=game:onorange,team=Orange] unless entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:3b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=GasPower] as @a[tag=UtilKilled,distance=..6] if entity @s[predicate=game:onorange,team=Orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=GasPower] as @a[tag=UtilKilled,distance=..6] if entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}

# clusters don't instakill players on their own ships
execute if entity @s[tag=cluster] as @a[tag=UtilKilled,distance=..6] unless entity @s[predicate=game:onorange,team=Orange] unless entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:3b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=cluster] as @a[tag=UtilKilled,distance=..6] if entity @s[predicate=game:onorange,team=Orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}
execute if entity @s[tag=cluster] as @a[tag=UtilKilled,distance=..6] if entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],custom_particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:2b,duration:1,show_particles:0b}]}}

execute as @e[type=area_effect_cloud,tag=damage,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @e[type=area_effect_cloud,tag=damage,tag=!HasName] add HasName