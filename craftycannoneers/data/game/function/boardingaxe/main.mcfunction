#> Boarding Axe gains/loses knockback depending on if player boards/leaves enemy ship
scoreboard players set $boarding CmdData 0
execute if entity @s[team=Orange,predicate=game:onpurple] run scoreboard players set $boarding CmdData 1
execute if entity @s[team=Purple,predicate=game:onorange] run scoreboard players set $boarding CmdData 1
execute if score $boarding CmdData matches 0 if predicate game:boardingaxe_kb run function game:boardingaxe/nokb
execute if score $boarding CmdData matches 1 if predicate game:boardingaxe_nokb run function game:boardingaxe/kb
scoreboard players operation @s boardstate = $boarding CmdData
scoreboard players reset $boarding CmdData