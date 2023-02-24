execute if score @s CmdData matches 6..9 run summon marker ~ ~ ~ {Tags:["ImpactMarker","BlastBarrel1","BlastBarrel"]}
execute if score @s CmdData matches 10 run summon marker ~ ~ ~ {Tags:["ImpactMarker","BlastBarrel2","BlastBarrel"]}

scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=BlastBarrel,tag=!HasUUID,limit=1] playerUUID = @s playerUUID
data modify entity @e[type=marker,tag=ImpactMarker,tag=BlastBarrel,tag=!HasUUID,limit=1] CustomName set from entity @s CustomName
execute as @e[type=marker,tag=ImpactMarker,tag=BlastBarrel,tag=!HasUUID,limit=1] at @s run function cannons:spawncreeper
tag @e[type=marker,tag=ImpactMarker,tag=BlastBarrel,tag=!HasUUID,limit=1] add HasUUID

execute if score @s CmdData matches 10 if predicate cannons:ships/purple run scoreboard players add $CritPurple CmdData 500
execute if score @s CmdData matches 10 if predicate cannons:ships/orange run scoreboard players add $CritOrange CmdData 500
execute if score @s CmdData matches 10 run function cannons:gas/hitmarker