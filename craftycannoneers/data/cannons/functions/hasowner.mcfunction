tag @s remove HasOwner
scoreboard players operation $ownercheck playerUUID = @s playerUUID
execute at @s if entity @a[team=!Spectator,predicate=cannons:ownercheck,distance=..6] run tag @s add HasOwner

scoreboard players set @s[tag=!FireCannon,tag=!HasOwner,tag=!RecentTracer] cannonclaim 125
tag @s[tag=RecentTracer] remove RecentTracer