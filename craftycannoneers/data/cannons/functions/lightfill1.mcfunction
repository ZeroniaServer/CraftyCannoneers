execute if entity @s[predicate=!cannons:safezones/tutorial] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 moving_piston replace air
# tellraw @a [{"text":"my first air: "},{"score":{"name":"@s","objective":"CalcAir1"}}]
# execute if entity @s[predicate=!cannons:safezones/tutorial] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace light[level=0]
# scoreboard players operation @s[predicate=!cannons:safezones/tutorial] CalcAir1 -= @s click
# tellraw @a [{"text":"factoring in extra air: "},{"score":{"name":"@s","objective":"CalcAir1"}}]
execute if entity @s[tag=ChainImpact] store result score @s CalcSail1 run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~ 200 ~ filtered #game:sailblocks
execute if entity @s[tag=ChainImpact] positioned ~ 200 ~ positioned ~5 ~5 ~5 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace #game:sailblocks