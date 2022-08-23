scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=..10}] run tp @s ~ ~0.31 ~
execute at @s[scores={CmdData=..10}] run playsound snowmandig master @a ~ ~ ~ 0.6 1
execute at @s[scores={CmdData=..10}] run particle block sand ~ ~0.5 ~ 0.2 1 0.2 0.1 4
execute at @s[scores={CmdData=5}] run data merge entity @s {Small:0b}
execute at @s[scores={CmdData=25}] run item replace entity @s armor.head with diamond_hoe{CustomModelData:67}
execute at @s[scores={CmdData=25}] run particle block snow_block ~ ~1 ~ 0.2 0.5 0.5 1 80
execute at @s[scores={CmdData=25}] run particle block packed_ice ~ ~1 ~ 0.2 0.5 0.5 1 80
execute at @s[scores={CmdData=25}] run playsound snowmanemerge master @a ~ ~ ~ 1 0
execute at @s[scores={CmdData=25}] run playsound snowmanemerge master @a ~ ~ ~ 1 1

execute at @s[scores={CmdData=45}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:"\"Here's a Snow Block...\""}
execute at @s[scores={CmdData=45}] run playsound snowmanspeak master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=75}] run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:"\"...Because you are epic :)\""}
execute at @s[scores={CmdData=75}] run playsound snowmanspeak master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=120}] run clear @a[distance=..6] snow_block
execute at @s[scores={CmdData=120}] run give @a[distance=..6] snow_block{NoDrop:1b,display:{Name:'[{"text":"Snow Block","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Because you are epic :)","color":"dark_gray"},{"text":"","color":"dark_purple","italic":false}]']},HideFlags:3}
execute at @s[scores={CmdData=120}] run advancement grant @a[distance=..6] only tutorial:eastereggs/snowman
execute at @s[scores={CmdData=135}] run particle block snow_block ~ ~1 ~ 0.2 0.5 0.5 1 50
execute at @s[scores={CmdData=135}] run particle falling_water ~ ~ ~ 0.5 1 0.5 0.5 50
execute at @s[scores={CmdData=135}] run particle splash ~ ~ ~ 0.5 1 0.5 0.5 50
execute at @s[scores={CmdData=135}] run playsound snowmanleave master @a ~ ~ ~ 1 1.4
execute at @s[scores={CmdData=135}] run playsound entity.generic.splash master @a ~ ~ ~ 1 1.4
kill @s[scores={CmdData=135..}]