execute as @a[team=Purple,scores={eyeclick=1..}] at @s if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1
execute as @a[team=Orange,scores={eyeclick=1..}] at @s if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked,distance=..3] run scoreboard players add @s openchest 1


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
clear @a[scores={openchest=20..}] ender_eye{CustomModelData:1} 1

execute as @a[scores={openchest=1}] at @s run playsound chestlock master @a ~ ~ ~ 0.5 1.3
execute as @a[scores={openchest=5}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=8}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=11}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=14}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=17}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1
execute as @a[scores={openchest=20}] at @s run playsound key_turn master @a ~ ~ ~ 0.5 1.3
execute as @a[scores={openchest=20}] at @s run playsound chestunlock master @a ~ ~ ~ 0.5 1.3
execute as @a[scores={openchest=20}] at @s run advancement grant @s only tutorial:zzzunlockables/robbery

execute as @a[team=Purple,scores={openchest=20..}] at @s run tag @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] add Unlocked
execute as @a[team=Orange,scores={openchest=20..}] at @s run tag @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] add Unlocked

scoreboard players reset @a[scores={openchest=20..}] openchest

execute as @a[scores={openchest=1..}] unless entity @s[scores={eyeclick=1..}] run title @s title {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1..}] unless entity @s[scores={eyeclick=1..}] run title @s subtitle {"text":" ","color":"dark_aqua"}
execute as @a[scores={openchest=1..}] unless entity @s[scores={eyeclick=1..}] run scoreboard players reset @s openchest
scoreboard players reset @a[scores={eyeclick=1..}] eyeclick