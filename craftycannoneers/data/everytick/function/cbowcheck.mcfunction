#> Crossbow loaded check
execute store success score $cbloaded CmdData run clear @s crossbow[charged_projectiles] 0
execute if score $cbloaded CmdData matches 1 run tag @s add loaded
execute unless score $cbloaded CmdData matches 1 run tag @s remove loaded