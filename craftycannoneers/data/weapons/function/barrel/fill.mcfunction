execute unless score @s CmdData matches 10.. run item modify entity @a[tag=self,gamemode=!creative,limit=1] weapon.mainhand game:reducecount
execute unless score @s CmdData matches 10.. run playsound gunpowder master @a ~ ~ ~ 0.2 2
execute unless score @s CmdData matches 10.. run scoreboard players add @s CmdData 1

tag @a[tag=self,limit=1] remove self

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