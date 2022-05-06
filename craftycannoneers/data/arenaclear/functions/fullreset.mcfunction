kill @e[tag=Trader]
kill @e[tag=cannon]
kill @e[tag=cannonball]
tp @e[tag=Weakpoint] ~ ~-200 ~
kill @e[tag=Weakpoint]
function arenaclear:shipplacement
tp @e[tag=chest] ~ ~-200 ~
kill @e[tag=chest]
kill @e[type=item]

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

summon wandering_trader 85 -27.5 -55 {Tags:["Trader"],NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}

function arenaclear:villagertrades

#> Weakpoints
#summon marker 70 -29 48 {Tags:["WeakpointLoc","Purple","Weakpoint"]}