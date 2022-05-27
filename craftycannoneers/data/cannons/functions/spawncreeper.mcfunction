execute as @s at @s run effect give @a[team=!Lobby,team=!Spectator,distance=..1] instant_damage 1 10 true
execute as @s at @s run effect give @a[team=!Lobby,team=!Spectator,distance=1..3] instant_damage 1 1 true
execute as @s at @s run effect give @a[team=!Lobby,team=!Spectator,distance=4..5] instant_damage 1 0 true

execute as @e[tag=ImpactMarker,tag=Power1] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:-1}

execute as @e[tag=ImpactMarker,tag=Power2] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:1.3}

execute as @e[tag=ImpactMarker,tag=Power3] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:2}

execute as @e[tag=ImpactMarker,tag=GasPower] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["GasCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:3}

execute as @e[type=creeper,tag=!HasUUID] at @s run scoreboard players operation @s playerUUID = @e[tag=ImpactMarker,limit=1,sort=nearest,distance=..2] playerUUID
execute as @e[type=creeper,tag=!HasUUID] run scoreboard players operation $current playerUUID = @s playerUUID
tag @e[type=creeper,tag=!HasUUID] add HasUUID

execute as @e[tag=ImpactMarker] at @s unless entity @s[predicate=cannons:safezones/island] unless entity @s[scores={CmdData=1..}] run function cannons:lightfill1
execute as @e[tag=ImpactMarker] at @s unless entity @s[predicate=cannons:safezones/island] unless entity @s[scores={CmdData=1..}] run function cannons:airfill

execute as @e[tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run scoreboard players set @s CmdData 1