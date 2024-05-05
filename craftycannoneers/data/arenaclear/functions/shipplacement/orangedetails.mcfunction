#Orange details
fill 50 -31 62 90 -36 48 sponge replace #game:sponge_replace
fill 50 -31 62 90 -36 48 air replace #game:sponge

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

setblock 74 -30 48 air
setblock 74 -30 47 minecraft:oak_trapdoor[half=top,facing=north,powered=false,waterlogged=false,open=false]
setblock 74 -30 48 minecraft:oak_trapdoor[half=top,facing=south,powered=false,waterlogged=false,open=false]
setblock 75 -30 48 minecraft:oak_stairs[facing=east,half=top,shape=straight,waterlogged=false]
setblock 73 -30 48 minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false]

setblock 62 -30 49 air
setblock 62 -30 48 minecraft:oak_trapdoor[half=top,facing=north,powered=false,waterlogged=false,open=false]
setblock 62 -30 49 minecraft:oak_trapdoor[half=top,facing=south,powered=false,waterlogged=false,open=false]
setblock 63 -30 48 minecraft:oak_stairs[facing=east,half=top,shape=straight,waterlogged=false]
setblock 61 -30 49 minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false]

schedule function arenaclear:shipplacement/purple1 5t