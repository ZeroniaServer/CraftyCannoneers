execute unless predicate cannons:safezones/tutorial store result score @s CalcAir2 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 light[level=0] replace air
execute unless predicate cannons:safezones/tutorial run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace light[level=0]

execute unless predicate cannons:safezones/tutorial store result score @s CalcFire2 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 light[level=0] replace fire
execute unless predicate cannons:safezones/tutorial run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 fire replace light[level=0]

execute if entity @s[tag=ChainImpact] store result score @s CalcSail2 run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~ 200 ~ filtered #game:sailblocks
execute if entity @s[tag=ChainImpact] positioned ~ 200 ~ positioned ~5 ~5 ~5 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace #game:sailblocks