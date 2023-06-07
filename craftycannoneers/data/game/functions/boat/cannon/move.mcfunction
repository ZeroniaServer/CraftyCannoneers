#> Check if player is holding the right items and facing the right direction
scoreboard players set $rightdir CmdData 0
execute on vehicle run scoreboard players add @s PowerM 0
execute on vehicle if score @s PowerM matches 0 on passengers if entity @s[type=player,predicate=cannons:holdgp] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute on vehicle if score @s PowerM matches 1..4 on passengers if entity @s[type=player] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute on vehicle if score @s PowerM matches 5 on passengers if entity @s[type=player,predicate=!cannons:holdgp] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1
execute on vehicle if entity @s[tag=FireCannon] run scoreboard players set $rightdir CmdData 0

#> Prevent clicking on Cannon if not looking in right direction
execute if score $rightdir CmdData matches 1 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run data merge entity @s[type=interaction,tag=!canclick] {width:0,height:0}
execute if score $rightdir CmdData matches 1 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run tag @s[type=interaction,tag=!canclick] add canclick
execute if score $rightdir CmdData matches 0 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run data merge entity @s[type=interaction,tag=canclick] {width:1,height:-1}
execute if score $rightdir CmdData matches 0 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run tag @s[type=interaction,tag=canclick] remove canclick

#> Detect occupied boat and adjust hitbox
scoreboard players set $hasplayer CmdData 0
execute on vehicle on passengers if entity @s[type=player] run scoreboard players set $hasplayer CmdData 1
execute if score $hasplayer CmdData matches 1 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run data merge entity @s[type=interaction,tag=!occupied] {width:1,height:-1}
execute if score $hasplayer CmdData matches 1 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run tag @s[type=interaction,tag=!occupied] add occupied

#> Rotate the Cannon along with the boat
execute rotated as @s on vehicle on passengers positioned as @s[type=camel] run tp @s ~ ~ ~ ~ ~
execute rotated as @s on vehicle on passengers on passengers on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
execute on vehicle on passengers if entity @s[type=camel] run function everytick:permababy