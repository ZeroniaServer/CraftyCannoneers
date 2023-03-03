execute unless score $updating CmdData matches 1 run schedule function version:1_1_0/part1 10t
execute unless score $updating CmdData = $updating CmdData run scoreboard players set $updating CmdData 1

#> Fix parkour record AEC for 1.1.0 update
execute if score $updating CmdData matches 1 as @e[type=area_effect_cloud,tag=ParkourRecordAEC,scores={CmdData=1..},limit=1] store result entity @s Air short 1 run scoreboard players remove @s CmdData 1
execute if score $updating CmdData matches 1 run scoreboard players reset @e[type=area_effect_cloud,tag=ParkourRecordAEC,scores={CmdData=..0},limit=1] CmdData