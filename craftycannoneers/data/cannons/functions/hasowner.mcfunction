tag @s remove HasOwner
scoreboard players operation $ownercheck playerUUID = @s playerUUID
execute at @s if entity @a[team=!Lobby,team=!Spectator,predicate=cannons:ownercheck,distance=..3] run tag @s add HasOwner

execute as @s[tag=!FireCannon] unless entity @s[tag=HasOwner] unless entity @s[tag=RecentTracer] run scoreboard players set @s cannonclaim 125
tag @s[tag=RecentTracer] remove RecentTracer