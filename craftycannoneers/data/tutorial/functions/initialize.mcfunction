function tutorial:trainingdummies/despawnall
kill @e[type=area_effect_cloud,tag=CannonText]
execute as @e[type=slime,tag=FakeWeakpoint] at @s run function arenaclear:kill
kill @e[type=marker,tag=FakeWeakpoint]
kill @e[type=interaction,tag=LChestFake]

function tutorial:cannondock/resetcannons

summon slime -378 -26 -33 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S1"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
summon slime -377 -26 -40 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S2"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
summon slime -376 -30 -50 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S3"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
summon slime -378 -27 -62 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S4"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
summon slime -382 -19 -55 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S5"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
summon slime -382 -10 -54 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S6"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
summon slime -382 -14 -37 {PersistenceRequired:1b,Tags:["FakeWeakpoint","S7"],Invulnerable:1b,Size:2,NoAI:1b,NoGravity:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute as @e[type=slime,tag=FakeWeakpoint] at @s run function tutorial:spawnweakpointmarkers

forceload add -413 -379 -260 -15
forceload add -260 -379 -130 -15
forceload add -130 -379 -95 -15

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
execute summon marker run function tutorial:trainingdummies/spawnall

kill @e[type=item_frame,tag=TutorialWeapon]

summon item_frame -262 -25 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","Cutlass"]}
summon item_frame -261 -25 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","Saber"]}
summon item_frame -260 -25 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","BoardingAxe"]}
summon item_frame -259 -25 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","BattleAxe"]}
summon item_frame -258 -25 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","Mace"]}
summon item_frame -261 -26 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","Hook"]}
summon item_frame -260 -26 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","Crossbow"]}
summon item_frame -259 -26 -59 {Silent:1b,Invisible:1b,Invulnerable:1b,Fixed:0b,Facing:3b,Tags:["TutorialWeapon","Harpoon"]}

kill @e[type=marker,tag=TutorialWarp]
kill @e[type=area_effect_cloud,tag=TutorialWarp]
summon marker -42 -22 -21 {Tags:["TutorialWarp","ToIsland"]}
summon marker -264 -21 -21 {Tags:["TutorialWarp","FromIsland"]}
summon area_effect_cloud -42 -21 -21 {Tags:["TutorialWarp","ToIsland"],CustomName:'{"translate":"tutorial.warp.to_island","color":"aqua","bold":true}',CustomNameVisible:1b,Duration:2000000000}
summon area_effect_cloud -264 -20 -21 {Tags:["TutorialWarp","FromIsland"],CustomName:'{"translate":"tutorial.warp.from_island","color":"aqua","bold":true}',CustomNameVisible:1b,Duration:2000000000}

function tutorial:restoreship

#> Teachers
execute as @e[type=wandering_trader,tag=Teacher] at @s run function arenaclear:kill
summon wandering_trader -283 -24 -42 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":39}}],Rotation:[-90.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","CannonTeacher"],Silent:1b,CustomName:'[{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b}
summon wandering_trader -242 -26 -22 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":39}}],Rotation:[90.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","ChestTeacher"],Silent:1b,CustomName:'[{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b}
summon wandering_trader -260 -27 -56 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":39}}],Rotation:[0.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","CombatTeacher"],Silent:1b,CustomName:'[{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b}
summon wandering_trader -279 -11 -15 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":39}}],Rotation:[-180.0f,0.0f],Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["Teacher","WeakpointTeacher"],Silent:1b,CustomName:'[{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]',CustomNameVisible:1b,Offers:{Recipes:[]},Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b}

execute as @e[type=armor_stand,tag=fakechest] run function chests:kill
execute as @e[type=item_display,tag=CargoBarrelFake] run function game:modifiers/lostcargo/killbarrel

function tutorial:treasurepit/main