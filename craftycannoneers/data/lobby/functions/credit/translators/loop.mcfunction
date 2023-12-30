#> Globe spinning
scoreboard players add @s[tag=Spin] CmdData 1
execute if entity @s[tag=Spin,tag=Previous,scores={CmdData=1}] run function lobby:credit/translators/spinglobe_invert
execute if entity @s[tag=Spin,tag=Next,scores={CmdData=1}] run function lobby:credit/translators/spinglobe
execute if entity @s[tag=Spin,scores={CmdData=10..30}] run function lobby:credit/translators/slowdown
data merge entity @s[scores={CmdData=35..}] {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
tag @s[tag=Globe,scores={CmdData=35..}] remove Spin
tag @s[tag=Globe,scores={CmdData=35..}] remove Next
tag @s[tag=Globe,scores={CmdData=35..}] remove Previous
scoreboard players reset @s[tag=Globe,scores={CmdData=35..}] CmdData



#> Credits spawning
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run scoreboard players set $TranslatorPage CmdData 1
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run scoreboard players reset @e[tag=TranslatorCredit,tag=Credit] CmdData
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run tag @e[tag=TranslatorCredit,tag=Credit] add Old
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"translate":"credits.translators","color":"white"}]',start_interpolation:0,interpolation_duration:6,background:838860800,billboard:"center",transformation:{translation:[0.0f,0.0f,0.0f]}}
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run scoreboard players set $TranslatorCreditActive CmdData 0

scoreboard players add @s[tag=TranslatorCredit,tag=Credit] CmdData 1

execute if entity @s[tag=TranslatorCredit,tag=Credit,tag=Old,scores={CmdData=1}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute if entity @s[tag=TranslatorCredit,tag=Credit,tag=Old,scores={CmdData=10..}] run kill @s

# Heads
execute if entity @s[tag=Skull,tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5f,0f,-1.0f]}}
execute if entity @s[tag=Skull,tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,-1.0f]}}
execute if entity @s[tag=Skull,tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.5f,0f,-1.0f]}}

execute if entity @s[tag=Skull,tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[-2.0f,1.5f,-2.0f]}}
execute if entity @s[tag=Skull,tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[0.0f,1.5f,-2.0f]}}
execute if entity @s[tag=Skull,tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[2.0f,1.5f,-2.0f]}}

# Names
execute if entity @s[tag=Name,tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5f,0f,-0.5f]}}
execute if entity @s[tag=Name,tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,-0.5f]}}
execute if entity @s[tag=Name,tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.5f,0f,-0.5f]}}

execute if entity @s[tag=Name,tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[-2.0f,1.75f,-1.7f]}}
execute if entity @s[tag=Name,tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[0.0f,1.75f,-1.7f]}}
execute if entity @s[tag=Name,tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[2.0f,1.75f,-1.7f]}}

# Flag
execute if entity @s[tag=Flag,tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5f,0f,-0.5f]}}
execute if entity @s[tag=Flag,tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,-0.5f]}}
execute if entity @s[tag=Flag,tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.5f,0f,-0.5f]}}

execute if entity @s[tag=Flag,tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[2f,2f,2f],translation:[-2.0f,0.7f,-1.8f]}}
execute if entity @s[tag=Flag,tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[2f,2f,2f],translation:[0.0f,0.7f,-1.8f]}}
execute if entity @s[tag=Flag,tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[2f,2f,2f],translation:[2.0f,0.7f,-1.8f]}}

# Particles
execute if score @s[tag=Credit1,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 1 at @s run particle dust 1 0.665 0 1 -37 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]
execute if score @s[tag=Credit2,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 1 at @s run particle dust 1 0.498 0.749 1 -35 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]
execute if score @s[tag=Credit3,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 1 at @s run particle dust 0.768 0.07 0.996 1 -33 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]

execute if score @s[tag=Credit1,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 2 at @s run particle dust 0.568 0 1 1 -37 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]
execute if score @s[tag=Credit2,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 2 at @s run particle dust 0.854 0.905 0 1 -35 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]
execute if score @s[tag=Credit3,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 2 at @s run particle dust 0 255 0 1 -33 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]

execute if score @s[tag=Credit1,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 3 at @s run particle dust 1 1 1 1 -37 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]
execute if score @s[tag=Credit2,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 3 at @s run particle dust 0.015 0.521 0.690 1 -35 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]
execute if score @s[tag=Credit3,tag=!Old] CmdData matches 15.. if score $TranslatorPage CmdData matches 3 at @s run particle dust 0.815 0 0 1 -33 -24.6 17 0.3 0.3 0.3 0.1 1 force @a[distance=..12]