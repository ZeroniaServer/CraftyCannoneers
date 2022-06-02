#Orange
setblock 36 -38 44 minecraft:structure_block[mode=load]{posX:0,mode:"LOAD",posY:1,posZ:0,name:"orangeship_2"}
setblock 52 -38 44 minecraft:structure_block[mode=load]{posX:0,mode:"LOAD",posY:1,posZ:0,name:"orangeship_1"}
setblock 65 10 54 minecraft:structure_block[mode=load]{posX:0,mode:"LOAD",posY:1,posZ:0,name:"orangeship_3"}
setblock 36 -37 44 redstone_block
setblock 52 -37 44 redstone_block
setblock 65 11 54 redstone_block
fill 36 -37 44 36 -38 44 water
fill 52 -37 44 52 -38 44 water
fill 65 11 54 65 10 54 air
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

#Purple
setblock 41 -38 -66 minecraft:structure_block[mode=load]{posX:0,mode:"LOAD",posY:1,posZ:0,name:"purpleship_2"}
setblock 57 -38 -66 minecraft:structure_block[mode=load]{posX:0,mode:"LOAD",posY:1,posZ:0,name:"purpleship_1"}
setblock 65 10 -56 minecraft:structure_block[mode=load]{posX:0,mode:"LOAD",posY:1,posZ:0,name:"purpleship_3"}
setblock 41 -37 -66 redstone_block
setblock 57 -37 -66 redstone_block
setblock 65 11 -56 redstone_block
fill 41 -37 -66 41 -38 -66 water
fill 57 -37 -66 57 -38 -66 water
fill 65 11 -56 65 10 -56 air
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

#Team chests
#ORANGE
summon chest_minecart 68.50 -28 60.50 {Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","orangeteamchest"],CustomName:'{"text":"Orange Team Chest","color":"gold","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
summon armor_stand 68.50 -29.00 60.50 {Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["chestdisplay","orangechestdisplay"],Marker:1b,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:52,Count:1b}},{}]}

#PURPLE
summon chest_minecart 72.50 -28 -59.50 {Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","purpleteamchest"],CustomName:'{"text":"Purple Team Chest","color":"dark_purple","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
summon armor_stand 72.50 -29.00 -59.50 {Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["chestdisplay","purplechestdisplay"],Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:49,Count:1b}},{}]}
