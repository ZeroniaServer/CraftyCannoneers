# effect give @a[team=!Lobby,team=!Spectator,distance=..1] instant_damage 1 10 true
# effect give @a[team=!Lobby,team=!Spectator,distance=1..3] instant_damage 1 1 true
# effect give @a[team=!Lobby,team=!Spectator,distance=4..5] instant_damage 1 0 true

execute if entity @s[tag=ImpactMarker,tag=Power1] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:'{"text":"a Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:-1}
execute if entity @s[tag=ImpactMarker,tag=Power2] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:'{"text":"a Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:1.3}
execute if entity @s[tag=ImpactMarker,tag=Power3] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:'{"text":"a Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:2}
execute if entity @s[tag=ImpactMarker,tag=GasPower,predicate=!cannons:safezones/island] run summon creeper ~ ~ ~ {Tags:["GasCreeper"],CustomName:'{"text":"a Gas Explosion"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:2}

scoreboard players operation @e[type=creeper,tag=!HasUUID,limit=1,sort=nearest,distance=..2] playerUUID = @s playerUUID
data modify entity @e[type=creeper,tag=!HasUUID,limit=1,sort=nearest,distance=..2] CustomName set from entity @s CustomName
tag @a[team=!Spectator,team=!Lobby,distance=..6] add UtilKilled
execute if entity @s[tag=GoldImpact] run tag @a[team=!Spectator,team=!Lobby,distance=..6] add GoldKilled
execute store result score @a[tag=UtilKilled,distance=..6] KillerUUID run scoreboard players get @s playerUUID
execute as @e[type=creeper,tag=!HasUUID] run scoreboard players operation $current playerUUID = @s playerUUID
tag @e[type=creeper,tag=!HasUUID] add HasUUID

execute unless entity @s[predicate=cannons:safezones/island] unless entity @s[scores={CmdData=1..}] run function cannons:lightfill1
execute unless entity @s[predicate=cannons:safezones/island] unless entity @s[scores={CmdData=1..}] run function cannons:airfill

scoreboard players set @s CmdData 1

execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,distance=..2] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a[tag=UtilKilled,distance=..2] add damaged
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,tag=!damaged,distance=..4] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a[tag=UtilKilled,tag=!damaged,distance=..4] add damaged
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,tag=!damaged,distance=..5] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a[tag=UtilKilled,tag=!damaged,distance=..5] add damaged
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] as @a[tag=UtilKilled,tag=!damaged,distance=..6] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=!GoldImpact,tag=!cluster,tag=!GasPower] run tag @a remove damaged
execute if entity @s[tag=GoldImpact] as @a[tag=UtilKilled,distance=..5] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=GasPower] as @a[tag=UtilKilled,distance=..6] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}

# clusters don't instakill players on their own ships
execute if entity @s[tag=cluster] as @a[tag=UtilKilled,distance=..5] unless entity @s[predicate=game:onorange,team=Orange] unless entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=cluster] as @a[tag=UtilKilled,distance=..5] if entity @s[predicate=game:onorange,team=Orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if entity @s[tag=cluster] as @a[tag=UtilKilled,distance=..5] if entity @s[predicate=game:onpurple,team=Purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["damage"],Particle:"block air",ReapplicationDelay:-1,Radius:0.1f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}


data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=area_effect_cloud,tag=damage,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
data remove storage craftycannoneers:temp CustomName
tag @e[type=area_effect_cloud,tag=damage,tag=!HasName] add HasName