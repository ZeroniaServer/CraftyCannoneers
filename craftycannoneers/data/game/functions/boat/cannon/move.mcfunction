#> Check if player is holding the right items and facing the right direction
scoreboard players set $rightdir CmdData 0
execute on vehicle run scoreboard players add @s PowerM 0
execute on vehicle if score @s[tag=Sailing,tag=!FireCannon] PowerM matches 0 on passengers if entity @s[type=player,predicate=cannons:holdgp] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute on vehicle if score @s[tag=Sailing,tag=!FireCannon] PowerM matches 1..4 on passengers if entity @s[type=player] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute on vehicle if score @s[tag=Sailing,tag=!FireCannon] PowerM matches 5 on passengers if entity @s[type=player,predicate=!cannons:holdgp] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1

#> Detect occupied boat and adjust hitbox + replace display
execute on vehicle if entity @s[tag=Sailing] on passengers on passengers on passengers if entity @s[type=item_display,tag=BoatCannonDisplay] on vehicle at @s run function game:boat/cannon/displayreplace

#> Prevent clicking on Cannon if not looking in right direction
execute if score $rightdir CmdData matches 0 on vehicle if entity @s[tag=Sailing] on passengers if entity @s[type=camel,tag=!swapped] run function game:boat/cannon/swap
execute if score $rightdir CmdData matches 1 on vehicle if entity @s[tag=Sailing] on passengers if entity @s[type=camel,tag=swapped] run function game:boat/cannon/swapback

#> Rotate the Cannon along with the boat
execute rotated as @s on vehicle on passengers positioned as @s[type=camel] run tp @s ~ ~ ~ ~ ~
execute rotated as @s on vehicle on passengers on passengers positioned as @s[type=villager] run tp @s ~ ~ ~ ~ ~
execute rotated as @s on vehicle on passengers on passengers on passengers positioned as @s run tp @s[tag=BoatCannonDisplay] ~ ~ ~ ~ ~
execute on vehicle on passengers if entity @s[type=camel] run function everytick:permababy