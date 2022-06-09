##Utility function to prevent lobby players from taking fall damage (credit: PingiPuck)
tag @a[tag=hasMoved,nbt={FallDistance:0.0f}] add NotFalling
scoreboard players set @a[tag=NotFalling] Falling 0
scoreboard players set @a[team=!Lobby] Falling 0
effect clear @a[tag=NotFalling,team=Lobby] jump_boost
effect give @a[team=Lobby,scores={Falling=4..}] jump_boost 1 255 true
tag @a[tag=NotFalling] remove NotFalling