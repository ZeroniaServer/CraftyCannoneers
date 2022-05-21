kill @e[tag=Trader]
kill @e[tag=cannon]
kill @e[tag=cannonball]
tp @e[tag=Weakpoint] ~ ~-200 ~
kill @e[tag=Weakpoint]
function arenaclear:shipplacement
tp @e[tag=chest] ~ ~-200 ~
kill @e[tag=chest]
kill @e[type=item]
kill @e[tag=Boat]

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

#orange
summon wandering_trader 72 -28 51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 68 -28 50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 64 -28 51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 64 -31 50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 72 -31 50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
#purple
summon wandering_trader 68 -28 -51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 72 -28 -50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 76 -28 -51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 76 -31 -50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 68 -31 -50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistanceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}

function arenaclear:villagertrades
function arenaclear:boatvehicles

team join NoName @e[tag=Trader]

#> Weakpoints
#summon marker 70 -29 48 {Tags:["WeakpointLoc","Purple","Weakpoint"]}