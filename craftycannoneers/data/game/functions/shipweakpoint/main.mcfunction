#> Raycast
execute if score $gamestate CmdData matches 2 as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=UsingSpyglass,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ anchored feet run function game:raycast/start_ray

#> X particles
execute if score $gamestate CmdData matches 2 as @e[type=marker,tag=XParticle] at @s run function game:shipweakpoint/xparticle

#> Weakpoint slimes
execute if score $gamestate CmdData matches 2 as @e[type=slime,tag=Weakpoint] at @s run function game:shipweakpoint/slimes

#> Players
execute if score $gamestate CmdData matches 2 as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=!spectator] run function game:shipweakpoint/players

#> Fake weakpoint damage
execute as @e[type=marker,tag=FakePointMarker,tag=!WeakpointDamaged] at @s positioned ~-5 ~ ~ if entity @e[type=marker,tag=ImpactMarker,distance=..3] run function game:shipweakpoint/fakerespawn