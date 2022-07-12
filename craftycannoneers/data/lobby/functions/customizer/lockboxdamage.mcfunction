scoreboard players operation $lockboxspawn CmdData = $ShipHP CmdData
scoreboard players operation $lockboxspawn CmdData /= $3 CmdData

#> add some spicy RNG to spawn required hp
summon marker ~ ~ ~ {Tags:["LockHPRNG"]}
scoreboard players set @e[type=marker,tag=LockHPRNG] RNGmax 120
execute as @e[type=marker,tag=LockHPRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=LockHPRNG] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation $lockboxspawn CmdData += @e[type=marker,limit=1,sort=random,tag=LockHPRNG] RNGscore
kill @e[type=marker,tag=LockHPRNG]