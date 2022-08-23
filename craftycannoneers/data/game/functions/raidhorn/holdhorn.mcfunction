scoreboard players add @s[scores={eyeclick=1..}] horntime 1

execute if entity @s[scores={horntime=1..}] unless entity @s[scores={eyeclick=1..}] run title @s subtitle {"text":" ","color":"white"}
execute if entity @s[scores={horntime=1..}] unless entity @s[scores={eyeclick=1..}] run scoreboard players reset @s horntime

#Titles are epic
execute at @s[scores={horntime=1..34}] anchored eyes run particle note ^ ^ ^0.6 0.2 0.2 0.2 0.1 1 force @a[team=!Lobby]
title @s[scores={horntime=1..34}] title {"text":" ","color":"white"}
title @s[scores={horntime=1..3}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=4..6}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=7..9}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=10..12}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=13..15}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=16..18}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=19..21}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=22..24}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=25..27}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=28..30}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
title @s[scores={horntime=31..33}] subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

# Raid effects
execute at @s[scores={horntime=34..}] run function game:raidhorn/effects

tag @s remove HoldHorn