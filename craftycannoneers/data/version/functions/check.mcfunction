scoreboard players add $WorldVersion CmdData 0
execute unless score $WorldVersion CmdData matches 1020.. run function version:1_0_2/update
execute unless score $WorldVersion CmdData matches 1030.. run function version:1_0_3/update
execute unless score $WorldVersion CmdData matches 1040.. run function version:1_0_4/update
execute unless score $WorldVersion CmdData matches 1100.. run function version:1_1_0/update

#> Fix parkour record AEC for 1.1.0 update
execute as @e[type=area_effect_cloud,tag=ParkourRecordAEC,scores={CmdData=1..},limit=1] store result entity @s Air short 1 run scoreboard players remove @s CmdData 1
scoreboard players reset @e[type=area_effect_cloud,tag=ParkourRecordAEC,scores={CmdData=..0},limit=1] CmdData