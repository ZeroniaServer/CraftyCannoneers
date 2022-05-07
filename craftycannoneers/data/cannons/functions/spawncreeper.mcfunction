execute as @e[tag=ImpactMarker,tag=Power1] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:1}

execute as @e[tag=ImpactMarker,tag=Power2] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:2}

execute as @e[tag=ImpactMarker,tag=Power3] at @s unless entity @s[scores={CmdData=1..}] run summon creeper ~ ~ ~ {Tags:["CannonballCreeper"],Invulnerable:1b,Fuse:0,ExplosionRadius:3}

execute as @e[tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run function cannons:lightfill1
execute as @e[tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run function cannons:airfill

execute as @e[tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run scoreboard players set @s CmdData 1