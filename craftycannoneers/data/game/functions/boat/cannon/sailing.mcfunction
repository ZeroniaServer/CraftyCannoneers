#> Check if player is holding the right items and facing the right direction
execute rotated as @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=0}] rotated ~ ~40 on passengers if entity @s[type=player,predicate=cannons:holdgp] anchored eyes positioned as @s anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute rotated as @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=1..}] rotated ~ ~40 on passengers if entity @s[type=player] anchored eyes positioned as @s anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute if entity @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=1..}] on passengers if entity @s[type=player] unless predicate cannons:holdgp unless predicate cannons:holdcb unless predicate cannons:holdbcb unless predicate cannons:holdcbc unless predicate cannons:holdccb unless predicate cannons:holdcocb unless predicate cannons:holdfb unless predicate cannons:holdgcb unless predicate cannons:holdgocb unless predicate cannons:holdtcb run scoreboard players set $response CmdData 0
execute if entity @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=5}] on passengers if entity @s[type=player,predicate=cannons:holdgp] run scoreboard players set $response CmdData 0

#> Make player weak to prevent sounds
execute if score $rightdir CmdData matches 1 on passengers run effect give @s[type=player,tag=!lookAtBCannon] weakness infinite 0 true
execute if score $rightdir CmdData matches 1 on passengers run tag @s[type=player] add lookAtBCannon
execute if score $rightdir CmdData matches 0 on passengers run tag @s[type=player] remove lookAtBCannon

#> Tip Cannon model down while moving
function game:boat/cannon/motiondetect
scoreboard players add @s[scores={eyeclick=1..}] eyeclick 1
scoreboard players reset @s[scores={eyeclick=10..}] eyeclick
execute if entity @s[tag=!still,tag=!tipped,tag=!FireCannon,tag=!OnFire] unless score @s eyeclick matches 1.. run function game:boat/cannon/tipcannon
execute if entity @s[tag=still,tag=tipped,tag=!FireCannon,tag=!OnFire] run function game:boat/cannon/untipcannon

#> Prevent clicking on Cannon if not looking in right direction
execute if score $rightdir CmdData matches 0 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=interaction] run function game:boat/cannon/removeinteraction
execute if score $rightdir CmdData matches 1 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=!interaction] run function game:boat/cannon/replaceinteraction

#> Prevent click animation if not holding right item
execute if score $rightdir CmdData matches 1 on passengers on passengers on passengers store result entity @s[type=interaction] response byte 1 run scoreboard players get $response CmdData

#> Interaction cycling
execute if score $rightdir CmdData matches 0 run scoreboard players set @s ctr2 0
execute if score $rightdir CmdData matches 1 run scoreboard players add @s ctr2 1
execute if score $rightdir CmdData matches 1 if score @s ctr2 matches 12 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=interaction] run function game:boat/cannon/cycleinteraction
execute if score $rightdir CmdData matches 1 if score @s ctr2 matches 6 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=interaction] on passengers if entity @s[tag=kill] run function arenaclear:kill
scoreboard players set @s[scores={ctr2=12..}] ctr2 0