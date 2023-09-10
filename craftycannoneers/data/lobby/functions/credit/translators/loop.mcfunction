scoreboard players add @s[tag=Spin] CmdData 1
execute if entity @s[tag=Spin,tag=Previous,scores={CmdData=1}] run function lobby:credit/translators/spinglobe_invert
execute if entity @s[tag=Spin,tag=Next,scores={CmdData=1}] run function lobby:credit/translators/spinglobe
execute if entity @s[tag=Spin,scores={CmdData=10..30}] run function lobby:credit/translators/slowdown
data merge entity @s[scores={CmdData=35..}] {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
tag @s[scores={CmdData=35..}] remove Spin
scoreboard players reset @s[scores={CmdData=35..}] CmdData