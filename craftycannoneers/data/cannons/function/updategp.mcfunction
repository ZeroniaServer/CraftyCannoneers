item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=..0}] container.0 with air
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=1}] container.0 with minecraft:diamond_hoe[custom_model_data=2]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=2}] container.0 with minecraft:diamond_hoe[custom_model_data=3]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=3}] container.0 with minecraft:diamond_hoe[custom_model_data=4]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=4}] container.0 with minecraft:diamond_hoe[custom_model_data=5]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=5}] container.0 with minecraft:diamond_hoe[custom_model_data=6]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=6}] container.0 with minecraft:diamond_hoe[custom_model_data=7]
item replace entity @e[type=item_display,tag=GPDispL,scores={CmdData=7}] container.0 with minecraft:diamond_hoe[custom_model_data=8]
execute as @e[type=item_display,tag=GPDispL,scores={CmdData=1..}] at @s run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] add Charged
execute as @e[type=item_display,tag=GPDispL,scores={CmdData=..0}] at @s unless entity @e[type=item_display,tag=GPDispR,scores={CmdData=1..},distance=..2,limit=1,sort=nearest] run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] remove Charged

item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=..0}] container.0 with air
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=1}] container.0 with minecraft:diamond_hoe[custom_model_data=9]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=2}] container.0 with minecraft:diamond_hoe[custom_model_data=10]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=3}] container.0 with minecraft:diamond_hoe[custom_model_data=11]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=4}] container.0 with minecraft:diamond_hoe[custom_model_data=12]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=5}] container.0 with minecraft:diamond_hoe[custom_model_data=13]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=6}] container.0 with minecraft:diamond_hoe[custom_model_data=14]
item replace entity @e[type=item_display,tag=GPDispR,scores={CmdData=7}] container.0 with minecraft:diamond_hoe[custom_model_data=15]
execute as @e[type=item_display,tag=GPDispR,scores={CmdData=1..}] at @s run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] add Charged
execute as @e[type=item_display,tag=GPDispR,scores={CmdData=..0}] at @s unless entity @e[type=item_display,tag=GPDispL,scores={CmdData=1..},distance=..2,limit=1,sort=nearest] run tag @e[type=interaction,tag=CannonVMain,sort=nearest,limit=1,distance=..2] remove Charged