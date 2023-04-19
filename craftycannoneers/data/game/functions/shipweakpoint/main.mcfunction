#> Ingame
execute if score $gamestate CmdData matches 2 run function game:shipweakpoint/ingame

#> Fake weakpoint damage
execute as @e[type=marker,tag=FakePointMarker,tag=!WeakpointDamaged] at @s run function game:shipweakpoint/fakecheckdamage