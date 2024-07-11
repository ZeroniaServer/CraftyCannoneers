tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.2","color":"green"}]}]

kill @e[type=item_display,tag=JoinpadBarrier]
execute unless entity @e[type=item_display,tag=JoinpadLock,tag=Orange,limit=1] at @e[type=marker,tag=JoinpadOrange,limit=1] positioned ~-1.5315 ~1.25 ~ run summon item_display ~ ~ ~ {Tags:["JoinpadLock","Orange"],item:{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":138}},width:1f,height:1f,brightness:{sky:15,block:15},Rotation:[-90.0f,0.0f]}
execute unless entity @e[type=item_display,tag=JoinpadLock,tag=Purple,limit=1] at @e[type=marker,tag=JoinpadPurple,limit=1] positioned ~-1.5315 ~1.25 ~ run summon item_display ~ ~ ~ {Tags:["JoinpadLock","Purple"],item:{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":138}},width:1f,height:1f,brightness:{sky:15,block:15},Rotation:[-90.0f,0.0f]}
execute unless entity @e[type=item_display,tag=JoinpadLock,tag=Spectator,limit=1] at @e[type=marker,tag=JoinpadSpec,limit=1] positioned ~-1.5315 ~1.25 ~ run summon item_display ~ ~ ~ {Tags:["JoinpadLock","Spectator"],item:{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":138}},width:1f,height:1f,brightness:{sky:15,block:15},Rotation:[-90.0f,0.0f]}
execute unless entity @e[type=text_display,tag=JoinpadLockTitle,tag=Orange,limit=1] at @e[type=marker,tag=JoinpadOrange,limit=1] positioned ~-1.5 ~0.5 ~ run summon text_display ~ ~ ~ {Tags:["JoinpadLockTitle","Orange"],Rotation:[90.0f,0.0f],shadow:true,background:0,line_width:2000}
execute unless entity @e[type=text_display,tag=JoinpadLockTitle,tag=Purple,limit=1] at @e[type=marker,tag=JoinpadPurple,limit=1] positioned ~-1.5 ~0.5 ~ run summon text_display ~ ~ ~ {Tags:["JoinpadLockTitle","Purple"],Rotation:[90.0f,0.0f],shadow:true,background:0,line_width:2000}

function game:forcestop

scoreboard players set $WorldVersion CmdData 1120

scoreboard objectives add GameID dummy