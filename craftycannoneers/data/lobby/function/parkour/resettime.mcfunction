scoreboard players set @s parkourSecs 0
scoreboard players set @s parkourMins 0
scoreboard players set @s parkourDeci 0
scoreboard players set @s parkourDeci2 0
scoreboard players set @s parkourTimer 0
scoreboard players set @s finalParkourTime 0
scoreboard players set @s checkpoint 0
tellraw @s[tag=!startParkour,tag=!resettimeonce] {translate:"parkour.reset_time",color:"dark_green",italic:true}
tag @s[tag=!startParkour] add resettimeonce