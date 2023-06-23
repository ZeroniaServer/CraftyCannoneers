scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=1}] run playsound trainingdummy_hit1 master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=1}] run playsound trainingdummy_hit2 master @a ~ ~ ~ 1 0.7
data merge entity @s[scores={CmdData=1}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0f,0.05f,0f,0.999f]}}
data merge entity @s[scores={CmdData=2}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f]}}
data merge entity @s[scores={CmdData=3}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0f,-0.05f,0f,0.999f]}}
data merge entity @s[scores={CmdData=4}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f]}}
tag @s[scores={CmdData=4..}] remove DummyHurtAnim
scoreboard players reset @s[scores={CmdData=4..}] CmdData