#Titles are epic
scoreboard players add @s spotfakewp 1
execute if entity @s[scores={spotfakewp=1..55}] run title @s title {"text":" ","color":"white"}
execute if entity @s[scores={spotfakewp=1..5}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=6..10}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=11..15}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=16..20}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=21..25}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=26..30}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=31..35}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=36..40}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=41..45}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=46..50}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=51..55}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]
execute if entity @s[scores={spotfakewp=55}] run tellraw @s ["","\n",{"text":"Ship weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]
execute if entity @s[tag=SpotFake1,scores={spotfakewp=55}] run tag @s add Exposed1
execute if entity @s[tag=SpotFake2,scores={spotfakewp=55}] run tag @s add Exposed2
execute if entity @s[tag=SpotFake3,scores={spotfakewp=55}] run tag @s add Exposed3
execute if entity @s[tag=SpotFake4,scores={spotfakewp=55}] run tag @s add Exposed4
execute if entity @s[tag=SpotFake5,scores={spotfakewp=55}] run tag @s add Exposed5
execute if entity @s[tag=SpotFake6,scores={spotfakewp=55}] run tag @s add Exposed6
execute if entity @s[tag=SpotFake7,scores={spotfakewp=55}] run tag @s add Exposed7

execute if entity @s[scores={spotfakewp=1}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.6
execute if entity @s[scores={spotfakewp=3}] run playsound item.spyglass.use master @s ~ ~ ~ 1 0.7
execute if entity @s[scores={spotfakewp=5}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1.3
execute if entity @s[scores={spotfakewp=10..55}] run playsound item.spyglass.stop_using master @s ~ ~ ~ 1 2
execute if entity @s[scores={spotfakewp=55}] run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute if entity @s[scores={spotfakewp=55..}] run title @s title {"text":" ","color":"white"}
execute if entity @s[scores={spotfakewp=55..}] run tag @s remove SpotFake