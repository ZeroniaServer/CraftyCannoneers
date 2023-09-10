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
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"translate":"credits.translators","color":"white"}]'}
execute if score $TranslatorCreditActive CmdData matches 1.. at @s[tag=Globe] unless entity @a[distance=..8] run scoreboard players set $TranslatorCreditActive CmdData 0

scoreboard players add @s[tag=TranslatorCredit,tag=Credit] CmdData 1

execute if entity @s[tag=TranslatorCredit,tag=Credit,tag=Old,scores={CmdData=1}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute if entity @s[tag=TranslatorCredit,tag=Credit,tag=Old,scores={CmdData=10..}] run kill @s

execute if entity @s[tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5f,0f,-1.0f]}}
execute if entity @s[tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,-1.0f]}}
execute if entity @s[tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:12,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.5f,0f,-1.0f]}}

execute if entity @s[tag=TranslatorCredit,tag=Credit1,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[-2.0f,1.5f,-2.0f]}}
execute if entity @s[tag=TranslatorCredit,tag=Credit2,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[0.0f,1.5f,-2.0f]}}
execute if entity @s[tag=TranslatorCredit,tag=Credit3,tag=!Old,scores={CmdData=8}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1f,1f,1f],translation:[2.0f,1.5f,-2.0f]}}