kill @e[type=#game:cannon,tag=cannon,tag=Tutorial]

execute positioned -283 -24 -26 run function cannons:spawntutorial
execute positioned -283 -24 -37 run function cannons:spawntutorial
execute positioned -283 -24 -48 run function cannons:spawntutorial
execute positioned -282 -19 -62 run function cannons:spawntutorial
execute positioned -282 -19 -70 run function cannons:spawntutorial
execute positioned -283 -24 -70 run function cannons:spawntutorial
execute positioned -283 -24 -62 run function cannons:spawntutorial

forceload add -413 -379 -95 -15

setblock -282 -24 -26 end_stone_brick_wall
fill -283 -24 -26 -284 -24 -26 barrier
fill -283 -23 -26 -284 -23 -26 creeper_head

setblock -282 -24 -37 end_stone_brick_wall
fill -283 -24 -37 -284 -24 -37 barrier
fill -283 -23 -37 -284 -23 -37 creeper_head

setblock -282 -24 -48 end_stone_brick_wall
fill -283 -24 -48 -284 -24 -48 barrier
fill -283 -23 -48 -284 -23 -48 creeper_head

setblock -282 -24 -62 end_stone_brick_wall
fill -283 -24 -62 -284 -24 -62 barrier
fill -283 -23 -62 -284 -23 -62 creeper_head

setblock -282 -24 -70 end_stone_brick_wall
fill -283 -24 -70 -284 -24 -70 barrier
fill -283 -23 -70 -284 -23 -70 creeper_head

setblock -281 -19 -62 end_stone_brick_wall
fill -282 -19 -62 -283 -19 -62 barrier
fill -282 -18 -62 -283 -18 -62 creeper_head

setblock -281 -19 -70 end_stone_brick_wall
fill -282 -19 -70 -283 -19 -70 barrier
fill -282 -18 -70 -283 -18 -70 creeper_head

function tutorial:trainingdummies/despawnall

execute positioned -241.5 -26.5 -39.5 rotated 135 0 run function tutorial:trainingdummies/spawn
execute positioned -239.5 -26.5 -45.5 rotated 90 0 run function tutorial:trainingdummies/spawn
execute positioned -241.5 -26.5 -49.5 rotated 45 0 run function tutorial:trainingdummies/spawn
execute positioned -247.5 -25.5 -58.5 rotated 45 0 run function tutorial:trainingdummies/spawn
execute positioned -250.5 -25.5 -59.5 rotated 0 0 run function tutorial:trainingdummies/spawn