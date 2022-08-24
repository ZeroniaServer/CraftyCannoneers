#Titles are epic
scoreboard players add @s spotfakewp 1
title @s[scores={spotfakewp=1..55}] title {"text":" ","color":"white"}
title @s[scores={spotfakewp=1..5}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=6..10}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=11..15}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=16..20}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=21..25}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=26..30}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=31..35}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=36..40}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=41..45}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=46..50}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=51..55}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

execute at @s[scores={spotfakewp=1}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute at @s[scores={spotfakewp=3}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute at @s[scores={spotfakewp=5}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute at @s[scores={spotfakewp=10..55}] run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2

#> Finish spotting
execute at @s[scores={spotfakewp=55}] run function tutorial:watchtower/finishspotting