scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=10}] run playsound crabstruggle master @a ~ ~ ~ 0.6 1.4
execute at @s[scores={CmdData=10..11}] run tp @s ~ ~ ~ ~4 ~
execute as @s[scores={CmdData=12..13}] run tp @s ~ ~ ~ ~-4 ~
execute at @s[scores={CmdData=30}] run playsound crabstruggle master @a ~ ~ ~ 0.6 1.5
execute at @s[scores={CmdData=30..31}] run tp @s ~ ~ ~ ~-4 ~
execute at @s[scores={CmdData=32..33}] run tp @s ~ ~ ~ ~4 ~
execute at @s[scores={CmdData=40}] run particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
execute at @s[scores={CmdData=40}] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.05 20 force
execute if entity @s[scores={CmdData=40..}] run function game:modifiers/crabs/releasecrab
scoreboard players remove @s[scores={CmdData=40..}] TrapDurability 1
execute at @s[scores={CmdData=40,TrapDurability=0..}] run playsound crabstruggle master @a ~ ~ ~ 0.6 1.5
execute at @s[scores={CmdData=40,TrapDurability=0..}] run playsound crabtrapbreak master @a ~ ~ ~ 0.6 2
execute at @s[scores={CmdData=40,TrapDurability=0..}] run playsound crabtrapopen master @a ~ ~ ~ 0.6 1.1

execute at @s[scores={CmdData=40,TrapDurability=..-1}] run playsound crabstruggle master @a ~ ~ ~ 0.2 1.5
execute at @s[scores={CmdData=40,TrapDurability=..-1}] run playsound crabtrapbreak master @a ~ ~ ~ 0.2 2
execute at @s[scores={CmdData=40,TrapDurability=..-1}] run playsound crabtrapopen master @a ~ ~ ~ 0.2 1.1

execute store result entity @s[scores={CmdData=40..}] item.tag.durability int 1 run scoreboard players get @s TrapDurability
scoreboard players add $curr crabs 1
execute if entity @s[scores={CmdData=40..}] run function weapons:crabtrap/break