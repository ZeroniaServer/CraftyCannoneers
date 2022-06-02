tag @a remove firstParkour
scoreboard players reset * bestParkourMins
scoreboard players reset * bestParkourSecs
scoreboard players reset * bestParkourDeci
scoreboard players reset * bestParkourDeci2
scoreboard players reset * bestParkourTime
scoreboard players set @e[type=area_effect_cloud,tag=ParkourRecordAEC] bestParkourTime 2000000000





item replace entity @e[tag=ParkourAS] armor.head with player_head{SkullOwner:MHF_Question}
execute as @e[tag=ParkourAS] run data merge entity @s {CustomName:'{"text":"???","color":"yellow"}'}
execute as @e[tag=ParkourRecordAEC] run data merge entity @s {CustomName:'{"text":"00:00:00","color":"green"}'}

setblock -74 -24 1 minecraft:oak_wall_sign