tag @s add Empty
## TODO add particles, sound, animation, etc.
execute at @s run function game:modifiers/crabs/releasecrab
scoreboard players remove @s TrapDurability 1
execute unless score @s TrapDurability matches 0.. run function weapons:crabtrap/break