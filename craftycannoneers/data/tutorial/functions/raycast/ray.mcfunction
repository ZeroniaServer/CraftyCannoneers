execute if score #hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=slime,tag=!raycaster,dx=0,sort=nearest] run function tutorial:raycast/check_hit_entity
execute unless block ~ ~ ~ #game:raycast_exclude run function tutorial:raycast/hit_block
scoreboard players add #distance raycast 1
execute if score #hit raycast matches 0 if score #distance raycast matches ..2000 positioned ^ ^ ^0.1 run function tutorial:raycast/ray