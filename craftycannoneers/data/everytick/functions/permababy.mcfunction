effect give @s[type=villager] invisibility infinite 100 true
effect give @s water_breathing infinite 100 true
tag @s[predicate=game:isbaby] add baby
data merge entity @s[tag=baby,predicate=!game:isbaby] {Age:-2147483648}