execute as @e[type=wandering_trader,tag=Trader] run function arenaclear:kill

#orange
summon wandering_trader 72 -28 51 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 68 -28 50 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 64 -28 51 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 64 -31 50 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 72 -31 50 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 85 -23 52 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
#purple
summon wandering_trader 68 -28 -51 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 72 -28 -50 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 76 -28 -51 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 76 -31 -50 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 68 -31 -50 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon wandering_trader 55 -23 -52 {Tags:["Trader"],CustomName:'{"translate":"game.pirate_trader"}',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:18s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}

function arenaclear:loadtrades
execute as @e[type=wandering_trader,tag=Trader] run function arenaclear:villagertrades
data remove storage craftycannoneers:villagers Trades