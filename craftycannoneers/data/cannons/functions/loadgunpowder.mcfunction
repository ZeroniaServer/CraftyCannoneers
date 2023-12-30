#> Display current gunpowder
execute unless score @s[tag=firstTickDisplay] gpdisp_time = @s gpdisp_time run tag @s remove DisplayGP
execute if entity @e[type=item_display,tag=CannonDisp,scores={cannonclaim=1..},distance=..2,limit=1] run scoreboard players add @s[tag=DisplayGP] gpdisp_time 1
scoreboard players add @s[tag=DisplayGP,tag=!firstTickDisplay] gpdisp_time 1
tag @s[tag=DisplayGP,tag=!firstTickDisplay] add firstTickDisplay
tag @s[tag=!DisplayGP,tag=firstTickDisplay] remove firstTickDisplay

execute at @s[tag=GPDispL,scores={gpdisp_time=2..}] unless entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] run scoreboard players set @s gpdisp_time 1
execute at @s[tag=GPDispR,scores={gpdisp_time=2..}] unless entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] run scoreboard players set @s gpdisp_time 1

execute at @s[tag=GPDispL,scores={gpdisp_time=1}] run kill @e[type=area_effect_cloud,tag=GPDispText,distance=..3,limit=2]
execute at @s[tag=GPDispL,scores={gpdisp_time=1}] at @e[type=interaction,tag=CannonVLeft,tag=!Tutorial,limit=1,sort=nearest,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["cannon","GPDispText","1"],Duration:2000000000,Particle:"block air"}
execute at @s[tag=GPDispL,scores={gpdisp_time=1}] at @e[type=interaction,tag=CannonVRight,tag=!Tutorial,limit=1,sort=nearest,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["cannon","GPDispText","2"],Duration:2000000000,Particle:"block air"}
execute at @s[tag=GPDispL,scores={gpdisp_time=1}] at @e[type=interaction,tag=CannonVLeft,tag=Tutorial,limit=1,sort=nearest,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["cannon","GPDispText","1","Tutorial"],Duration:2000000000,Particle:"block air"}
execute at @s[tag=GPDispL,scores={gpdisp_time=1}] at @e[type=interaction,tag=CannonVRight,tag=Tutorial,limit=1,sort=nearest,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["cannon","GPDispText","2","Tutorial"],Duration:2000000000,Particle:"block air"}

execute at @s[tag=GPDispL,scores={CmdData=0,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"0"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=1,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"1"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=2,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"2"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=3,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"3"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=4,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"4"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=5,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"5"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=6,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"6"',CustomNameVisible:1b}
execute at @s[tag=GPDispL,scores={CmdData=7,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:'"7"',CustomNameVisible:1b}

execute at @s[tag=GPDispR,scores={CmdData=0,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"0"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=1,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"1"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=2,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"2"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=3,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"3"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=4,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"4"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=5,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"5"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=6,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"6"',CustomNameVisible:1b}
execute at @s[tag=GPDispR,scores={CmdData=7,gpdisp_time=2}] run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:'"7"',CustomNameVisible:1b}

execute at @s[scores={gpdisp_time=120..}] run kill @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2]
execute at @s[scores={gpdisp_time=120..}] run kill @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2]
tag @s[scores={gpdisp_time=120..}] remove DisplayGP
scoreboard players reset @s[tag=!DisplayGP,scores={gpdisp_time=1..}] gpdisp_time