scoreboard players add @e[tag=ImpactMarker] CmdData 1

execute as @e[tag=ImpactMarker,scores={CmdData=3}] at @s run function cannons:lightfill2
execute as @e[tag=ImpactMarker,scores={CmdData=3}] at @s run function cannons:afterdamage
kill @e[tag=ImpactMarker,scores={CmdData=3..}]