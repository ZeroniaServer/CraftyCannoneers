execute if score $TimeLimit CmdData matches 42069 run data merge block -53 -22 9 {Text4:'{"translate":"customizer.unlimited","color":"#FF7200"}'}
execute if score $TimeLimit CmdData matches 30 run data merge block -53 -22 9 {Text4:'[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"30","color":"#FF7200"}]}]'}
execute if score $TimeLimit CmdData matches 20 run data merge block -53 -22 9 {Text4:'[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"20","color":"#FF7200"}]}]'}
execute if score $TimeLimit CmdData matches 15 run data merge block -53 -22 9 {Text4:'[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"15","color":"#FF7200"}]}]'}
execute if score $TimeLimit CmdData matches 10 run data merge block -53 -22 9 {Text4:'[{"translate":"customizer.minutes","color":"#FF7200","with":[{"text":"10","color":"#FF7200"}]}]'}

execute if score $ShipHP CmdData matches 42069 run data merge block -55 -22 9 {Text4:'{"translate":"customizer.auto","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 2000 run data merge block -55 -22 9 {Text4:'{"text":"2000","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 1500 run data merge block -55 -22 9 {Text4:'{"text":"1500","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 1250 run data merge block -55 -22 9 {Text4:'{"text":"1250","color":"#FF49FC"}'}
execute if score $ShipHP CmdData matches 1000 run data merge block -55 -22 9 {Text4:'{"text":"1000","color":"#FF49FC"}'}