execute if score #hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=slime,tag=!raycaster,dx=0,sort=nearest] run function game:raycast/check_hit_entity
execute unless block ~ ~ ~ #game:raycast_exclude run function game:raycast/hit_block
scoreboard players add #distance raycast 1
execute if score #hit raycast matches 0 if score #distance raycast matches ..140 positioned ^ ^ ^1 run function game:raycast/ray