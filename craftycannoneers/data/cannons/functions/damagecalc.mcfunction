scoreboard players add @e[type=marker,tag=ImpactMarker] CmdData 1

execute as @e[type=marker,tag=ImpactMarker,tag=HitWeakpoint] at @s run function cannons:hitweakpoint

execute as @e[type=marker,tag=ImpactMarker,scores={CmdData=3}] at @s unless entity @s[predicate=cannons:safezones/island] run function cannons:lightfill2
execute as @e[type=marker,tag=ImpactMarker,scores={CmdData=3}] at @s unless entity @s[predicate=cannons:safezones/island] run function cannons:afterdamage

kill @e[type=marker,tag=ImpactMarker,scores={CmdData=3..}]