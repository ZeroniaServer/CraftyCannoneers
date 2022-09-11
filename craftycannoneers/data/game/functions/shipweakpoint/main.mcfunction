#> Raycast
execute if score $gamestate CmdData matches 2 if entity @e[type=marker,tag=WeakpointLoc,tag=Orange] as @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ anchored feet unless entity @e[type=slime,tag=Weakpoint,tag=Orange,distance=..101] run function game:raycast/start_ray
execute if score $gamestate CmdData matches 2 if entity @e[type=marker,tag=WeakpointLoc,tag=Purple] as @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ anchored feet unless entity @e[type=slime,tag=Weakpoint,tag=Purple,distance=..101] run function game:raycast/start_ray

#> X particles
execute if score $gamestate CmdData matches 2 as @e[type=marker,tag=XParticle] at @s run function game:shipweakpoint/xparticle

#> Weakpoint slimes
execute if score $gamestate CmdData matches 2 as @e[type=slime,tag=Weakpoint] at @s run function game:shipweakpoint/slimes

#> Players
execute if score $gamestate CmdData matches 2 as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=!spectator] run function game:shipweakpoint/players

#> Fake weakpoint damage
execute as @e[type=marker,tag=FakePointMarker,tag=!WeakpointDamaged] at @s positioned ~-5 ~ ~ if entity @e[type=marker,tag=ImpactMarker,distance=..3] run function game:shipweakpoint/fakerespawn