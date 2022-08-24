#> Weakpoint damage
execute at @s[tag=!inship,tag=!WeakpointDamaged] run function game:shipweakpoint/damage

#> Spot timer
execute at @s[tag=Spotted] run function game:shipweakpoint/spottimer