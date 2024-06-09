scoreboard players add @s CmdData 1
data merge entity @s[scores={CmdData=1}] {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0.4375f,0.4375f,0.4375f],translation:[0.0f,0.7f,0.0f]}}
data merge entity @s[scores={CmdData=4}] {start_interpolation:0,interpolation_duration:7,transformation:{scale:[0.675f,0.675f,0.675f],translation:[0.0f,1.3f,0.0f]}}
data merge entity @s[scores={CmdData=11}] {start_interpolation:0,interpolation_duration:500,transformation:{scale:[0.8f,0.8f,0.8f]}}

execute at @s[scores={CmdData=1}] run playsound gas master @a ~ ~ ~ 1 1.3
execute at @s[scores={CmdData=6}] run playsound gasshot master @a ~ ~ ~ 1 1.3
execute at @s[scores={CmdData=12}] run playsound gas master @a ~ ~ ~ 0.4 1.5
scoreboard players set @s[scores={CmdData=13..}] CmdData 11

execute at @s run particle dust{color:[0.0,1.0,0.2],scale:2.0} ~ ~1 ~ 1.2 0.5 1.3 0.2 9 force @a[predicate=cannons:seeparticles]
execute at @s run particle dust{color:[0.0,1.0,0.6],scale:2.0} ~ ~1 ~ 1 1 1 0.2 5 force @a[predicate=cannons:seeparticles]
execute at @s run particle soul ~ ~ ~ 1.5 1.2 1.5 0.05 6 force @a[predicate=cannons:seeparticles]
execute on vehicle at @s run tp @s ~ ~0.002 ~

execute at @s unless entity @e[type=marker,tag=GasCloud,distance=..1] run function cannons:gas/cloudkill