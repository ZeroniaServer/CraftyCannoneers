#> Ingame
execute if score $gamestate CmdData matches 2 run function game:shipweakpoint/ingame

#> Fake weakpoint damage
execute as @e[type=marker,tag=FakePointMarker,tag=!WeakpointDamaged] at @s positioned ~-3 ~ ~ if entity @e[type=marker,tag=ImpactMarker,distance=..3] run function game:shipweakpoint/fakerespawn