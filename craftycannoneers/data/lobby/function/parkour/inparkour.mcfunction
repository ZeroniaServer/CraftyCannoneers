#> Scoreboard timer
scoreboard players add @s finalParkourTime 1
scoreboard players add @s parkourTimer 1
scoreboard players add @s parkourSecs 0
scoreboard players add @s parkourMins 0
scoreboard players add @s[scores={parkourTimer=20}] parkourSecs 1
scoreboard players set @s[scores={parkourTimer=20}] parkourTimer 0
scoreboard players add @s[scores={parkourSecs=60}] parkourMins 1
scoreboard players set @s[scores={parkourSecs=60}] parkourSecs 0

#> Decimals
scoreboard players set $2 parkourDeci 2
scoreboard players operation @s parkourDeci = @s parkourTimer
scoreboard players operation @s parkourDeci /= $2 parkourDeci
scoreboard players add @s parkourDeci2 5
scoreboard players set @s[scores={parkourDeci2=10}] parkourDeci2 0

#> Reset time
tag @s[tag=onResetPlate] remove onResetPlate
execute if entity @s[x=-73,y=-22,z=-1,dx=0,dy=0,dz=0] run tag @s add onResetPlate
execute if entity @s[tag=!timeReset,tag=onResetPlate] run function lobby:parkour/resettime
tag @s[tag=startParkour] remove startParkour
tag @s[tag=!timeReset,tag=onResetPlate] add timeReset
tag @s[tag=timeReset,tag=!onResetPlate] remove timeReset

#> Display actionbar
execute if entity @s[scores={parkourSecs=..9,parkourMins=..9}] run title @s actionbar ["",{translate:"parkour.time",color:"dark_green",with:[[{text:"0",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourMins"},bold:true,color:"green"},{text:":",bold:true,color:"green"},{text:"0",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourSecs"},bold:true,color:"green"},{text:".",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci"},bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci2"},color:"green",bold:true}]]}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=..9}] run title @s actionbar ["",{translate:"parkour.time",color:"dark_green",with:[[{text:"0",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourMins"},bold:true,color:"green"},{text:":",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourSecs"},bold:true,color:"green"},{text:".",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci"},bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci2"},color:"green",bold:true}]]}]
execute if entity @s[scores={parkourSecs=..9,parkourMins=10..}] run title @s actionbar ["",{translate:"parkour.time",color:"dark_green",with:[[{"score":{"name":"@s","objective":"parkourMins"},bold:true,color:"green"},{text:":",bold:true,color:"green"},{text:"0",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourSecs"},bold:true,color:"green"},{text:".",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci"},bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci2"},color:"green",bold:true}]]}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=10..}] run title @s actionbar ["",{translate:"parkour.time",color:"dark_green",with:[[{"score":{"name":"@s","objective":"parkourMins"},bold:true,color:"green"},{text:":",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourSecs"},bold:true,color:"green"},{text:".",bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci"},bold:true,color:"green"},{"score":{"name":"@s","objective":"parkourDeci2"},color:"green",bold:true}]]}]

#> Invisible players within range
execute if entity @a[tag=inParkour,distance=0.0001..8] run effect give @s invisibility infinite 0 true
execute unless entity @a[tag=inParkour,distance=0.0001..8] run effect clear @s invisibility

#> Exit parkour if you fall on the ground
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~ ~-1 ~ #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~-0.3 ~-1 ~ #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~0.3 ~-1 ~ #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~ ~-1 ~-0.3 #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~ ~-1 ~0.3 #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~0.3 ~-1 ~0.3 #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~-0.3 ~-1 ~0.3 #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~-0.3 ~-1 ~-0.3 #lobby:parkourblocks run tag @s add CancelParkour
execute positioned -73 -22 -1 if entity @s[tag=!CancelParkour,distance=5..] at @s unless block ~0.3 ~-1 ~-0.3 #lobby:parkourblocks run tag @s add CancelParkour

#> Cancel parkour
execute at @s[tag=CancelParkour] run function lobby:parkour/cancel

#> Finish parkour
execute at @s if entity @s[x=-71,y=2,z=-4,dx=0,dy=0,dz=0] run tag @s add finishedParkour
execute at @s[tag=finishedParkour] run function lobby:parkour/finished