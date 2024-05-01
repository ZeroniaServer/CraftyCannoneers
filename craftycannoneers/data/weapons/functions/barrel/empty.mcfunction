execute unless score @s CmdData matches 1.. as @e[type=bat,tag=BlastBarrel,limit=1,sort=nearest] at @s run function weapons:barrel/punch
execute unless score @s CmdData matches 1.. run return 0

execute if score @s CmdData matches 1.. run loot give @a[tag=hitter,gamemode=!creative,limit=1] loot weapons:gunpowder
execute if score @s CmdData matches 1.. run playsound takegunpowder master @a ~ ~ ~ 0.2 2
execute if score @s CmdData matches 1.. run scoreboard players remove @s CmdData 1

tag @a[tag=hitter,limit=1] remove hitter

item replace entity @s[scores={CmdData=0}] container.0 with mooshroom_spawn_egg[custom_model_data=1]
item replace entity @s[scores={CmdData=1}] container.0 with mooshroom_spawn_egg[custom_model_data=2]
item replace entity @s[scores={CmdData=2}] container.0 with mooshroom_spawn_egg[custom_model_data=3]
item replace entity @s[scores={CmdData=3}] container.0 with mooshroom_spawn_egg[custom_model_data=4]
item replace entity @s[scores={CmdData=4}] container.0 with mooshroom_spawn_egg[custom_model_data=5]
item replace entity @s[scores={CmdData=5}] container.0 with mooshroom_spawn_egg[custom_model_data=6]
item replace entity @s[scores={CmdData=6}] container.0 with mooshroom_spawn_egg[custom_model_data=7]
item replace entity @s[scores={CmdData=7}] container.0 with mooshroom_spawn_egg[custom_model_data=8]
item replace entity @s[scores={CmdData=8}] container.0 with mooshroom_spawn_egg[custom_model_data=9]
item replace entity @s[scores={CmdData=9}] container.0 with mooshroom_spawn_egg[custom_model_data=10]
item replace entity @s[scores={CmdData=10}] container.0 with mooshroom_spawn_egg[custom_model_data=11]