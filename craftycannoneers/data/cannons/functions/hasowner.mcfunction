tag @s remove HasOwner
scoreboard players operation $ownercheck playerUUID = @s playerUUID
execute at @s if entity @a[team=!Spectator,predicate=cannons:ownercheck,distance=..6] run tag @s add HasOwner

execute if entity @s[tag=!FireCannon] unless entity @s[tag=HasOwner] unless entity @s[tag=RecentTracer] run scoreboard players set @s cannonclaim 125
tag @s[tag=RecentTracer] remove RecentTracer