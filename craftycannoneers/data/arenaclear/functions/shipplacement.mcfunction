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

#Team chests
#ORANGE
summon chest_minecart 68.50 -28.00 60.50 {Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","orangeteamchest"],DisplayState:{Name:"minecraft:air"}}
summon armor_stand 68.53 -29.00 61.50 {Invulnerable:1b,DisabledSlots:4144959,Pose:{RightArm:[0.0f,90.0f,90.0f]},Invisible:1b,Tags:["chestdisplay","orangechestdisplay"],Marker:1b,Rotation:[90.0f,0.0f],HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19,Damage:0}},{}]}

#PURPLE
summon chest_minecart 72.50 -28.00 -59.50 {Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","purpleteamchest"],DisplayState:{Name:"minecraft:air"}}
summon armor_stand 72.53 -29.00 -60.50 {Invulnerable:1b,DisabledSlots:4144959,Pose:{RightArm:[0.0f,90.0f,90.0f]},Invisible:1b,Tags:["chestdisplay","purplechestdisplay"],Marker:1b,Rotation:[-90.0f,0.0f],HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19,Damage:0}},{}]}
