kill @e[type=#game:cannon,tag=cannon,tag=Tutorial]
function tutorial:trainingdummies/despawnall
kill @e[type=wandering_trader,tag=Teacher]
kill @e[type=area_effect_cloud,tag=CannonText]
kill @e[type=villager,tag=CannonTutorial]
kill @e[type=villager,tag=ChestTutorial]
kill @e[type=armor_stand,tag=CannonTutorial]
kill @e[type=armor_stand,tag=ChestTutorial]
tp @e[type=slime,tag=FakeWeakpoint] ~ ~-200 ~
kill @e[type=slime,tag=FakeWeakpoint]
kill @e[type=marker,tag=FakeWeakpoint]

fill -40 -23 -18 -38 -22 -18 air
execute as @e[type=area_effect_cloud,name="Tutorial Area"] run data merge entity @s {CustomName:'{"text":"Training Island","bold":true,"color":"aqua"}'}
execute as @e[type=area_effect_cloud,name="(interact with objects to learn about their purpose)"] run data merge entity @s {CustomName:'{"text":"(a special island used to learn about the game\'s mechanics)","italic":true,"color":"yellow"}'}
execute positioned -283 -24 -26 run function cannons:spawntutorial
execute positioned -283 -24 -37 run function cannons:spawntutorial
execute positioned -283 -24 -48 run function cannons:spawntutorial
execute positioned -282 -19 -62 run function cannons:spawntutorial
execute positioned -282 -19 -70 run function cannons:spawntutorial
execute positioned -283 -24 -70 run function cannons:spawntutorial
execute positioned -283 -24 -62 run function cannons:spawntutorial

summon slime -378 -26 -33 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S1"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
summon slime -377 -26 -40 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S2"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
summon slime -376 -30 -50 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S3"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
summon slime -378 -27 -62 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S4"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
summon slime -382 -19 -55 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S5"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
summon slime -382 -10 -54 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S6"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
summon slime -382 -14 -37 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S7"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=slime,tag=FakeWeakpoint] at @s run function tutorial:spawnweakpointmarkers

execute as @e[type=slime,tag=S1] at @s run tp @s ~7 ~1.5 ~1
execute as @e[type=slime,tag=S2] at @s run tp @s ~7 ~1.5 ~1.5
execute as @e[type=slime,tag=S3] at @s run tp @s ~7 ~1.5 ~2.5
execute as @e[type=slime,tag=S4] at @s run tp @s ~9 ~1.5 ~4
execute as @e[type=slime,tag=S5] at @s run tp @s ~10 ~1 ~4
execute as @e[type=slime,tag=S6] at @s run tp @s ~18 ~ ~7
execute as @e[type=slime,tag=S7] at @s run tp @s ~20 ~1 ~4

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

execute positioned -241.5 -26.625 -39.5 rotated 135 0 run function tutorial:trainingdummies/spawn
execute positioned -239.5 -26.625 -45.5 rotated 90 0 run function tutorial:trainingdummies/spawn
execute positioned -241.5 -26.625 -49.5 rotated 45 0 run function tutorial:trainingdummies/spawn
execute positioned -247.5 -25.625 -58.5 rotated 45 0 run function tutorial:trainingdummies/spawn
execute positioned -250.5 -25.625 -59.5 rotated 0 0 run function tutorial:trainingdummies/spawn

kill @e[type=item_frame,tag=TutorialWeapon]

summon item_frame -261.50 -24.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-25,TileX:-262,Tags:["TutorialWeapon","Cutlass"]}
summon item_frame -260.50 -24.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-25,TileX:-261,Tags:["TutorialWeapon","Saber"]}
summon item_frame -259.50 -24.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-25,TileX:-260,Tags:["TutorialWeapon","BoardingAxe"]}
summon item_frame -258.50 -24.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-25,TileX:-259,Tags:["TutorialWeapon","BattleAxe"]}
summon item_frame -257.50 -24.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-25,TileX:-258,Tags:["TutorialWeapon","Mace"]}
summon item_frame -260.50 -25.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-26,TileX:-261,Tags:["TutorialWeapon","Hook"]}
summon item_frame -259.50 -25.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-26,TileX:-260,Tags:["TutorialWeapon","Crossbow"]}
summon item_frame -258.50 -25.50 -58.97 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,TileZ:-59,TileY:-26,TileX:-259,Tags:["TutorialWeapon","Harpoon"]}

kill @e[type=marker,tag=TutorialWarp]
kill @e[type=area_effect_cloud,tag=TutorialWarp]
summon marker -42 -22 -21 {Tags:["TutorialWarp","ToIsland"]}
summon marker -264 -21 -21 {Tags:["TutorialWarp","FromIsland"]}
summon area_effect_cloud -42 -21 -21 {Tags:["TutorialWarp","ToIsland"],CustomName:'{"text":"Warp to Training Island","color":"aqua","bold":"true"}',CustomNameVisible:1b,Duration:2000000000}
summon area_effect_cloud -264 -20 -21 {Tags:["TutorialWarp","FromIsland"],CustomName:'{"text":"Back to Lobby","color":"aqua","bold":"true"}',CustomNameVisible:1b,Duration:2000000000}

function tutorial:restoreship

#> Teachers
summon wandering_trader -283 -24 -42 {Rotation:[-90.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","CannonTeacher"],Silent:1b,CustomName:'[{"translate":"space.-max"},{"text":"\\uE003"},{"translate":"space.-max"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:generic.movement_speed,Base:0}],PersistenceRequired:1b}
summon wandering_trader -242 -26 -22 {Rotation:[90.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","ChestTeacher"],Silent:1b,CustomName:'[{"translate":"space.-max"},{"text":"\\uE003"},{"translate":"space.-max"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:generic.movement_speed,Base:0}],PersistenceRequired:1b}
summon wandering_trader -260 -27 -56 {Rotation:[0.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","CombatTeacher"],Silent:1b,CustomName:'[{"translate":"space.-max"},{"text":"\\uE003"},{"translate":"space.-max"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:generic.movement_speed,Base:0}],PersistenceRequired:1b}
summon wandering_trader -279 -11 -15 {Rotation:[-180.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","WeakpointTeacher"],Silent:1b,CustomName:'[{"translate":"space.-max"},{"text":"\\uE003"},{"translate":"space.-max"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:generic.movement_speed,Base:0}],PersistenceRequired:1b}

tp @e[type=#game:chest,tag=fakechest] 0 -1000 0
kill @e[type=#game:chest,tag=fakechest]
function tutorial:treasurepit/main