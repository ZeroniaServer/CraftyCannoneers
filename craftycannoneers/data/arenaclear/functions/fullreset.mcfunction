kill @e[type=wandering_trader,tag=Trader]
kill @e[type=#game:cannon,tag=cannon]
kill @e[type=armor_stand,tag=cannonball]
tp @e[type=#game:weakpoint,tag=Weakpoint] ~ ~-200 ~
kill @e[type=#game:weakpoint,tag=Weakpoint]
kill @e[type=marker,tag=WeakpointLoc]
kill @e[type=armor_stand,tag=chestdisplay]
kill @e[type=chest_minecart,tag=teamchest]
function arenaclear:shipplacement
tp @e[type=#game:chest,tag=chest] ~ ~-200 ~
kill @e[type=#game:chest,tag=chest]
kill @e[type=item]
kill @e[type=#game:boat,tag=Boat]
kill @e[type=armor_stand,tag=EndFirework]
kill @e[type=arrow]
kill @e[type=trident]

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
summon wandering_trader 72 -28 51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 68 -28 50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 64 -28 51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 64 -31 50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 72 -31 50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
#purple
summon wandering_trader 68 -28 -51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 72 -28 -50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 76 -28 -51 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 76 -31 -50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 68 -31 -50 {Tags:["Trader"],CustomName:"\"Pirate Trader\"",CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}

function arenaclear:villagertrades
function arenaclear:boatvehicles
function arenaclear:spawnseagulls

team join NoName @e[type=wandering_trader,tag=Trader]