scoreboard players set $CombinedDamage CmdData 0
scoreboard players set $lockboxspawn CmdData 1000

scoreboard players operation $lockboxspawn CmdData = $ShipHP CmdData
scoreboard players operation $lockboxspawn CmdData /= $3 CmdData

#> add some spicy RNG to spawn required hp
summon marker ~ ~ ~ {Tags:["LockHPRNG"]}
scoreboard players set $max RNGmax 120
execute store result score $lockhp RNGscore run data get entity @e[type=marker,tag=LockHPRNG,limit=1] UUID[0]
kill @e[type=marker,tag=LockHPRNG,limit=1]
scoreboard players operation $lockhp RNGscore %= $max RNGmax
scoreboard players reset $max RNGmax
scoreboard players operation $lockboxspawn CmdData += $lockhp RNGscore
scoreboard players reset $lockhp RNGscore