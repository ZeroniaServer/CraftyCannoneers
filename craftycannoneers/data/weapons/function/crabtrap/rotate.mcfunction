execute store success score $emptytrap CmdData if entity @s[tag=Empty]
execute store result score $trapdura TrapDurability run data get entity @s data.durability

$execute if entity @s[tag=Empty] run summon interaction ~ ~ ~ {Tags:["CrabTrap"],height:0.6f,width:0.8f,Passengers:[{id:"item_display",height:0.6f,width:0.8f,Rotation:[$(angle)f, 0.0f],item_display:"fixed",Tags:["CrabTrap","CrabTrapDisplay","new"],item:{id:"minecraft:mooshroom_spawn_egg",count:1,components:{"custom_model_data":15}}}]}
$execute unless entity @s[tag=Empty] run summon item_display ~ ~ ~ {height:0.6f,width:0.8f,Rotation:[$(angle)f, 0.0f],item_display:"fixed",Tags:["CrabTrap","CrabTrapDisplay","new"],item:{id:"minecraft:mooshroom_spawn_egg",count:1,components:{"custom_model_data":16}}}

execute as @e[type=item_display,tag=CrabTrapDisplay,tag=new,limit=1] run function weapons:crabtrap/transferdata