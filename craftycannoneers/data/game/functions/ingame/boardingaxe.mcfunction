#> Boarding Axe gains/loses knockback depending on if player boards/leaves enemy ship
scoreboard players set $boarding CmdData 0
execute if entity @s[team=Orange,predicate=game:onpurple] run scoreboard players set $boarding CmdData 1
execute if entity @s[team=Purple,predicate=game:onorange] run scoreboard players set $boarding CmdData 1
execute unless score @s boardstate = $boarding CmdData run scoreboard players set $runreplace CmdData 1
execute unless score $runreplace CmdData matches 1 if score $boarding CmdData matches 0 if data entity @s Inventory[{tag:{Knockback:1}}] run scoreboard players set $runreplace CmdData 1
execute unless score $runreplace CmdData matches 1 if score $boarding CmdData matches 1 if data entity @s Inventory[{tag:{Knockback:0}}] run scoreboard players set $runreplace CmdData 1
execute if score $runreplace CmdData matches 1 run function game:boardingaxe/replace

scoreboard players operation @s boardstate = $boarding CmdData
scoreboard players reset $boarding CmdData
scoreboard players reset $runreplace CmdData