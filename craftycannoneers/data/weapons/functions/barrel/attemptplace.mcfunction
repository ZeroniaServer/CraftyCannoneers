# First, match the raycast y position and center along x and z
function iris:set_coordinates/main
execute at @s align xz run tp @s ~0.5 ~ ~0.5

# Next, if we did not hit the top face of a block, align to the adjacent floor
execute unless data storage iris:output TargetedFace{Direction:"UP"} unless data storage iris:output {TargetType:"NONE"} run function weapons:barrel/alignfloor

# Next, ensure that there is enough space above for this barrel to sit
execute at @s[tag=!illegal] rotated 0 -90 anchored feet positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target
execute unless score $raydist CmdData matches 937500.. run tag @s add illegal
# Didn't hit anything so definitely safe placement
execute if data storage iris:output {TargetType:"NONE"} run tag @s remove illegal

# Finally, protect against other illegal placement conditions
execute at @s[tag=!illegal] run function weapons:barrel/illegalplacement

# Summon the barrel if it is a valid position
execute at @s[tag=illegal] run function weapons:barrel/giveback
execute at @s[tag=!illegal] positioned ~ ~0.01 ~ run function weapons:barrel/summon