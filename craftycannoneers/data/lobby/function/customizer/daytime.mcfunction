scoreboard players add $Daytime CmdData 1
execute if score $Daytime CmdData matches 3.. run scoreboard players set $Daytime CmdData 0
execute if score $Daytime CmdData matches 0 run time set day
execute if score $Daytime CmdData matches 1 run time set 12725
execute if score $Daytime CmdData matches 2 run time set midnight
function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer