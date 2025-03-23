function game:clearinventory
item replace entity @s hotbar.3 with carrot_on_a_stick[unbreakable={},custom_name='{"translate":"parkour.restart","color":"green","bold":true,"italic":false}',custom_model_data={floats:[1.0f]},custom_data={Restart:1b,NoDrop:1b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s hotbar.5 with carrot_on_a_stick[unbreakable={},custom_name='{"translate":"parkour.quit","color":"red","bold":true,"italic":false}',custom_model_data={floats:[2.0f]},custom_data={Quit:1b,NoDrop:1b},tooltip_display={hidden_components:["unbreakable"]}]
tellraw @s [{"translate":"parkour.begin","color":"dark_green","bold":true}]
playsound parkourstart master @s ~ ~ ~ 1 1.3
playsound parkourstart2 master @s ~ ~ ~ 1 1
particle firework ~ ~1 ~ 0 0 0 0.1 100 normal @s
tag @s add inParkour