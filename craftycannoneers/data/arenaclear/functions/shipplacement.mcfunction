#Orange
place template orangeship_1 52 -37 44
place template orangeship_2 36 -37 44
place template orangeship_3 65 11 54

fill 56 -27 50 56 -26 50 ladder[facing=north]
fill 56 -27 60 56 -26 60 ladder[facing=south]
fill 42 -19 46 96 6 64 moving_piston replace barrier

setblock 70 -28 51 end_stone_brick_wall[up=true]
fill 70 -27 50 70 -27 49 creeper_head
fill 70 -28 50 70 -28 49 barrier

setblock 66 -28 51 end_stone_brick_wall[up=true]
fill 66 -27 50 66 -27 49 creeper_head
fill 66 -28 50 66 -28 49 barrier

setblock 62 -28 52 end_stone_brick_wall[up=true]
fill 62 -27 51 62 -27 50 creeper_head
fill 62 -28 51 62 -28 50 barrier

setblock 62 -31 52 end_stone_brick_wall[up=true]
fill 62 -30 51 62 -30 50 creeper_head
fill 62 -31 51 62 -31 50 barrier

setblock 74 -31 51 end_stone_brick_wall[up=true]
fill 74 -30 50 74 -30 49 creeper_head
fill 74 -31 50 74 -31 49 barrier

setblock 83 -23 52 end_stone_brick_wall[up=true]
fill 83 -22 51 83 -22 50 creeper_head
fill 83 -23 51 83 -23 50 barrier

setblock 78 -26 51 dark_oak_door[facing=east,half=lower,hinge=left,open=true] destroy
setblock 78 -25 51 dark_oak_door[facing=east,half=upper,hinge=left,open=true] destroy
setblock 78 -26 59 dark_oak_door[facing=east,half=lower,hinge=right,open=true] destroy
setblock 78 -25 59 dark_oak_door[facing=east,half=upper,hinge=right,open=true] destroy

#Purple
place template purpleship_1 57 -37 -66
place template purpleship_2 41 -37 -66
place template purpleship_3 65 11 -56

fill 84 -27 -50 84 -26 -50 ladder[facing=south]
fill 84 -27 -60 84 -26 -60 ladder[facing=north]
fill 44 -19 -64 98 6 -46 moving_piston replace barrier

setblock 70 -28 -51 end_stone_brick_wall[up=true]
fill 70 -27 -50 70 -27 -49 creeper_head
fill 70 -28 -50 70 -28 -49 barrier

setblock 74 -28 -51 end_stone_brick_wall[up=true]
fill 74 -27 -50 74 -27 -49 creeper_head
fill 74 -28 -50 74 -28 -49 barrier

setblock 78 -28 -52 end_stone_brick_wall[up=true]
fill 78 -27 -51 78 -27 -50 creeper_head
fill 78 -28 -51 78 -28 -50 barrier

setblock 78 -31 -52 end_stone_brick_wall[up=true]
fill 78 -30 -51 78 -30 -50 creeper_head
fill 78 -31 -51 78 -31 -50 barrier

setblock 66 -31 -51 end_stone_brick_wall[up=true]
fill 66 -30 -50 66 -30 -49 creeper_head
fill 66 -31 -50 66 -31 -49 barrier

setblock 57 -23 -52 end_stone_brick_wall[up=true]
fill 57 -22 -51 57 -22 -50 creeper_head
fill 57 -23 -51 57 -23 -50 barrier

setblock 62 -26 -51 dark_oak_door[facing=west,half=lower,hinge=left,open=true] destroy
setblock 62 -25 -51 dark_oak_door[facing=west,half=upper,hinge=left,open=true] destroy
setblock 62 -26 -59 dark_oak_door[facing=west,half=lower,hinge=right,open=true] destroy
setblock 62 -25 -59 dark_oak_door[facing=west,half=upper,hinge=right,open=true] destroy

#Team chests
#ORANGE
summon chest_minecart 68.50 -28 60.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","orangeteamchest"],CustomName:'{"text":"Orange Team Chest","color":"gold","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
summon armor_stand 68.50 -29.00 60.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["chestdisplay","orangechestdisplay"],Marker:1b,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:52,Count:1b}},{}]}

#PURPLE
summon chest_minecart 72.50 -28 -59.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","purpleteamchest"],CustomName:'{"text":"Purple Team Chest","color":"dark_purple","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
summon armor_stand 72.50 -29.00 -59.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["chestdisplay","purplechestdisplay"],Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:49,Count:1b}},{}]}
