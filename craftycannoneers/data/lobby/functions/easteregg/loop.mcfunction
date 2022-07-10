#> Snowy Skirmish easteregg
scoreboard players add @e[type=armor_stand,tag=SnowmanDeco] CmdData 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=..10}] at @s run tp @s ~ ~0.31 ~
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=..10}] at @s run playsound block.sand.break master @a ~ ~ ~ 0.6 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=..10}] at @s run particle block sand ~ ~0.5 ~ 0.2 1 0.2 0.1 4
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=5}] at @s run data merge entity @s {Small:0b}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:67}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run particle block snow_block ~ ~1 ~ 0.2 0.5 0.5 1 80
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run particle block packed_ice ~ ~1 ~ 0.2 0.5 0.5 1 80
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 0
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 1

execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=45}] at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:"\"Here's a Snow Block...\""}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=45}] at @s run playsound minecraft:entity.snow_golem.hurt master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=75}] at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:"\"...Because you are epic :)\""}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=75}] at @s run playsound minecraft:entity.snow_golem.hurt master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=120}] at @s run clear @a[distance=..6] snow_block
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=120}] at @s run give @a[distance=..6] snow_block{NoDrop:1b,display:{Name:'[{"text":"Snow Block","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Because you are epic :)","color":"dark_gray"},{"text":"","color":"dark_purple","italic":false}]','[{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:3}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=120}] at @s run advancement grant @a[distance=..6] only tutorial:eastereggs/snowman
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run particle block snow_block ~ ~1 ~ 0.2 0.5 0.5 1 50
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 0.5 50
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run particle minecraft:splash ~ ~ ~ 0.5 1 0.5 0.5 50
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 1.4
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1.4
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135..}] at @s run kill @s