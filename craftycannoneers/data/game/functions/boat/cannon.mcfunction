#> Rotate the Cannon along with the boat
execute rotated as @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~

#> Check if player is holding a Cannonball/Gunpowder and facing the right direction
scoreboard players set $rightdir CmdData 0
execute on vehicle on passengers if entity @s[type=player] unless entity @s[predicate=!cannons:holdgp,predicate=!cannons:holdcb,predicate=!cannons:holdfb,predicate=!cannons:holdcbc,predicate=!cannons:holdccb,predicate=!cannons:holdcocb,predicate=!cannons:holdgcb,predicate=!cannons:holdpcb,predicate=!cannons:holdtcb,predicate=!cannons:holdbcb,predicate=!cannons:holdgocb] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1

#> Adjust Cannon hitbox size accordingly
execute on passengers if score $rightdir CmdData matches 1 run data merge entity @s[tag=!canclick] {width:3,height:2,response:1b}
execute on passengers if score $rightdir CmdData matches 1 run tag @s add canclick
execute on passengers if score $rightdir CmdData matches 0 run data merge entity @s[tag=canclick] {width:0,height:0,response:0b}
execute on passengers if score $rightdir CmdData matches 0 run tag @s remove canclick

#> Hitbox overlaps husk when boat is unoccupied
scoreboard players set $hasplayer CmdData 0
execute on vehicle on passengers if entity @s[type=player] run scoreboard players set $hasplayer CmdData 1
execute if score $hasplayer CmdData matches 0 on passengers run data merge entity @s[tag=!unoccupied] {width:1,height:1,response:1b}
execute if score $hasplayer CmdData matches 0 on passengers run tag @s add unoccupied
execute if score $hasplayer CmdData matches 1 on passengers run data merge entity @s[tag=unoccupied,tag=!canclick] {width:0,height:0,response:0b}
execute if score $hasplayer CmdData matches 1 on passengers run tag @s remove unoccupied