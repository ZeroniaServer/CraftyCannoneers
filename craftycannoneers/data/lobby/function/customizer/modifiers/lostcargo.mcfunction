execute if score $LostCargo CmdData matches 1 run scoreboard players set $LostCargo CmdData 2
execute if score $LostCargo CmdData matches 0 run tellraw @s ["\n",{translate:"modifier.lost_cargo",color:"#33ccff"},{text:": ",color:"blue"},{translate:"modifier.lost_cargo.description",color:"blue"}]
execute if score $LostCargo CmdData matches 0 run scoreboard players set $LostCargo CmdData 1
execute if score $LostCargo CmdData matches 2 run scoreboard players set $LostCargo CmdData 0

function lobby:customizer/modifiers/updatemodifiersigns
scoreboard players reset @s moditimer