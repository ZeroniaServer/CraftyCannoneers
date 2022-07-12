tag @a[predicate=chests:key] add HoldKey
tag @a[predicate=chests:key_offhand] add HoldKey

execute as @a[team=Purple,tag=HoldKey,scores={eyeclick=1..}] at @s if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1
execute as @a[team=Orange,tag=HoldKey,scores={eyeclick=1..}] at @s if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1

execute as @a[team=Purple,tag=HoldKey,scores={eyeclick=1..}] at @s if entity @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1
execute as @a[team=Orange,tag=HoldKey,scores={eyeclick=1..}] at @s if entity @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1

execute as @a[scores={openchest=1..4}] run title @s title {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=2}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=3..4}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=5..6}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=7..8}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=9..10}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=11..12}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=13..14}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=15..16}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=17..18}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=19..20}] run title @s subtitle ["",{"text":"Unlocking Chest... ","color":"dark_aqua"},{"text":"[","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":"]","color":"gray"}]
execute as @a[scores={openchest=20}] at @s anchored eyes run particle item ender_eye{CustomModelData:1} ^ ^ ^0.6 0 0 0 0.1 10
execute as @a[scores={openchest=20}] run title @s subtitle {"text":" "}
item modify entity @a[predicate=chests:key,scores={openchest=20..}] weapon.mainhand game:reducecount
item modify entity @a[predicate=chests:key_offhand,scores={openchest=20..}] weapon.offhand game:reducecount

execute as @a[scores={openchest=1}] at @s run playsound chestlock2 master @a ~ ~ ~ 0.5 1.3
execute as @a[scores={openchest=5}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=8}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=11}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=14}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=17}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=20}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1.3
execute as @a[scores={openchest=20}] at @s run playsound chestunlock master @a ~ ~ ~ 0.5 1.3
execute as @a[scores={openchest=20}] at @s run advancement grant @s only tutorial:zzzunlockables/robbery

execute as @a[team=Purple,predicate=game:onorange,scores={openchest=20..}] at @s run tag @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] add Unlocked
execute as @a[team=Orange,predicate=game:onpurple,scores={openchest=20..}] at @s run tag @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] add Unlocked

execute as @a[team=Purple,predicate=!game:onorange,scores={openchest=20..}] at @s run tag @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,limit=1,sort=nearest] add Unlocked
execute as @a[team=Orange,predicate=!game:onpurple,scores={openchest=20..}] at @s run tag @e[type=armor_stand,tag=LChestAS,tag=!Unlocked,limit=1,sort=nearest] add Unlocked


scoreboard players reset @a[scores={openchest=20..}] openchest

execute as @a[scores={openchest=1..}] at @s unless entity @e[type=armor_stand,tag=LChestAS,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=chestdisplay,tag=!Unlocked,distance=..3] run title @s title {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1..}] at @s unless entity @e[type=armor_stand,tag=LChestAS,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=chestdisplay,tag=!Unlocked,distance=..3] run title @s subtitle {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1..}] at @s unless entity @e[type=armor_stand,tag=LChestAS,tag=!Spawned,distance=..3] unless entity @e[type=armor_stand,tag=chestdisplay,tag=!Unlocked,distance=..3] run scoreboard players reset @s openchest

execute as @a[scores={openchest=1..}] unless entity @s[scores={eyeclick=1..}] run title @s title {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1..}] unless entity @s[scores={eyeclick=1..}] run title @s subtitle {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1..}] unless entity @s[scores={eyeclick=1..}] run scoreboard players reset @s openchest
scoreboard players reset @a[scores={eyeclick=1..}] eyeclick

tag @a[tag=HoldKey] remove HoldKey