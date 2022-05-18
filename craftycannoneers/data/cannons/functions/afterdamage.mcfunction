function cannons:airfill

scoreboard players operation @s CalcAir2 -= @s CalcAir1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players add $DamagePurple CmdData 14
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players add $DamageOrange CmdData 14

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2

kill @s