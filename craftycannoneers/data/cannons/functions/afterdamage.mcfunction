function cannons:airfill

scoreboard players operation @s CalcAir2 -= @s CalcAir1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players add $DamagePurple CmdData 14
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Purple's Ship","color":"dark_purple"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players add $DamageOrange CmdData 14
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Orange's Ship","color":"gold"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2

kill @s