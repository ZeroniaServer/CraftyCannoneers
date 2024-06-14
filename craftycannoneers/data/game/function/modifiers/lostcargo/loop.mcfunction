#> As CargoSpawn marker
execute as @e[type=marker,tag=CargoSpawn,tag=Spawned] at @s run function game:modifiers/lostcargo/cargospawn

#> As BarrelSpawn marker
execute as @e[type=marker,tag=BarrelSpawn] at @s run function game:modifiers/lostcargo/barrelspawn

#> As CargoBarrel item_display
execute as @e[type=item_display,tag=CargoBarrel] at @s run function game:modifiers/lostcargo/asbarrel

#> Spawn over time
scoreboard players add $CargoTime CmdData 1
execute if score $CargoTime CmdData matches 1200 if predicate game:fiftyfifty run scoreboard players add $SpawnCargo CmdData 1
execute if score $CargoTime CmdData matches 1200.. run scoreboard players reset $CargoTime CmdData
execute if score $SpawnCargo CmdData matches 1.. run function game:modifiers/lostcargo/spawnpurple
execute if score $SpawnCargo CmdData matches 1.. run function game:modifiers/lostcargo/spawnorange
execute if score $SpawnCargo CmdData matches 1.. run scoreboard players remove $SpawnCargo CmdData 1

#> Spawn if repeated ship hits
execute if score $OrangeHitStreak CmdData matches 3.. run function game:modifiers/lostcargo/spawnpurple
execute if score $OrangeHitStreak CmdData matches 3.. run scoreboard players reset $OrangeHitStreak CmdData
execute if score $PurpleHitStreak CmdData matches 3.. run function game:modifiers/lostcargo/spawnorange
execute if score $PurpleHitStreak CmdData matches 3.. run scoreboard players reset $PurpleHitStreak CmdData

execute if score $OrangeHitStreak CmdData matches 1.. run scoreboard players add $OrangeStreakTimer CmdData 1
execute if score $PurpleHitStreak CmdData matches 1.. run scoreboard players add $PurpleStreakTimer CmdData 1

execute if score $OrangeStreakTimer CmdData matches 30.. run scoreboard players reset $OrangeHitStreak CmdData
execute if score $PurpleStreakTimer CmdData matches 30.. run scoreboard players reset $PurpleHitStreak CmdData
execute if score $OrangeStreakTimer CmdData matches 30.. run scoreboard players reset $OrangeStreakTimer CmdData
execute if score $PurpleStreakTimer CmdData matches 30.. run scoreboard players reset $PurpleStreakTimer CmdData