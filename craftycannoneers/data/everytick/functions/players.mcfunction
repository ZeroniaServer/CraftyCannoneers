#> Shields
execute if entity @s[team=!Spectator] run function game:shields

#> Hitmarkers
execute if entity @s[team=!Spectator] run function cannons:hitmarkers

#> Lobby water
execute at @s[team=Lobby,predicate=!game:inlobby] if block ~ ~ ~ water run function lobby:water

#> Remove tags
tag @s[tag=UtilKilled] remove UtilKilled
tag @s[tag=GoldKilled] remove GoldKilled

#> Tutorial warps
execute unless entity @e[type=marker,tag=TutorialWarp,distance=..1.2] run tag @s remove Warped

#> Toggle tips
function everytick:toggletips