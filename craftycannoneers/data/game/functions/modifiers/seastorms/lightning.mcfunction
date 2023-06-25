execute as @a[team=!Lobby,team=!Spectator,limit=1,nbt={OnGround:1b},sort=random,predicate=cannons:safezones/island] at @s run summon leash_knot ~ ~ ~ {Tags:["StormEntity","LightningPlacer"]}
execute unless entity @e[type=leash_knot,tag=LightningPlacer] as @a[team=!Lobby,team=!Spectator,limit=1,predicate=game:boat/inboat,sort=random,predicate=cannons:safezones/island] at @s run summon leash_knot ~ ~ ~ {Tags:["StormEntity","LightningPlacer"]}
execute as @e[type=leash_knot,tag=LightningPlacer,limit=1] at @s run function game:modifiers/seastorms/placer

scoreboard players set $StormTime CmdData 650