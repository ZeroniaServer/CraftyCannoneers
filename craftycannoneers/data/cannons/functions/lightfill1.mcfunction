execute at @s store result score @s CalcAir1 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 light[level=0] replace air
execute at @s[tag=ChainImpact] store result score @s CalcSail1 run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~ 200 ~ filtered #game:sailblocks
execute at @s[tag=ChainImpact] positioned ~ 200 ~ positioned ~5 ~5 ~5 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace #game:sailblocks