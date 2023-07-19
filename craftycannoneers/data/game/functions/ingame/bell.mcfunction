execute at @s[tag=Purple] if entity @a[team=Orange,predicate=game:onpurple] run scoreboard players add @s CmdData 1
execute at @s[tag=Orange] if entity @a[team=Purple,predicate=game:onorange] run scoreboard players add @s CmdData 1

scoreboard players add @s[scores={CmdData=300}] bellring 1
data merge entity @s[scores={CmdData=300,bellring=..11}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,0f],angle:0.1f}}}
data merge entity @s[scores={CmdData=301,bellring=..11}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,1f],angle:0f}}}
data merge entity @s[scores={CmdData=302,bellring=..11}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-0.1f}}}
data merge entity @s[scores={CmdData=303,bellring=..11}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,1f],angle:0f}}}
execute at @s[scores={CmdData=300,bellring=..11}] run playsound shipbell master @a ~ ~ ~ 2 1
execute at @s[scores={CmdData=300,bellring=..11}] run playsound shipbell_distant master @a[distance=20..] ~ ~ ~ 6 1

execute at @s[scores={CmdData=300,bellring=15..}] run scoreboard players set @s bellring 12

execute at @s[scores={CmdData=300,bellring=12}] run playsound shipbell_echo master @a ~ ~ ~ 6 1
execute at @s[scores={CmdData=300,bellring=12..}] run playsound shipbell_resonate master @a ~ ~ ~ 5 1

data merge entity @s[scores={CmdData=300,bellring=12}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,0f],angle:0.15f}}}
data merge entity @s[scores={CmdData=301,bellring=12}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,1f],angle:0f}}}
data merge entity @s[scores={CmdData=302,bellring=12}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-0.15f}}}
data merge entity @s[scores={CmdData=303,bellring=12}] {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,1f],angle:0f}}}

data merge entity @s[scores={CmdData=300,bellring=13..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[0f,0f,-1f],angle:0.1f}}}
data merge entity @s[scores={CmdData=305,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[-1f,0f,0f],angle:0.1f}}}
data merge entity @s[scores={CmdData=310,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[0f,0f,1f],angle:0.1f}}}
data merge entity @s[scores={CmdData=315,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[1f,0f,0f],angle:0.1f}}}
data merge entity @s[scores={CmdData=320,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[0f,0f,-1f],angle:0.1f}}}
data merge entity @s[scores={CmdData=325,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[-1f,0f,0f],angle:0.1f}}}
data merge entity @s[scores={CmdData=330,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[0f,0f,1f],angle:0.1f}}}
data merge entity @s[scores={CmdData=335,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[1f,0f,0f],angle:0.1f}}}
data merge entity @s[scores={CmdData=340,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[0f,0f,-1f],angle:0.1f}}}
data merge entity @s[scores={CmdData=345,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[-1f,0f,0f],angle:0.1f}}}
data merge entity @s[scores={CmdData=350,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[0f,0f,1f],angle:0.1f}}}
data merge entity @s[scores={CmdData=355,bellring=12..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{axis:[1f,0f,0f],angle:0.1f}}}

execute at @s[tag=Orange,scores={CmdData=300,bellring=12..}] run effect give @a[team=Purple,predicate=game:onorange] glowing 4 100 true
execute at @s[tag=Purple,scores={CmdData=300,bellring=12..}] run effect give @a[team=Orange,predicate=game:onpurple] glowing 4 100 true

execute at @s[scores={CmdData=320..,bellring=..11}] run scoreboard players set @s CmdData 299
execute at @s[scores={CmdData=360..,bellring=12..}] run scoreboard players set @s CmdData 299

execute at @s[tag=Purple,scores={CmdData=1..}] unless entity @a[team=Orange,predicate=game:onpurple] run scoreboard players remove @s CmdData 1
execute at @s[tag=Orange,scores={CmdData=1..}] unless entity @a[team=Purple,predicate=game:onorange] run scoreboard players remove @s CmdData 1
execute at @s[tag=Purple,scores={bellring=1..}] unless entity @a[team=Orange,predicate=game:onpurple] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,1f],angle:0f}}}
execute at @s[tag=Purple,scores={bellring=1..}] unless entity @a[team=Orange,predicate=game:onpurple] run scoreboard players reset @s bellring
execute at @s[tag=Orange,scores={bellring=1..}] unless entity @a[team=Purple,predicate=game:onorange] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:{axis:[1f,0f,1f],angle:0f}}}
execute at @s[tag=Orange,scores={bellring=1..}] unless entity @a[team=Purple,predicate=game:onorange] run scoreboard players reset @s bellring


execute at @s[tag=Purple,scores={CmdData=300..}] unless entity @a[team=Orange,predicate=game:onpurple] run scoreboard players set @s CmdData 299
execute at @s[tag=Orange,scores={CmdData=300..}] unless entity @a[team=Purple,predicate=game:onorange] run scoreboard players set @s CmdData 299