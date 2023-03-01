tag @s[predicate=chests:key] add HoldKey
tag @s[predicate=chests:key_offhand] add HoldKey

execute at @s[team=Purple,tag=HoldKey,scores={eyeclick=1..}] if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1
execute at @s[team=Orange,tag=HoldKey,scores={eyeclick=1..}] if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1

execute at @s[team=Purple,tag=HoldKey,scores={eyeclick=1..}] if entity @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1
execute at @s[team=Orange,tag=HoldKey,scores={eyeclick=1..}] if entity @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1

execute at @s[team=Lobby,tag=HoldKey,scores={eyeclick=1..}] if entity @e[type=armor_stand,tag=LChestFakeC,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1

title @s[scores={openchest=1..4}] title {"text":" ","color":"dark_aqua"}
title @s[scores={openchest=1}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=2}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=3..4}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=5..6}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=7..8}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=9..10}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=11..12}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=13..14}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=15..16}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=17..18}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":"]","color":"gray"}]
title @s[scores={openchest=19..20}] subtitle ["",{"translate":"chest.unlocking","color":"dark_aqua"},{"text":" [","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":"]","color":"gray"}]
execute at @s[scores={openchest=20}] anchored eyes run particle item ender_eye{CustomModelData:1} ^ ^ ^0.6 0 0 0 0.1 10
title @s[scores={openchest=20}] subtitle {"text":" "}
item modify entity @s[team=!Lobby,predicate=chests:key,scores={openchest=20..},gamemode=!creative] weapon.mainhand game:reducecount
item modify entity @s[team=!Lobby,predicate=chests:key_offhand,scores={openchest=20..},gamemode=!creative] weapon.offhand game:reducecount

execute at @s[scores={openchest=1}] run playsound chestlock2 master @s ~ ~ ~ 0.5 1.3
execute at @s[scores={openchest=5}] run playsound key_turn master @s ~ ~ ~ 0.5 1
execute at @s[scores={openchest=8}] run playsound key_turn master @s ~ ~ ~ 0.5 1
execute at @s[scores={openchest=11}] run playsound key_turn master @s ~ ~ ~ 0.5 1
execute at @s[scores={openchest=14}] run playsound key_turn master @s ~ ~ ~ 0.5 1
execute at @s[scores={openchest=17}] run playsound key_turn master @s ~ ~ ~ 0.5 1
execute at @s[scores={openchest=20}] run playsound key_turn master @s ~ ~ ~ 0.5 1.3
execute at @s[scores={openchest=20}] run playsound chestunlock master @s ~ ~ ~ 0.5 1.3
execute at @s[team=Orange,scores={openchest=20}] if entity @e[type=armor_stand,tag=purplechestdisplay,distance=..3] run advancement grant @s only tutorial:zzzunlockables/robbery
execute at @s[team=Purple,scores={openchest=20}] if entity @e[type=armor_stand,tag=orangechestdisplay,distance=..3] run advancement grant @s only tutorial:zzzunlockables/robbery

execute at @s[team=Purple,predicate=game:onorange,scores={openchest=20..}] run tag @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] add Unlocked
execute at @s[team=Orange,predicate=game:onpurple,scores={openchest=20..}] run tag @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] add Unlocked

execute at @s[team=Purple,predicate=!game:onorange,scores={openchest=20..}] run tp @e[type=villager,tag=LChestVillager] ~ ~-200 ~
execute at @s[team=Purple,predicate=!game:onorange,scores={openchest=20..}] run kill @e[type=villager,tag=LChestVillager]
execute at @s[team=Purple,predicate=!game:onorange,scores={openchest=20..}] run tag @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,limit=1,sort=nearest] add Unlocked
execute at @s[team=Orange,predicate=!game:onpurple,scores={openchest=20..}] run tp @e[type=villager,tag=LChestVillager] ~ ~-200 ~
execute at @s[team=Orange,predicate=!game:onpurple,scores={openchest=20..}] run kill @e[type=villager,tag=LChestVillager]
execute at @s[team=Orange,predicate=!game:onpurple,scores={openchest=20..}] run tag @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,limit=1,sort=nearest] add Unlocked

execute at @s[team=Lobby,scores={openchest=20..}] run tp @e[type=villager,tag=LChestFakeVillager] ~ ~-200 ~
execute at @s[team=Lobby,scores={openchest=20..}] run kill @e[type=villager,tag=LChestFakeVillager]
execute at @s[team=Lobby,scores={openchest=20..}] run tag @e[type=armor_stand,tag=LChestFakeC,tag=!Unlocked,limit=1,sort=nearest] add Unlocked
scoreboard players reset @s[scores={openchest=20..}] openchest

execute at @s[team=!Lobby,scores={openchest=1..}] unless entity @e[type=armor_stand,tag=LChestAS,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=chestdisplay,tag=!Unlocked,distance=..3] run title @s title {"text":" ","color":"dark_aqua"}
execute at @s[team=!Lobby,scores={openchest=1..}] unless entity @e[type=armor_stand,tag=LChestAS,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=chestdisplay,tag=!Unlocked,distance=..3] run title @s subtitle {"text":" ","color":"dark_aqua"}
execute at @s[team=!Lobby,scores={openchest=1..}] unless entity @e[type=armor_stand,tag=LChestAS,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=chestdisplay,tag=!Unlocked,distance=..3] run scoreboard players reset @s openchest

execute at @s[team=Lobby,scores={openchest=1..}] unless entity @e[type=armor_stand,tag=LChestFakeC,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=fakechestdisplay,tag=!Unlocked,distance=..3] run title @s title {"text":" ","color":"dark_aqua"}
execute at @s[team=Lobby,scores={openchest=1..}] unless entity @e[type=armor_stand,tag=LChestFakeC,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=fakechestdisplay,tag=!Unlocked,distance=..3] run title @s subtitle {"text":" ","color":"dark_aqua"}
execute at @s[team=Lobby,scores={openchest=1..}] unless entity @e[type=armor_stand,tag=LChestFakeC,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=fakechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players reset @s openchest

execute if score @s openchest matches 1.. unless score @s eyeclick matches 1.. run title @s title {"text":" ","color":"dark_aqua"}
execute if score @s openchest matches 1.. unless score @s eyeclick matches 1.. run title @s subtitle {"text":" ","color":"dark_aqua"}
execute if score @s openchest matches 1.. unless score @s eyeclick matches 1.. run scoreboard players reset @s openchest

tag @s[tag=HoldKey] remove HoldKey