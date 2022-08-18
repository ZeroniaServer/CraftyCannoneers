#> Snowy Skirmish easteregg
scoreboard players add @e[type=armor_stand,tag=SnowmanDeco] CmdData 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=..10}] at @s run tp @s ~ ~0.31 ~
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=..10}] at @s run playsound snowmandig master @a ~ ~ ~ 0.6 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=..10}] at @s run particle block sand ~ ~0.5 ~ 0.2 1 0.2 0.1 4
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=5}] at @s run data merge entity @s {Small:0b}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:67}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run particle block snow_block ~ ~1 ~ 0.2 0.5 0.5 1 80
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run particle block packed_ice ~ ~1 ~ 0.2 0.5 0.5 1 80
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run playsound snowmanemerge master @a ~ ~ ~ 1 0
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=25}] at @s run playsound snowmanemerge master @a ~ ~ ~ 1 1

execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=45}] at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:"\"Here's a Snow Block...\""}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=45}] at @s run playsound snowmanspeak master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=75}] at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["EasterEgg","SnowmanText"],Duration:30,CustomNameVisible:1b,CustomName:"\"...Because you are epic :)\""}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=75}] at @s run playsound snowmanspeak master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=120}] at @s run clear @a[distance=..6] snow_block
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=120}] at @s run give @a[distance=..6] snow_block{NoDrop:1b,display:{Name:'[{"text":"Snow Block","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Because you are epic :)","color":"dark_gray"},{"text":"","color":"dark_purple","italic":false}]']},HideFlags:3}
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=120}] at @s run advancement grant @a[distance=..6] only tutorial:eastereggs/snowman
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run particle block snow_block ~ ~1 ~ 0.2 0.5 0.5 1 50
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 1 0.5 0.5 50
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run particle minecraft:splash ~ ~ ~ 0.5 1 0.5 0.5 50
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run playsound snowmanleave master @a ~ ~ ~ 1 1.4
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135}] at @s run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1.4
execute as @e[type=armor_stand,tag=SnowmanDeco,scores={CmdData=135..}] at @s run kill @s


#> RR Easteregg
scoreboard players add @e[type=armor_stand,tag=RocketLaunch] CmdData 1
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=10}] at @s run particle minecraft:splash -58 -18 -21 0.5 0.2 0.5 0.1 100 force
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=..30}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 0.2 0.5 0.1 4 force
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=30..60}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 0.2 0.5 0.1 2 force
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=60..65}] at @s run particle minecraft:falling_water ~ ~ ~ 0.5 0.2 0.5 0.1 1 force
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=10}] at @s run particle minecraft:bubble_column_up -58 -19.3 -21 0.5 0 0.5 0.1 100 force
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=10}] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 3 0
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=10}] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 3 1
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=10}] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 3 2
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=15}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=20}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=25}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=30}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.7
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=35}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=40}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=45}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=45}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=50}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.85
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=55}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=60}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=65}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=70}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.85
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=75}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=80}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.75
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=85}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=90}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=95}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=100}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.75
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=102}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.9
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=105}] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.8
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=100}] at @s run particle minecraft:explosion ~ ~2 ~ 1.3 2 1.3 0.1 40 force
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=102}] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=102}] at @s run summon item ~ ~ ~ {Tags:["RRHeadItem"],Item:{id:"player_head",Count:1b,tag:{SkullOwner:YZEROgame}},PickupDelay:2000,Motion:[0.0d,0.1d,0.15d]}
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=102}] at @s run summon item ~ ~ ~ {Tags:["RRHeadItem"],Item:{id:"player_head",Count:1b,tag:{SkullOwner:Evtema3}},PickupDelay:2000,Motion:[0.1d,0.3d,0.1d]}
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=102}] at @s run summon item ~ ~ ~ {Tags:["RRHeadItem"],Item:{id:"player_head",Count:1b,tag:{SkullOwner:Chronos22}},PickupDelay:2000,Motion:[0.15d,0.2d,0.0d]}
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=102}] at @s run summon area_effect_cloud -57 -18 -21 {Tags:["RRText"],Duration:80,CustomNameVisible:1b,CustomName:'["",{"text":"You should also try out ","color":"white"},{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":"! ;)","color":"white"}]'}
scoreboard players add @e[tag=RRHeadItem] CmdData 1
execute as @e[type=item,tag=RRHeadItem,scores={CmdData=80..}] at @s run particle block soul_sand ~ ~0.2 ~ 0 0 0 0.1 6
kill @e[type=item,tag=RRHeadItem,scores={CmdData=80..}]
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=185..}] run kill @s
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=..105}] at @s run tp @s ~ ~0.15 ~
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=..5}] at @s run tp @s ~ ~0.6 ~
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=6..8}] at @s run tp @s ~ ~0.4 ~
execute as @e[type=armor_stand,tag=RocketLaunch,scores={CmdData=9..12}] at @s run tp @s ~ ~0.2 ~