scoreboard players add $Daytime CmdData 1
execute if score $Daytime CmdData matches 3.. run scoreboard players set $Daytime CmdData 0
function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer