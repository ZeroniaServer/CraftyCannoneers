kill @e[type=armor_stand,tag=cannon,tag=!Tutorial]
execute as @e[type=villager,tag=cannon,tag=!Tutorial] at @s run function arenaclear:kill
kill @e[type=marker,tag=villager,tag=!Tutorial]

execute positioned 70 -28 -50 run function cannons:spawnpurple
execute positioned 74 -28 -50 run function cannons:spawnpurple
execute positioned 57 -23 -51 run function cannons:spawnpurple
execute positioned 78 -28 -51 run function cannons:spawnpurple
execute positioned 66 -31 -50 run function cannons:spawnpurple
execute positioned 78 -31 -51 run function cannons:spawnpurple

execute positioned 62 -28 51 run function cannons:spawnorange
execute positioned 66 -28 50 run function cannons:spawnorange
execute positioned 70 -28 50 run function cannons:spawnorange
execute positioned 83 -23 51 run function cannons:spawnorange
execute positioned 62 -31 51 run function cannons:spawnorange
execute positioned 74 -31 50 run function cannons:spawnorange