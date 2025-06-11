tp @s ~ -20.25 ~
execute at @s run summon area_effect_cloud ~ ~0.625 ~ {Tags:["ParkourNameAEC"],Duration:200000000,CustomNameVisible:1b,Radius:0f,custom_particle:{type:"block",block_state:"minecraft:air"}}
data modify entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] CustomName set from storage craftycannoneers:parkour Name
execute at @s run tp @s ~ ~0.925 ~
scoreboard players set @s CmdData 2