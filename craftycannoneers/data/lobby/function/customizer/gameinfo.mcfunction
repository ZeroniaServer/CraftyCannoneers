execute if score $TimeLimit CmdData matches ..42068 if score $ShipHP CmdData matches ..42068 run tellraw @a ["\n",{translate:"customizer.current",color:"dark_aqua",bold:true},"\n",{translate:"customizer.current_time",color:"yellow",with:[{translate:"customizer.minutes",bold:true,color:"gold",with:[{"score":{"name":"$TimeLimit","objective":"CmdData"},bold:true,color:"gold"}]}]},"\n",{translate:"customizer.current_health",color:"#FE2A69",with:[{"score":{"name":"$ShipHP","objective":"CmdData"},bold:true,color:"#FF7AFF"}]}]
execute if score $TimeLimit CmdData matches 42069.. if score $ShipHP CmdData matches ..42068 run tellraw @a ["\n",{translate:"customizer.current",color:"dark_aqua",bold:true},"\n",{translate:"customizer.current_time",color:"yellow",with:[{translate:"customizer.unlimited",bold:true,color:"gold"}]},"\n",{translate:"customizer.current_health",color:"#FE2A69",with:[{"score":{"name":"$ShipHP","objective":"CmdData"},bold:true,color:"#FF7AFF"}]}]

execute if score $TimeLimit CmdData matches ..42068 if score $ShipHP CmdData matches 42069.. run tellraw @a ["\n",{translate:"customizer.current",color:"dark_aqua",bold:true},"\n",{translate:"customizer.current_time",color:"yellow",with:[{translate:"customizer.minutes",bold:true,color:"gold",with:[{"score":{"name":"$TimeLimit","objective":"CmdData"},bold:true,color:"gold"}]}]},"\n",{translate:"customizer.current_health",color:"#FE2A69",with:[{translate:"customizer.auto",bold:true,color:"#FF7AFF"}]}]
execute if score $TimeLimit CmdData matches 42069.. if score $ShipHP CmdData matches 42069.. run tellraw @a ["\n",{translate:"customizer.current",color:"dark_aqua",bold:true},"\n",{translate:"customizer.current_time",color:"yellow",with:[{translate:"customizer.unlimited",bold:true,color:"gold"}]},"\n",{translate:"customizer.current_health",color:"#FE2A69",with:[{translate:"customizer.auto",bold:true,color:"#FF7AFF"}]}]

scoreboard players set $modifiers CmdData 0
execute if score $NoTracers CmdData matches 1 run scoreboard players add $modifiers CmdData 1
execute if score $Wildlife CmdData matches 1 run scoreboard players add $modifiers CmdData 1
execute if score $Storms CmdData matches 1 run scoreboard players add $modifiers CmdData 1
execute if score $LostCargo CmdData matches 1 run scoreboard players add $modifiers CmdData 1
execute if score $GraveRobbery CmdData matches 1 run scoreboard players add $modifiers CmdData 1
execute if score $BoatCannons CmdData matches 1 run scoreboard players add $modifiers CmdData 1

execute if score $modifiers CmdData matches 1.. run function lobby:customizer/modifiers/printlist