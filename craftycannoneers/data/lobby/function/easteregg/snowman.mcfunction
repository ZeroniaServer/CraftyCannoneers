scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=2}] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{translation:[0.0f,1.8f,0.0f]}}
execute at @s[scores={CmdData=2}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{translation:[0.0f,1.8f,0.0f]}}
execute at @s[scores={CmdData=..10}] run playsound snowmandig master @a ~ ~ ~ 0.6 1
execute at @s[scores={CmdData=..10}] run particle block{block_state:"sand"} ~ ~0.5 ~ 0.2 1 0.2 0.1 4
execute at @s[scores={CmdData=25}] run item replace entity @s container.0 with diamond_hoe[custom_model_data={floats:[67.0f]}]
execute at @s[scores={CmdData=25}] on passengers run item replace entity @s container.0 with carrot
execute at @s[scores={CmdData=25}] run particle block{block_state:"snow_block"} ~ ~1 ~ 0.2 0.5 0.5 1 80
execute at @s[scores={CmdData=25}] run particle block{block_state:"packed_ice"} ~ ~1 ~ 0.2 0.5 0.5 1 80
execute at @s[scores={CmdData=25}] run playsound snowmanemerge master @a ~ ~ ~ 1 0
execute at @s[scores={CmdData=25}] run playsound snowmanemerge master @a ~ ~ ~ 1 1

execute at @s[scores={CmdData=45}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:{translate:"easter_egg.snowman.1"}}
execute at @s[scores={CmdData=45}] run playsound snowmanspeak master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=75}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:{translate:"easter_egg.snowman.2"}}
execute at @s[scores={CmdData=75}] run playsound snowmanspeak master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=120}] run clear @a[distance=..6] snow_block
execute at @s[scores={CmdData=120}] run give @a[distance=..6] snow_block[custom_name=[{translate:"block.minecraft.snow_block",italic:false,color:"light_purple"}],lore=[[{translate:"item.snow_block.lore",color:"dark_gray"},{text:"",color:"dark_purple",italic:false}]],custom_data={NoDrop:1b}]
execute at @s[scores={CmdData=120}] run advancement grant @a[distance=..6] only tutorial:eastereggs/snowman
execute at @s[scores={CmdData=135}] run particle block{block_state:"snow_block"} ~ ~1 ~ 0.2 0.5 0.5 1 50
execute at @s[scores={CmdData=135}] run particle falling_water ~ ~ ~ 0.5 1 0.5 0.5 50
execute at @s[scores={CmdData=135}] run particle splash ~ ~ ~ 0.5 1 0.5 0.5 50
execute at @s[scores={CmdData=135}] run playsound snowmanleave master @a ~ ~ ~ 1 1.4
execute at @s[scores={CmdData=135}] run playsound entity.generic.splash master @a ~ ~ ~ 1 1.4
execute at @s[scores={CmdData=135..}] on passengers run kill @s
kill @s[scores={CmdData=135..}]