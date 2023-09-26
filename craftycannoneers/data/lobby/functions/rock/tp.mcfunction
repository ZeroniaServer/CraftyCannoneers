execute on vehicle store result entity @s Air double 1 run scoreboard players get $toggle CmdData
scoreboard players add @s[predicate=game:mounted] CmdData 1
execute unless entity @s[predicate=game:mounted] run playsound rockhit master @a ~ ~ ~ 0.5 1
execute if score @s[predicate=!game:mounted] CmdData matches 3.. run particle item snowball ~ ~ ~ 0 0 0 0.05 5
kill @s[predicate=!game:mounted]