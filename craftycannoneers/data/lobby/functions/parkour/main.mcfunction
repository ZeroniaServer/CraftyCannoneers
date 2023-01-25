#> Start parkour
execute at @s[tag=!inParkour] if entity @s[x=-73,y=-22,z=-1,dx=0,dy=0,dz=0] run tag @s add startParkour
execute at @s[tag=startParkour] run function lobby:parkour/start

#> In parkour
execute at @s[tag=inParkour] run function lobby:parkour/inparkour

#> Reset objectives/tags/effects for non-parkour players
execute if entity @s[tag=!inParkour] run function lobby:parkour/nonparkour

#> Reset Parkour high score if necessary
execute unless score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. run tellraw @a [{"text":"An error has occurred, so the Parkour leaderboard has been reset. If you see this message, ","color":"red"},{"text":"please report!","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/X9bZgw7"},"hoverEvent":{"action":"show_text","contents":[{"text":"Report on the Zeronia Discord Server","color":"white"}]}}]
execute unless score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. run function lobby:parkour/resethighscore