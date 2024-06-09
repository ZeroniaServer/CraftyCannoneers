execute store result storage craftycannoneers:wind z int 1 run random value 0..80
execute store result storage craftycannoneers:wind y int 1 run random value 0..44
function game:modifiers/seastorms/windpos with storage craftycannoneers:wind
tag @s remove New