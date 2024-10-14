#> iris:get_position/get_coordinates_clean
#
# Gets the coordinates of the executing entity
#
# @context A marker
# @within iris:get_hitbox/entity

function iris:get_position/get_coordinates

# Clean up
data remove storage iris:data Pos
kill @s