scoreboard players set $CombinedDamage CmdData 0
scoreboard players set $lockboxspawn CmdData 1000

scoreboard players operation $lockboxspawn CmdData = $ShipHP CmdData
scoreboard players operation $lockboxspawn CmdData /= $3 CmdData

#> add some spicy RNG to spawn required hp
execute store result score $lockhp RNGscore run random value 0..119
scoreboard players operation $lockboxspawn CmdData += $lockhp RNGscore