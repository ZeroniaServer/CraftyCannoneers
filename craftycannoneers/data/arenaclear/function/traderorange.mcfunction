$summon villager ~ ~ ~ {VillagerData:{type:"minecraft:jungle"},Tags:["Trader","Orange","new"],CustomName:'[{"translate":"game.pirate_trader.padding"},{"translate":"game.pirate_trader"},{"translate":"space.-4096"}]',CustomNameVisible:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",NoGravity:1b,Silent:1b,Offers:{Recipes:[]},Rotation:[$(angle1)f, $(angle2)f]}
team join NoName @e[type=villager,tag=Trader,tag=new,limit=1]
tag @e[type=villager,tag=Trader,tag=new,limit=1] remove new