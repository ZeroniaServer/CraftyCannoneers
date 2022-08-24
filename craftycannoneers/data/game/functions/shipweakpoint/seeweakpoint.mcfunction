execute unless entity @e[type=slime,tag=Spotted,tag=Purple] run scoreboard players add @s[team=Purple] spotting 1
execute unless entity @e[type=slime,tag=Spotted,tag=Orange] run scoreboard players add @s[team=Orange] spotting 1

execute at @s[scores={spotting=1}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute at @s[scores={spotting=3}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute at @s[scores={spotting=5}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute at @s[scores={spotting=10..55}] run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2

#> Finish spotting
execute unless entity @e[type=slime,tag=Spotted,tag=Purple] if entity @s[team=Purple,scores={spotting=55}] run function game:shipweakpoint/finishspotting
execute unless entity @e[type=slime,tag=Spotted,tag=Orange] if entity @s[team=Orange,scores={spotting=55}] run function game:shipweakpoint/finishspotting

#Titles are epic
title @s[scores={spotting=1..55}] title {"text":" ","color":"white"}
title @s[scores={spotting=1..5}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=6..10}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=11..15}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=16..20}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=21..25}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=26..30}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=31..35}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=36..40}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=41..45}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=46..50}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotting=51..55}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

tag @s remove SeeWeakpoint