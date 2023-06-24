#> Check if player is holding the right items and facing the right direction
scoreboard players set $rightdir CmdData 0
scoreboard players add @s PowerM 0
execute rotated as @s[tag=Sailing,tag=!FireCannon,scores={PowerM=0}] rotated ~ ~40 on passengers if entity @s[type=player,predicate=cannons:holdgp] anchored eyes positioned as @s anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute rotated as @s[tag=Sailing,tag=!FireCannon,scores={PowerM=1..}] rotated ~ ~40 on passengers if entity @s[type=player] anchored eyes positioned as @s anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1

#> Make player weak to prevent sounds
execute if entity @s[tag=Sailing] if score $rightdir CmdData matches 1 on passengers run effect give @s[type=player,tag=!lookAtBCannon] weakness infinite 0 true
execute if entity @s[tag=Sailing] if score $rightdir CmdData matches 1 on passengers run tag @s[type=player] add lookAtBCannon
execute if entity @s[tag=Sailing] if score $rightdir CmdData matches 0 on passengers run tag @s[type=player] remove lookAtBCannon

#> Detect occupied boat and replace display
execute if entity @s[tag=Sailing,tag=!displayreplaced] on passengers on passengers on passengers on passengers run item replace entity @s[type=item_display,tag=BoatCannonDisplay] container.0 with air
execute if entity @s[tag=Sailing,tag=!displayreplaced] run function game:boat/cannon/updategunpowder
tag @s[tag=Sailing,tag=!displayreplaced] add displayreplaced

#> Rotate secondary display
execute on passengers on passengers on passengers on passengers if entity @s[type=item_display,tag=BoatCannonDisplay] run function game:boat/euler

#> Replace interaction once still
execute if entity @s[tag=Sailing] run function game:boat/cannon/motiondetect
execute if entity @s[tag=still,tag=!interactionreplaced] on passengers on passengers at @s run function game:boat/cannon/replaceinteraction
tag @s[tag=still,tag=!interactionreplaced] add interactionreplaced
execute if entity @s[tag=!still,tag=interactionreplaced] run tag @s remove interactionreplaced

#> Prevent clicking on Cannon if not looking in right direction
execute if score $rightdir CmdData matches 0 if entity @s[tag=Sailing] on passengers on passengers on passengers run data merge entity @s[type=interaction] {width:0,height:0,response:0b}
execute if score $rightdir CmdData matches 1 if entity @s[tag=Sailing] on passengers on passengers on passengers run data merge entity @s[type=interaction] {width:1,height:-1,response:1b}

#> Rotate the Cannon along with the boat
execute rotated as @s on passengers positioned as @s[type=camel] run tp @s ~ ~ ~ ~ ~
execute rotated as @s on passengers on passengers on passengers on passengers positioned as @s run tp @s[tag=BoatCannonDisplay] ~ ~ ~ ~ ~
execute on passengers if entity @s[type=camel] run function everytick:permababy

#> Make passengers invulnerable unless an arrow's nearby
execute at @s store success score $arrownearby CmdData if entity @e[type=arrow,limit=1,distance=..6]
execute if score $arrownearby CmdData matches 1 if entity @s[tag=invul] on passengers run function game:boat/cannon/noninvul
execute if score $arrownearby CmdData matches 1 run tag @s remove invul
execute if score $arrownearby CmdData matches 0 if entity @s[tag=!invul] on passengers run function game:boat/cannon/invul
execute if score $arrownearby CmdData matches 0 run tag @s add invul

#> Fire cannon
execute at @s[tag=FireCannon] run function game:boat/cannon/firecannon