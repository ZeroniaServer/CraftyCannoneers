execute if entity @s[predicate=!cannons:safezones/tutorial] store result score @s CalcAir2 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 moving_piston replace air
execute if entity @s[predicate=!cannons:safezones/tutorial] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace moving_piston
# tellraw @a [{"text":"my air: "},{"score":{"name":"@s","objective":"CalcAir2"}}]
# scoreboard players operation @s[predicate=!cannons:safezones/tutorial] CalcAir2 += @s click
# tellraw @a [{"text":"factoring in extra air: "},{"score":{"name":"@s","objective":"CalcAir2"}}]
execute if entity @s[tag=ChainImpact] store result score @s CalcSail2 run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~ 200 ~ filtered #game:sailblocks
execute if entity @s[tag=ChainImpact] positioned ~ 200 ~ positioned ~5 ~5 ~5 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace #game:sailblocks