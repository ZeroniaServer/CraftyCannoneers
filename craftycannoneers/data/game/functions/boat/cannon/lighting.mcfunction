execute if score $Daytime CmdData matches 0 unless score $Storms CmdData matches 1 run data merge entity @s {brightness:{block:5,sky:15}}
execute if score $Daytime CmdData matches 1 unless score $Storms CmdData matches 1 run data merge entity @s {brightness:{block:0,sky:13}}
execute if score $Daytime CmdData matches 2 unless score $Storms CmdData matches 1 run data merge entity @s {brightness:{block:0,sky:14}}
execute if score $Storms CmdData matches 1 run data merge entity @s {brightness:{block:0,sky:14}}