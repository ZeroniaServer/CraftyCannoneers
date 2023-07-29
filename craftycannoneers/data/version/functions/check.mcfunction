scoreboard players add $WorldVersion CmdData 0
execute unless score $WorldVersion CmdData matches 1020.. run function version:1_0_2/update
execute unless score $WorldVersion CmdData matches 1030.. run function version:1_0_3/update
execute unless score $WorldVersion CmdData matches 1040.. run function version:1_0_4/update
execute unless score $WorldVersion CmdData matches 1050.. run function version:1_0_5/update
execute unless score $WorldVersion CmdData matches 1060.. run function version:1_0_6/update
execute unless score $WorldVersion CmdData matches 1100.. run function version:1_1_0/update
#> TODO Future update functions need to wait for $updating to be reset

execute if score $updating CmdData matches 0 run scoreboard players reset $updating CmdData
execute if score $updating CmdData matches 1 run scoreboard players reset @a modisigns