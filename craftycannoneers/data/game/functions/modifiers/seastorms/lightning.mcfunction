execute as @a[team=!Lobby,team=!Spectator,limit=1,nbt={OnGround:1b},sort=random,predicate=cannons:safezones/island] at @s run summon leash_knot ~ ~ ~ {Tags:["StormEntity","LightningPlacer"]}

execute as @e[type=leash_knot,tag=LightningPlacer] at @s run summon marker ~ ~ ~ {Tags:["LightningMarker","StormEntity"]}

execute as @e[type=leash_knot,tag=LightningPlacer] at @s run tp @s ~ ~-200 ~
kill @e[type=leash_knot,tag=LightningPlacer]