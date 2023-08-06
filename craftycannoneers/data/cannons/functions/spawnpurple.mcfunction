summon item_display ~ ~ ~ {Tags:["cannon","Purple","CannonDisp","NoID"],item_display:"head",width:2.5f,height:2f,transformation:{scale:[0.625f,0.625f,0.625f],translation:[0.0f,1.6875f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~ ~ ~ {Tags:["cannon","Purple","GPDispL","GPHolder","NoID"],item_display:"head",width:0.3f,height:1f,transformation:{scale:[0.625f,0.625f,0.625f],translation:[0.0f,1.6875f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~ ~ ~ {Tags:["cannon","Purple","GPDispR","GPHolder","NoID"],item_display:"head",width:0.3f,height:1f,transformation:{scale:[0.625f,0.625f,0.625f],translation:[0.0f,1.6875f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
scoreboard players set @e[type=item_display,tag=NoID] CmdData 0
scoreboard players set @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] playerUUID 0
scoreboard players set @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] gravity 0
scoreboard players set @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] drag 0
item replace entity @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] container.0 with diamond_hoe{CustomModelData:1}
execute as @e[type=item_display,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=item_display,tag=NoID] remove NoID

summon interaction ~ ~0.78 ~-0.3 {width:0.3f,height:0.7f,response:1b,Tags:["CannonVMain","cannon","Purple","NoID"]}
summon interaction ~0.45 ~0.78 ~-0.5 {width:0.3f,height:0.7f,response:1b,Tags:["CannonVLeft","cannon","Purple","NoID"]}
summon interaction ~-0.45 ~0.78 ~-0.5 {width:0.3f,height:0.7f,response:1b,Tags:["CannonVRight","cannon","Purple","NoID"]}
execute as @e[type=interaction,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=interaction,tag=NoID] remove NoID

scoreboard players add $current CannonID 1