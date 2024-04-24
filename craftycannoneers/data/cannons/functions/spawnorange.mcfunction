summon item_display ~ ~ ~ {Tags:["cannon","CannonCart","Orange","CannonDisp","NoID"],item_display:"head",Rotation:[-180.0f,0.0f],width:2.5f,height:2f}
summon item_display ~ ~ ~ {Tags:["cannon","CannonBarrel","Orange","CannonDisp","NoID"],item_display:"head",Rotation:[-180.0f,0.0f],width:2.5f,height:2f}
summon item_display ~ ~ ~ {Tags:["cannon","Orange","GPDispL","GPHolder","NoID"],item_display:"head",Rotation:[-180.0f,0.0f],width:0.3f,height:1f}
summon item_display ~ ~ ~ {Tags:["cannon","Orange","GPDispR","GPHolder","NoID"],item_display:"head",Rotation:[-180.0f,0.0f],width:0.3f,height:1f}
scoreboard players set @e[type=item_display,tag=NoID] CmdData 0
scoreboard players set @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] playerUUID 0
scoreboard players set @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] gravity 0
scoreboard players set @e[type=item_display,tag=CannonDisp,tag=NoID,limit=1] drag 0
item replace entity @e[type=item_display,tag=CannonCart,tag=NoID,limit=1] container.0 with minecraft:diamond_hoe[custom_model_data=1]
item replace entity @e[type=item_display,tag=CannonBarrel,tag=NoID,limit=1] container.0 with minecraft:diamond_hoe[custom_model_data=62]
execute as @e[type=item_display,tag=NoID] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.625f,0.625f,0.625f],translation:[0.0f,1.6875f,0.0f]}}
execute as @e[type=item_display,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=item_display,tag=NoID] remove NoID

summon interaction ~ ~0.78 ~0.3 {width:0.3f,height:0.7f,response:1b,Tags:["CannonVMain","cannon","Orange","NoID"],Rotation:[-180.0f,0.0f]}
summon interaction ~0.45 ~0.78 ~0.5 {width:0.3f,height:0.7f,response:1b,Tags:["CannonVRight","cannon","Orange","NoID"],Rotation:[-180.0f,0.0f]}
summon interaction ~-0.45 ~0.78 ~0.5 {width:0.3f,height:0.7f,response:1b,Tags:["CannonVLeft","cannon","Orange","NoID"],Rotation:[-180.0f,0.0f]}
execute as @e[type=interaction,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=interaction,tag=NoID] remove NoID

scoreboard players add $current CannonID 1