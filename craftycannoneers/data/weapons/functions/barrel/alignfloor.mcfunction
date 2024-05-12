# Nudge back against the wall
execute if data storage iris:output TargetedFace{Direction: "WEST"} at @s run tp @s ~-1 ~ ~
execute if data storage iris:output TargetedFace{Direction: "EAST"} at @s run tp @s ~1 ~ ~
execute if data storage iris:output TargetedFace{Direction: "NORTH"} at @s run tp @s ~ ~ ~-1
execute if data storage iris:output TargetedFace{Direction: "SOUTH"} at @s run tp @s ~ ~ ~1

# Down cast to the floor
data modify storage iris:settings Blacklist set value "#iris:shape_groups/air"
execute at @s anchored feet rotated 0 90 positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target

# If we are within a block of the floor, tp down there
execute if score $raydist CmdData matches ..1000000 unless data storage iris:output {TargetType:"NONE"} run return run function iris:set_coordinates/main

# Otherwise, this is an illegal placement (no floor close enough)
tag @s add illegal