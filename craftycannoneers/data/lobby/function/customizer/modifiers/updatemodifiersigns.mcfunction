execute if score $NoTracers CmdData matches 0 run data modify block -53 -22 9 front_text.messages[2] set value {translate:"modifier.no_tracers.line.2",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}
execute if score $NoTracers CmdData matches 0 run data modify block -53 -22 9 front_text.messages[3] set value {translate:"modifier.no_tracers.line.3",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}

execute if score $NoTracers CmdData matches 1 run data modify block -53 -22 9 front_text.messages[2] set value {translate:"modifier.no_tracers.line.2",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}
execute if score $NoTracers CmdData matches 1 run data modify block -53 -22 9 front_text.messages[3] set value {translate:"modifier.no_tracers.line.3",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}

execute if score $Wildlife CmdData matches 0 run data modify block -54 -22 9 front_text.messages[2] set value {translate:"modifier.wildlife.line.2",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}
execute if score $Wildlife CmdData matches 0 run data modify block -54 -22 9 front_text.messages[3] set value {translate:"modifier.wildlife.line.3",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}

execute if score $Wildlife CmdData matches 1 run data modify block -54 -22 9 front_text.messages[2] set value {translate:"modifier.wildlife.line.2",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}
execute if score $Wildlife CmdData matches 1 run data modify block -54 -22 9 front_text.messages[3] set value {translate:"modifier.wildlife.line.3",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}

execute if score $Storms CmdData matches 0 run data modify block -55 -22 9 front_text.messages[2] set value {translate:"modifier.sea_storms.line.2",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}
execute if score $Storms CmdData matches 0 run data modify block -55 -22 9 front_text.messages[3] set value {translate:"modifier.sea_storms.line.3",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}

execute if score $Storms CmdData matches 1 run data modify block -55 -22 9 front_text.messages[2] set value {translate:"modifier.sea_storms.line.2",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}
execute if score $Storms CmdData matches 1 run data modify block -55 -22 9 front_text.messages[3] set value {translate:"modifier.sea_storms.line.3",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}

execute if score $LostCargo CmdData matches 0 run data modify block -53 -23 9 front_text.messages[2] set value {translate:"modifier.lost_cargo.line.2",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}
execute if score $LostCargo CmdData matches 0 run data modify block -53 -23 9 front_text.messages[3] set value {translate:"modifier.lost_cargo.line.3",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}

execute if score $LostCargo CmdData matches 1 run data modify block -53 -23 9 front_text.messages[2] set value {translate:"modifier.lost_cargo.line.2",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}
execute if score $LostCargo CmdData matches 1 run data modify block -53 -23 9 front_text.messages[3] set value {translate:"modifier.lost_cargo.line.3",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}

execute if score $GraveRobbery CmdData matches 0 run data modify block -54 -23 9 front_text.messages[2] set value {translate:"modifier.grave_robbery.line.2",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}
execute if score $GraveRobbery CmdData matches 0 run data modify block -54 -23 9 front_text.messages[3] set value {translate:"modifier.grave_robbery.line.3",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}

execute if score $GraveRobbery CmdData matches 1 run data modify block -54 -23 9 front_text.messages[2] set value {translate:"modifier.grave_robbery.line.2",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}
execute if score $GraveRobbery CmdData matches 1 run data modify block -54 -23 9 front_text.messages[3] set value {translate:"modifier.grave_robbery.line.3",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}

execute if score $BoatCannons CmdData matches 0 run data modify block -55 -23 9 front_text.messages[2] set value {translate:"modifier.boat_cannons.line.2",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}
execute if score $BoatCannons CmdData matches 0 run data modify block -55 -23 9 front_text.messages[3] set value {translate:"modifier.boat_cannons.line.3",color:"#33ccff",with:[{text:"❌",color:"#FF282E",bold:true}]}

execute if score $BoatCannons CmdData matches 1 run data modify block -55 -23 9 front_text.messages[2] set value {translate:"modifier.boat_cannons.line.2",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}
execute if score $BoatCannons CmdData matches 1 run data modify block -55 -23 9 front_text.messages[3] set value {translate:"modifier.boat_cannons.line.3",color:"#33ccff",with:[{text:"✔",color:"#28FF3E",bold:true}]}