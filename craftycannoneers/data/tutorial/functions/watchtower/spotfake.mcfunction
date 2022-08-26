#Titles are epic
scoreboard players add @s spotfakewp 1
title @s[scores={spotfakewp=1..3}] title {"text":" ","color":"white"}
title @s[scores={spotfakewp=1..3}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=4..7}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=8..11}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=12..15}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=16..19}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=20..23}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=24..27}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=28..31}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=32..35}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=36..39}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={spotfakewp=40..43}] subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

execute at @s[scores={spotfakewp=1}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute at @s[scores={spotfakewp=3}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute at @s[scores={spotfakewp=5}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute at @s[scores={spotfakewp=10..43}] run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2

#> Finish spotting
execute at @s[scores={spotfakewp=43}] run function tutorial:watchtower/finishspotting