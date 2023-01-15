scoreboard players add $WorldVersion CmdData 0
execute unless score $WorldVersion CmdData matches 1020.. run function version:1_0_2/update
execute unless score $WorldVersion CmdData matches 1030.. run function version:1_0_3/update
execute unless score $WorldVersion CmdData matches 1100.. run function version:1_1_0/update