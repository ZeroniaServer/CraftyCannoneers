##Utility function to prevent lobby players from taking fall damage (credit: PingiPuck)
scoreboard players add @s leavegame 0
tag @s[scores={leavegame=0},nbt={FallDistance:0.0f}] add NotFalling
scoreboard players set @s[tag=NotFalling] Falling 0
scoreboard players set @s[team=!Lobby] Falling 0
effect clear @s[tag=NotFalling,team=Lobby] jump_boost
effect give @s[team=Lobby,scores={Falling=4..}] jump_boost 1 255 true
tag @s[tag=NotFalling] remove NotFalling