#> check if this item is a default item
execute unless entity @s[tag=checked] run function everytick:defaultitemcheck

#> if so, run timer
execute unless entity @s[tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer] run function everytick:defaultitemtimer