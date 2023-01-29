#> Boarding Axe gains/loses knockback depending on if player boards/leaves enemy ship
scoreboard players set $boarding CmdData 0
execute if entity @s[team=Orange,predicate=game:onpurple] run scoreboard players set $boarding CmdData 1
execute if entity @s[team=Purple,predicate=game:onorange] run scoreboard players set $boarding CmdData 1
execute unless score @s boardstate = $boarding CmdData run function game:boardingaxe/replace
scoreboard players operation @s boardstate = $boarding CmdData
scoreboard players reset $boarding CmdData