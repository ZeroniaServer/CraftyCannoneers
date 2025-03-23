#> Remove 1 tick from the timer
scoreboard players remove $ticks CmdData 1

#> calculate remaining minutes and seconds
#Minutes
scoreboard players operation $minutes CmdData = $ticks CmdData
scoreboard players operation $minutes CmdData /= $20 CmdData
scoreboard players operation $minutes CmdData /= $60 CmdData
#Seconds
scoreboard players operation $seconds CmdData = $ticks CmdData
scoreboard players operation $seconds CmdData /= $20 CmdData
scoreboard players operation $seconds CmdData %= $60 CmdData

execute if score $minutes CmdData matches 10.. if score $seconds CmdData matches 10.. run title @a[team=!Lobby,team=!Spectator,team=!Developer] actionbar ["",{"score":{"name":"$minutes","objective":"CmdData"},color:"gray"},{text:":",color:"gray"},{"score":{"name":"$seconds","objective":"CmdData"},color:"gray"}]
execute if score $minutes CmdData matches ..9 if score $seconds CmdData matches 10.. run title @a[team=!Lobby,team=!Spectator,team=!Developer] actionbar ["",{text:"0",color:"gray"},{"score":{"name":"$minutes","objective":"CmdData"},color:"gray"},{text:":",color:"gray"},{"score":{"name":"$seconds","objective":"CmdData"},color:"gray"}]
execute if score $minutes CmdData matches 10.. if score $seconds CmdData matches ..9 run title @a[team=!Lobby,team=!Spectator,team=!Developer] actionbar ["",{"score":{"name":"$minutes","objective":"CmdData"},color:"gray"},{text:":0",color:"gray"},{"score":{"name":"$seconds","objective":"CmdData"},color:"gray"}]
execute if score $minutes CmdData matches ..9 if score $seconds CmdData matches ..9 run title @a[team=!Lobby,team=!Spectator,team=!Developer] actionbar ["",{text:"0",color:"gray"},{"score":{"name":"$minutes","objective":"CmdData"},color:"gray"},{text:":",color:"gray"},{text:"0",color:"gray"},{"score":{"name":"$seconds","objective":"CmdData"},color:"gray"}]