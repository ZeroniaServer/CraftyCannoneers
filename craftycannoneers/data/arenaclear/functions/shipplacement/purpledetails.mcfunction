#Purple details
fill 50 -31 -62 90 -36 -48 sponge replace #game:sponge_replace
fill 50 -31 -62 90 -36 -48 air replace #game:sponge

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