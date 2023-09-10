scoreboard players add @e[type=item_display,tag=Globe,tag=Spin] CmdData 1
execute as @e[type=item_display,tag=Globe,tag=Spin,tag=Previous,scores={CmdData=1}] run function lobby:credit/translators/spinglobe_invert
execute as @e[type=item_display,tag=Globe,tag=Spin,tag=Next,scores={CmdData=1}] run function lobby:credit/translators/spinglobe
execute as @e[type=item_display,tag=Globe,tag=Spin,scores={CmdData=10..30}] run function lobby:credit/translators/slowdown
execute as @e[type=item_display,tag=Globe,scores={CmdData=35..}] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=Globe,scores={CmdData=35..}] run tag @s remove Spin
execute as @e[type=item_display,tag=Globe,scores={CmdData=35..}] run scoreboard players reset @s CmdData