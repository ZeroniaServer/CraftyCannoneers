execute unless score @s CmdData matches 10.. run item modify entity @a[tag=self,gamemode=!creative,limit=1] weapon.mainhand game:reducecount
execute unless score @s CmdData matches 10.. run playsound gunpowder master @a ~ ~ ~ 0.2 2
execute unless score @s CmdData matches 10.. run scoreboard players add @s CmdData 1

tag @a[tag=self,limit=1] remove self

item replace entity @s[scores={CmdData=0}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[1.0f]}]
item replace entity @s[scores={CmdData=1}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[2.0f]}]
item replace entity @s[scores={CmdData=2}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[3.0f]}]
item replace entity @s[scores={CmdData=3}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[4.0f]}]
item replace entity @s[scores={CmdData=4}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[5.0f]}]
item replace entity @s[scores={CmdData=5}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[6.0f]}]
item replace entity @s[scores={CmdData=6}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[7.0f]}]
item replace entity @s[scores={CmdData=7}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[8.0f]}]
item replace entity @s[scores={CmdData=8}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[9.0f]}]
item replace entity @s[scores={CmdData=9}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[10.0f]}]
item replace entity @s[scores={CmdData=10}] container.0 with mooshroom_spawn_egg[custom_model_data={floats:[11.0f]}]