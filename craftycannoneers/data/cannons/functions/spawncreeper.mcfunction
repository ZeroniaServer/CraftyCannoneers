# effect give @a[team=!Lobby,team=!Spectator,distance=..1] instant_damage 1 10 true
# effect give @a[team=!Lobby,team=!Spectator,distance=1..3] instant_damage 1 1 true
# effect give @a[team=!Lobby,team=!Spectator,distance=4..5] instant_damage 1 0 true

execute as @s[tag=ImpactMarker,tag=Power1] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:'{"text":"a Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:-1}
execute as @s[tag=ImpactMarker,tag=Power2] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:'{"text":"a Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:1.3}
execute as @s[tag=ImpactMarker,tag=Power3] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],CustomName:'{"text":"a Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:2}
execute as @s[tag=ImpactMarker,tag=GasPower] run summon creeper ~ ~ ~ {Tags:["GasCreeper"],CustomName:'{"text":"a Gas Cannonball"}',Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,ExplosionRadius:3}

scoreboard players operation @e[type=creeper,tag=!HasUUID,limit=1,sort=nearest,distance=..2] playerUUID = @s playerUUID
data modify entity @e[type=creeper,tag=!HasUUID,limit=1,sort=nearest,distance=..2] CustomName set from entity @s CustomName
tag @a[team=!Spectator,team=!Lobby,distance=..10] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..10] KillerUUID run scoreboard players get @s playerUUID
tag @e[type=creeper,tag=!HasUUID] add HasUUID

execute unless entity @s[predicate=cannons:safezones/island] unless entity @s[scores={CmdData=1..}] run function cannons:lightfill1
execute unless entity @s[predicate=cannons:safezones/island] unless entity @s[scores={CmdData=1..}] run function cannons:airfill

scoreboard players set @s CmdData 1

kill @a[team=!Lobby,team=!Spectator,distance=..5]
execute as @a[team=!Lobby,team=!Spectator,distance=..5] run function cannons:utilkillcheck