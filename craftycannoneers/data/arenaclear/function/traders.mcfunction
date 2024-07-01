execute as @e[type=villager,tag=Trader] run function arenaclear:traderkill

#orange
summon villager 72 -28 51 {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 68 -28 50 {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 64 -28 51 {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 64 -31 50 {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 72 -31 50 {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 85 -23 52 {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
#purple
summon villager 68 -28 -51 {VillagerData:{type:"minecraft:plains"},Tags:["Trader","Purple"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 72 -28 -50 {VillagerData:{type:"minecraft:plains"},Tags:["Trader","Purple"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 76 -28 -51 {VillagerData:{type:"minecraft:plains"},Tags:["Trader","Purple"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 76 -31 -50 {VillagerData:{type:"minecraft:plains"},Tags:["Trader","Purple"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 68 -31 -50 {VillagerData:{type:"minecraft:plains"},Tags:["Trader","Purple"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}
summon villager 55 -23 -52 {VillagerData:{type:"minecraft:plains"},Tags:["Trader","Purple"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]}}

execute as @e[type=villager,tag=Trader] at @s run function arenaclear:tradersetup