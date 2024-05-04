scoreboard players add @e[type=item_display,tag=Demo,tag=Open] CmdData 1
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=1}] at @s run playsound block.chest.open master @a ~ ~ ~ 1 2
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=5}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:60,transformation:{translation:[0.0f,0.5f,0.097f],right_rotation:[-0.58f,0.0f,0.0f,0.82f]}}
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=1}] at @s run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=1}] at @s run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=1}] at @s run summon item_display ~ ~ ~ {Tags:["Demo","Item","1"],item_display:"ground"}

execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=8}] at @s run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=8}] at @s run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=8}] at @s run summon item_display ~ ~ ~ {Tags:["Demo","Item","2"],item_display:"ground"}

execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=16}] at @s run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=16}] at @s run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=16}] at @s run summon item_display ~ ~ ~ {Tags:["Demo","Item","3"],item_display:"ground"}

execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=24}] at @s run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=24}] at @s run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=24}] at @s run summon item_display ~ ~ ~ {Tags:["Demo","Item","4"],item_display:"ground"}

execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=32}] at @s run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=32}] at @s run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute as @e[type=item_display,tag=Open,tag=Lid,scores={CmdData=32}] at @s run summon item_display ~ ~ ~ {Tags:["Demo","Item","5"],item_display:"ground"}

scoreboard players add @e[type=item_display,tag=Demo,tag=Item] CmdData 1
execute as @e[type=item_display,tag=Demo,tag=Item,tag=1,scores={CmdData=1}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f],translation:[-0.2f,0.15f,-0.15f]}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=2,scores={CmdData=1}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.2f,0.15f,-0.15f]}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=3,scores={CmdData=1}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.15f,0.0f]}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=4,scores={CmdData=1}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f],translation:[-0.2f,0.15f,0.15f]}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=5,scores={CmdData=1}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.2f,0.15f,0.15f]}}

execute as @e[type=item_display,tag=Demo,tag=Item,tag=1,scores={CmdData=2}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{scale:[0.4f,0.4f,0.4f]},item:{id:"gold_nugget"}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=2,scores={CmdData=2}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{scale:[0.4f,0.4f,0.4f]},item:{id:"ender_eye",count:1,components:{"minecraft:custom_model_data":2}}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=3,scores={CmdData=2}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{scale:[0.4f,0.4f,0.4f]},item:{id:"gunpowder"}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=4,scores={CmdData=2}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{scale:[0.4f,0.4f,0.4f]},item:{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":16}}}
execute as @e[type=item_display,tag=Demo,tag=Item,tag=5,scores={CmdData=2}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{scale:[0.4f,0.4f,0.4f]},item:{id:"arrow"}}