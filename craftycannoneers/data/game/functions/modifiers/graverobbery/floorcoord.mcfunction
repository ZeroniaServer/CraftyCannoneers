# Down cast to the floor
data modify storage iris:settings Blacklist set value "#game:downcast_exclude"
execute at @s anchored feet rotated 0 90 positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target

# If we are within a block of the floor, tp down there
execute unless data storage iris:output {TargetType:"NONE"} run function iris:set_coordinates/main

execute store result score $y CmdData run data get entity @s Pos[1] 1000

kill