#Titles are epic
scoreboard players add @s spotfakewp 1
title @s[scores={spotfakewp=1..3}] title {"text":" ","color":"white"}
title @s[scores={spotfakewp=1..3}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=4..7}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=8..11}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=12..15}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=16..19}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=20..23}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=24..27}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=28..31}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=32..35}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=36..39}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]]}]
title @s[scores={spotfakewp=40..43}] subtitle ["",{"translate":"weakpoint.spotting","color":"dark_aqua","with":[[{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]]}]

execute if score @s spotfakewp matches 1 run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute if score @s spotfakewp matches 3 run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute if score @s spotfakewp matches 5 run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute if score @s spotfakewp matches 10..43 run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2

#> Finish spotting
execute if score @s spotfakewp matches 43 run function tutorial:watchtower/finishspotting