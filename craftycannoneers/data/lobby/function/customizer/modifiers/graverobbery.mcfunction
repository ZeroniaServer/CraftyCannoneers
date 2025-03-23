execute if score $GraveRobbery CmdData matches 1 run scoreboard players set $GraveRobbery CmdData 2
execute if score $GraveRobbery CmdData matches 0 run tellraw @s ["\n",{translate:"modifier.grave_robbery",color:"#33ccff"},{text:": ",color:"blue"},{translate:"modifier.grave_robbery.description",color:"blue"}]
execute if score $GraveRobbery CmdData matches 0 run scoreboard players set $GraveRobbery CmdData 1
execute if score $GraveRobbery CmdData matches 2 run scoreboard players set $GraveRobbery CmdData 0

function lobby:customizer/modifiers/updatemodifiersigns
scoreboard players reset @s moditimer