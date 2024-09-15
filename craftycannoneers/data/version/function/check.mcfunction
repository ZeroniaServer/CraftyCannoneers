scoreboard players add $WorldVersion CmdData 0
execute unless score $WorldVersion CmdData matches 1020.. run function version:1_0_2/update
execute unless score $WorldVersion CmdData matches 1030.. run function version:1_0_3/update
execute unless score $WorldVersion CmdData matches 1040.. run function version:1_0_4/update
execute unless score $WorldVersion CmdData matches 1050.. run function version:1_0_5/update
execute unless score $WorldVersion CmdData matches 1060.. run function version:1_0_6/update
execute unless score $WorldVersion CmdData matches 1070.. run function version:1_0_7/update
execute unless score $WorldVersion CmdData matches 1080.. run function version:1_0_8/update
execute unless score $WorldVersion CmdData matches 1100.. run function version:1_1_0/update
execute unless score $updating CmdData matches 1 unless score $WorldVersion CmdData matches 1110.. run function version:1_1_1/update
execute unless score $updating CmdData matches 1 unless score $WorldVersion CmdData matches 1120.. run function version:1_1_2/update
execute unless score $updating CmdData matches 1 unless score $WorldVersion CmdData matches 1130.. run function version:1_1_3/update

execute if score $updating CmdData matches 0 run scoreboard players reset $updating CmdData
execute if score $updating CmdData matches 1 run scoreboard players reset @a modisigns