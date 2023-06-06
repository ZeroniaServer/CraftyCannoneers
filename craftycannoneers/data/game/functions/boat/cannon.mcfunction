#> Check if player is holding a Cannonball/Gunpowder and facing the right direction
scoreboard players set $rightdir CmdData 0
execute on vehicle on passengers if entity @s[type=player] unless entity @s[predicate=!cannons:holdgp,predicate=!cannons:holdcb,predicate=!cannons:holdfb,predicate=!cannons:holdcbc,predicate=!cannons:holdccb,predicate=!cannons:holdcocb,predicate=!cannons:holdgcb,predicate=!cannons:holdpcb,predicate=!cannons:holdtcb,predicate=!cannons:holdbcb,predicate=!cannons:holdgocb] anchored eyes positioned as @s on vehicle on passengers rotated as @s[type=armor_stand] on vehicle on passengers if entity @s[type=player] anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set $rightdir CmdData 1

#> Prevent clicking on Cannon if not looking in right direction
execute if score $rightdir CmdData matches 1 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run data merge entity @s[type=interaction,tag=!canclick] {width:0,height:0}
execute if score $rightdir CmdData matches 1 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run tag @s[type=interaction,tag=!canclick] add canclick
execute if score $rightdir CmdData matches 0 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run data merge entity @s[type=interaction,tag=canclick] {width:1,height:-1}
execute if score $rightdir CmdData matches 0 on vehicle on passengers if entity @s[type=camel] on passengers on passengers run tag @s[type=interaction,tag=canclick] remove canclick

#> Detect occupied boat
scoreboard players set $hasplayer CmdData 0
execute on vehicle on passengers if entity @s[type=player] run scoreboard players set $hasplayer CmdData 1

#> Rotate the Cannon along with the boat
execute if score $hasplayer CmdData matches 0 rotated as @s on passengers positioned as @s[type=camel] run tp @s ~ ~ ~ ~ ~
execute if score $hasplayer CmdData matches 0 rotated as @s on passengers on passengers on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score $hasplayer CmdData matches 0 on passengers if entity @s[type=camel] run function everytick:permababy

execute if score $hasplayer CmdData matches 1 rotated as @s on vehicle on passengers positioned as @s[type=camel] run tp @s ~ ~ ~ ~ ~
execute if score $hasplayer CmdData matches 1 rotated as @s on vehicle on passengers on passengers on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score $hasplayer CmdData matches 1 on vehicle on passengers if entity @s[type=camel] run function everytick:permababy

#> Mount camel to boat
execute if score $hasplayer CmdData matches 1 on passengers if entity @s[type=camel] on passengers on passengers run data merge entity @s[type=interaction] {width:1,height:-1}
execute if score $hasplayer CmdData matches 1 on passengers run tag @s[type=camel] add temp
execute if score $hasplayer CmdData matches 1 on passengers run ride @s[type=camel] dismount
execute if score $hasplayer CmdData matches 1 on vehicle run ride @e[type=camel,tag=temp,limit=1] mount @s
execute if score $hasplayer CmdData matches 1 run tag @e[type=camel,tag=temp] remove temp