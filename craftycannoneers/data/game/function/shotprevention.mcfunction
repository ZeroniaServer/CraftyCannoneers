execute if entity @s[team=Orange] run tag @e[type=interaction,tag=OrangeShotPrev] add Old
execute if entity @s[team=Purple] run tag @e[type=interaction,tag=PurpleShotPrev] add Old

execute if entity @s[team=Orange] run summon interaction 87 -25 55 {width:2,height:2,Tags:["OrangeShotPrev","ShotPrevention"]}
execute if entity @s[team=Purple] run summon interaction 53 -25 -55 {width:2,height:2,Tags:["PurpleShotPrev","ShotPrevention"]}

execute if entity @s[team=Orange] run kill @e[type=interaction,tag=OrangeShotPrev,tag=Old]
execute if entity @s[team=Purple] run kill @e[type=interaction,tag=PurpleShotPrev,tag=Old]