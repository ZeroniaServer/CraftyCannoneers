execute if score $TimeLimit CmdData matches ..42068 if score $ShipHP CmdData matches ..42068 run tellraw @s ["","\n",{"translate":"customizer.current","color":"dark_aqua","bold":true},"\n",{"translate":"customizer.current_time","color":"yellow","with":[{"translate":"customizer.minutes","bold":true,"color":"gold","with":[{"score":{"name":"$TimeLimit","objective":"CmdData"},"bold":true,"color":"gold"}]}]},"\n",{"translate":"customizer.current_health","color":"#FE2A69","with":[{"score":{"name":"$ShipHP","objective":"CmdData"},"bold":true,"color":"#FF7AFF"}]},"\n"]
execute if score $TimeLimit CmdData matches 42069.. if score $ShipHP CmdData matches ..42068 run tellraw @s ["","\n",{"translate":"customizer.current","color":"dark_aqua","bold":true},"\n",{"translate":"customizer.current_time","color":"yellow","with":[{"translate":"customizer.unlimited","bold":true,"color":"gold"}]},"\n",{"translate":"customizer.current_health","color":"#FE2A69","with":[{"score":{"name":"$ShipHP","objective":"CmdData"},"bold":true,"color":"#FF7AFF"}]},"\n"]

execute if score $TimeLimit CmdData matches ..42068 if score $ShipHP CmdData matches 42069.. run tellraw @s ["","\n",{"translate":"customizer.current","color":"dark_aqua","bold":true},"\n",{"translate":"customizer.current_time","color":"yellow","with":[{"translate":"customizer.minutes","bold":true,"color":"gold","with":[{"score":{"name":"$TimeLimit","objective":"CmdData"},"bold":true,"color":"gold"}]}]},"\n",{"translate":"customizer.current_health","color":"#FE2A69","with":[{"translate":"customizer.auto","bold":true,"color":"#FF7AFF"}]},"\n"]
execute if score $TimeLimit CmdData matches 42069.. if score $ShipHP CmdData matches 42069.. run tellraw @s ["","\n",{"translate":"customizer.current","color":"dark_aqua","bold":true},"\n",{"translate":"customizer.current_time","color":"yellow","with":[{"translate":"customizer.unlimited","bold":true,"color":"gold"}]},"\n",{"translate":"customizer.current_health","color":"#FE2A69","with":[{"translate":"customizer.auto","bold":true,"color":"#FF7AFF"}]},"\n"]