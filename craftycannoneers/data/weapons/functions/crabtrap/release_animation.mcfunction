scoreboard players add @s CmdData 1
execute as @s[scores={CmdData=10}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.6 1.4
execute as @s[scores={CmdData=10..11}] at @s run tp @s ~ ~ ~ ~4 ~
execute as @s[scores={CmdData=12..13}] at @s run tp @s ~ ~ ~ ~-4 ~
execute as @s[scores={CmdData=30}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.6 1.5
execute as @s[scores={CmdData=30..31}] at @s run tp @s ~ ~ ~ ~-4 ~
execute as @s[scores={CmdData=32..33}] at @s run tp @s ~ ~ ~ ~4 ~
execute as @s[scores={CmdData=40}] at @s run particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
execute as @s[scores={CmdData=40}] at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.05 20 force
execute as @s[scores={CmdData=40..}] run function game:modifiers/crabs/releasecrab
execute as @s[scores={CmdData=40..}] run scoreboard players remove @s TrapDurability 1
execute as @s[scores={CmdData=40,TrapDurability=0..}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.6 1.5
execute as @s[scores={CmdData=40,TrapDurability=0..}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.6 2
execute as @s[scores={CmdData=40,TrapDurability=0..}] at @s run playsound minecraft:block.wooden_trapdoor.open master @a ~ ~ ~ 0.6 1.1

execute as @s[scores={CmdData=40,TrapDurability=..-1}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.2 1.5
execute as @s[scores={CmdData=40,TrapDurability=..-1}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.2 2
execute as @s[scores={CmdData=40,TrapDurability=..-1}] at @s run playsound minecraft:block.wooden_trapdoor.open master @a ~ ~ ~ 0.2 1.1


execute as @s[scores={CmdData=40..}] store result entity @s item.tag.durability int 1 run scoreboard players get @s TrapDurability
execute as @s[scores={CmdData=40..}] run function weapons:crabtrap/break