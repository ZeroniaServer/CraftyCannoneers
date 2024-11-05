execute unless entity @e[type=slime,tag=Spotted,tag=Purple] run scoreboard players add @s[team=Purple] spotting 1
execute unless entity @e[type=slime,tag=Spotted,tag=Orange] run scoreboard players add @s[team=Orange] spotting 1

execute if score @s spotting matches 1 run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute if score @s spotting matches 3 run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute if score @s spotting matches 5 run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute if score @s spotting matches 10..43 run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2

#> Finish spotting
execute if entity @s[team=Purple,scores={spotting=43}] unless entity @e[type=slime,tag=Spotted,tag=Purple] run function game:shipweakpoint/finishspotting
execute if entity @s[team=Orange,scores={spotting=43}] unless entity @e[type=slime,tag=Spotted,tag=Orange] run function game:shipweakpoint/finishspotting

#Titles are epic
title @s[scores={spotting=1..35}] title {"text":" ","color":"white"}
title @s[scores={spotting=1..3}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=4..7}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=8..11}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=12..15}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=16..19}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=20..23}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=24..27}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=28..31}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=32..35}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=36..39}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotting=40..43}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]]}]

tag @s remove SeeWeakpoint