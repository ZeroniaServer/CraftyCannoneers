execute unless entity @e[type=slime,tag=Spotted,tag=Purple] run scoreboard players add @s[team=Purple] spotting 1
execute unless entity @e[type=slime,tag=Spotted,tag=Orange] run scoreboard players add @s[team=Orange] spotting 1

execute at @s[scores={spotting=1}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute at @s[scores={spotting=3}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute at @s[scores={spotting=5}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute at @s[scores={spotting=10..43}] run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2

#> Finish spotting
execute unless entity @e[type=slime,tag=Spotted,tag=Purple] if entity @s[team=Purple,scores={spotting=43}] run function game:shipweakpoint/finishspotting
execute unless entity @e[type=slime,tag=Spotted,tag=Orange] if entity @s[team=Orange,scores={spotting=43}] run function game:shipweakpoint/finishspotting

#Titles are epic
title @s[scores={spotting=1..35}] title {"text":" ","color":"white"}
title @s[scores={spotting=1..3}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=4..7}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=8..11}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=12..15}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=16..19}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=20..23}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=24..27}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=28..31}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=32..35}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=36..39}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=40..43}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

tag @s remove SeeWeakpoint