# scale:[0.625f,0.625f,0.625f],translation:[0.0f,1.6875f,0.0f]
#> Recoil animation
scoreboard players add @s CmdData 1
data merge entity @s[scores={CmdData=1},tag=!FireAnimation] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[0.0f,1.6875f,-0.5f],left_rotation:[-0.07f,0.0f,0.0f,1.0f]}}
data merge entity @s[scores={CmdData=3},tag=!FireAnimation] {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0.0f,1.6875f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data merge entity @s[scores={CmdData=1},tag=FireAnimation] {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[-0.2f,0.0f,0.0f,1.0f]}}
tag @s[scores={CmdData=5..}] remove RecoilAnimation
scoreboard players reset @s[scores={CmdData=5..}] CmdData