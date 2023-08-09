#> Check if player is holding the right items and facing the right direction
execute rotated as @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=0}] rotated ~ ~40 on passengers if entity @s[type=player,predicate=cannons:holdgp] anchored eyes positioned as @s anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute rotated as @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=1..}] rotated ~ ~40 on passengers if entity @s[type=player] anchored eyes positioned as @s anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute if entity @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=1..}] on passengers if entity @s[type=player] unless predicate cannons:holdgp unless predicate cannons:holdcb unless predicate cannons:holdbcb unless predicate cannons:holdcbc unless predicate cannons:holdccb unless predicate cannons:holdcocb unless predicate cannons:holdfb unless predicate cannons:holdgcb unless predicate cannons:holdgocb unless predicate cannons:holdtcb run scoreboard players set $response CmdData 0
execute if entity @s[tag=still,tag=!FireCannon,tag=!OnFire,scores={PowerM=5}] on passengers if entity @s[type=player,predicate=cannons:holdgp] run scoreboard players set $response CmdData 0

#> Make player weak to prevent sounds
execute if score $rightdir CmdData matches 1 on passengers run effect give @s[type=player,tag=!lookAtBCannon] weakness infinite 0 true
execute if score $rightdir CmdData matches 1 on passengers run tag @s[type=player] add lookAtBCannon
execute if score $rightdir CmdData matches 0 on passengers run tag @s[type=player] remove lookAtBCannon

#> Detect occupied boat and replace display
execute if entity @s[tag=!displayreplaced] on passengers on passengers on passengers on passengers run item replace entity @s[type=item_display,tag=BoatCannonDisplay] container.0 with air
execute if entity @s[tag=!displayreplaced] run function game:boat/cannon/updategunpowder
tag @s[tag=!displayreplaced] add displayreplaced

#> Tip Cannon model down while moving
function game:boat/cannon/motiondetect
execute if entity @s[tag=!still,tag=!tipped,tag=!FireCannon,tag=!OnFire] run function game:boat/cannon/tipcannon
execute if entity @s[tag=still,tag=tipped,tag=!FireCannon,tag=!OnFire] run function game:boat/cannon/updategunpowder

#> Prevent clicking on Cannon if not looking in right direction
execute if score $rightdir CmdData matches 0 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=interaction] run function game:boat/cannon/removeinteraction
execute if score $rightdir CmdData matches 1 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=!interaction] run function game:boat/cannon/replaceinteraction

#> Prevent click animation if not holding right item
execute if score $rightdir CmdData matches 1 on passengers on passengers on passengers store result entity @s[type=interaction] response byte 1 run scoreboard players get $response CmdData

#> Interaction cycling
execute if score $rightdir CmdData matches 0 run scoreboard players set @s sprint 0
execute if score $rightdir CmdData matches 1 run scoreboard players add @s sprint 1
execute if score $rightdir CmdData matches 1 if score @s sprint matches 1 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=interaction] run function game:boat/cannon/cycleinteraction
execute if score $rightdir CmdData matches 1 if score @s sprint matches 7 on passengers on passengers at @s[type=area_effect_cloud,tag=base,tag=interaction] on passengers if entity @s[tag=kill] run function arenaclear:kill
scoreboard players set @s[scores={sprint=12..}] sprint 0

#> Rotate the Cannon along with the boat
execute rotated as @s on passengers positioned as @s[type=camel] run tp @s ~ ~ ~ ~ ~
execute rotated as @s on passengers on passengers on passengers on passengers positioned as @s run tp @s[tag=BoatCannonDisplay] ~ ~ ~ ~ ~