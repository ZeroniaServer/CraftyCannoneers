execute as @s at @s store result score @s CalcAir2 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace light[level=0]

scoreboard players operation @s CalcAir2 -= @s CalcAir1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
#execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players add $DamagePurple CmdData 6
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
#execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players add $DamageOrange CmdData 6
scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2
tag @s remove DidDamage
say poggers