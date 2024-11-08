item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=..0}] container.0 with air
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=1}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[2.0f]}]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=2}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[3.0f]}]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=3}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[4.0f]}]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=4}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[5.0f]}]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=5}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[6.0f]}]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=6}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[7.0f]}]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=7}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[8.0f]}]
execute as @e[type=item_display,tag=GPDispL,scores={CmdData=1..}] at @s run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] add Charged
execute as @e[type=item_display,tag=GPDispL,scores={CmdData=..0}] at @s unless entity @e[type=item_display,tag=GPDispR,scores={CmdData=1..},distance=..2,limit=1,sort=nearest] run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] remove Charged

item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=..0}] container.0 with air
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=1}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[9.0f]}]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=2}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[10.0f]}]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=3}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[11.0f]}]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=4}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[12.0f]}]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=5}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[13.0f]}]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=6}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[14.0f]}]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=7}] container.0 with minecraft:diamond_hoe[custom_model_data={floats:[15.0f]}]
execute as @e[type=item_display,tag=GPDispR,scores={CmdData=1..}] at @s run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] add Charged
execute as @e[type=item_display,tag=GPDispR,scores={CmdData=..0}] at @s unless entity @e[type=item_display,tag=GPDispL,scores={CmdData=1..},distance=..2,limit=1,sort=nearest] run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] remove Charged