#> Randomize duration
execute if entity @s[tag=new] run function game:endfirework/duration

#> Randomize type
execute if entity @s[tag=new2] run function game:endfirework/type

#> Randomize rotation
execute if entity @s[tag=new3] run function game:endfirework/randomrotation

#> Flight
scoreboard players add @s CmdData 1
execute at @s run particle firework ~ ~ ~ 0 0 0 0.1 2 force @a[team=!Lobby]
execute at @s[scores={CmdData=1..10}] run tp @s ^ ^0.4 ^1.5
execute at @s[scores={CmdData=11..20}] run tp @s ^ ^0.8 ^1.5
execute at @s[scores={CmdData=21..}] run tp @s ^ ^1.4 ^1
data merge entity @s[scores={CmdData=15}] {item_display:"head",transformation:{translation:[0.0f,1.55f,-0.21f],left_rotation:{angle:1.00874f,axis:[-1.0f,0.0f,0.0f]}},start_interpolation:0,interpolation_duration:6}
execute at @s[scores={CmdData=21,eyeclick=1..}] run scoreboard players operation @s CmdData += @s eyeclick

#> Explode
execute if score @s CmdData matches 30.. run function game:endfirework/explode