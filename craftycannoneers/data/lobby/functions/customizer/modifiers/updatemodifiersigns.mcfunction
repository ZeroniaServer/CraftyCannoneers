execute if score $NoTracers CmdData matches 0 run data merge block -53 -22 9 {Text4:'{"text":"❌","color":"#FF282E","bold":true}'}
execute if score $NoTracers CmdData matches 1 run data merge block -53 -22 9 {Text4:'{"text":"✔","color":"#28FF3E","bold":true}'}

execute if score $Wildlife CmdData matches 0 run data merge block -54 -22 9 {Text4:'{"text":"❌","color":"#FF282E","bold":true}'}
execute if score $Wildlife CmdData matches 1 run data merge block -54 -22 9 {Text4:'{"text":"✔","color":"#28FF3E","bold":true}'}

execute if score $Storms CmdData matches 0 run data merge block -55 -22 9 {Text4:'{"text":"❌","color":"#FF282E","bold":true}'}
execute if score $Storms CmdData matches 1 run data merge block -55 -22 9 {Text4:'{"text":"✔","color":"#28FF3E","bold":true}'}

execute if score $LostCargo CmdData matches 0 run data merge block -53 -23 9 {Text4:'{"text":"❌","color":"#FF282E","bold":true}'}
execute if score $LostCargo CmdData matches 1 run data merge block -53 -23 9 {Text4:'{"text":"✔","color":"#28FF3E","bold":true}'}