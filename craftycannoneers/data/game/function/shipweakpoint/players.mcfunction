#> No longer seeing weakpoint
execute if entity @s[tag=!SeeWeakpoint,scores={spotting=1..}] run function game:shipweakpoint/unsee

#> See weakpoint
execute at @s[tag=SeeWeakpoint] run function game:shipweakpoint/seeweakpoint

tag @s[tag=UsingSpyglass] remove UsingSpyglass