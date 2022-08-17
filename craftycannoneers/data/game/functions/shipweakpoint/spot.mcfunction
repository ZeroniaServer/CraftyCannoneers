function game:shipweakpoint/xparticle
function game:shipweakpoint/damage

execute unless entity @e[type=slime,tag=Spotted,tag=Purple] run scoreboard players add @a[team=Purple,tag=SeeWeakpoint] spotting 1
execute unless entity @e[type=slime,tag=Spotted,tag=Orange] run scoreboard players add @a[team=Orange,tag=SeeWeakpoint] spotting 1
title @a[tag=!SeeWeakpoint,scores={spotting=1..}] title {"text":" ","color":"white"}
title @a[tag=!SeeWeakpoint,scores={spotting=1..}] subtitle {"text":" ","color":"white"}
scoreboard players reset @a[tag=!SeeWeakpoint,scores={spotting=1..}] spotting
execute as @a[tag=SeeWeakpoint,scores={spotting=1}] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 0.6
execute as @a[tag=SeeWeakpoint,scores={spotting=3}] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 0.7
execute as @a[tag=SeeWeakpoint,scores={spotting=5}] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 1.3
execute as @a[tag=SeeWeakpoint,scores={spotting=10..55}] at @s run playsound minecraft:item.spyglass.stop_using master @s ~ ~ ~ 1 2
execute as @a[team=Purple,tag=SeeWeakpoint,scores={spotting=55},limit=1,sort=random] run execute as @a[team=Purple] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute as @a[team=Purple,tag=SeeWeakpoint,scores={spotting=55},limit=1,sort=random] run tellraw @a[team=Purple] ["",{"text":"Ship weakpoint exposed by ","color":"dark_aqua"},{"selector":"@s"}]
execute as @a[team=Orange,tag=SeeWeakpoint,scores={spotting=55},limit=1,sort=random] run execute as @a[team=Orange] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute as @a[team=Orange,tag=SeeWeakpoint,scores={spotting=55},limit=1,sort=random] run tellraw @a[team=Orange] ["",{"text":"Ship weakpoint exposed by ","color":"dark_aqua"},{"selector":"@s"}]
execute as @a[tag=SeeWeakpoint,team=Purple,scores={spotting=55..}] run tag @e[type=slime,tag=Weakpoint,tag=Purple] add Spotted
execute as @a[tag=SeeWeakpoint,team=Orange,scores={spotting=55..}] run tag @e[type=slime,tag=Weakpoint,tag=Orange] add Spotted
execute as @a[tag=SeeWeakpoint,scores={spotting=55..}] run title @s subtitle {"text":" ","color":"white"}
effect give @e[type=slime] invisibility 1 100 true


execute as @a[tag=SeeWeakpoint,team=Purple,scores={spotting=55..}] run title @a[team=Purple] subtitle {"text":" ","color":"white"}
execute as @a[tag=SeeWeakpoint,team=Purple,scores={spotting=55..}] run scoreboard players reset @a[team=Purple] spotting
execute as @a[tag=SeeWeakpoint,team=Orange,scores={spotting=55..}] run title @a[team=Orange] subtitle {"text":" ","color":"white"}
execute as @a[tag=SeeWeakpoint,team=Orange,scores={spotting=55..}] run scoreboard players reset @a[team=Orange] spotting
scoreboard players reset @a[tag=SeeWeakpoint,scores={spotting=55..}] spotting

#Titles are epic
execute as @a[tag=SeeWeakpoint,scores={spotting=1..55}] run title @s title {"text":" ","color":"white"}
execute as @a[tag=SeeWeakpoint,scores={spotting=1..5}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=6..10}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=11..15}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=16..20}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=21..25}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=26..30}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=31..35}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=36..40}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=41..45}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=46..50}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SeeWeakpoint,scores={spotting=51..55}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

#Un-spot over-time
scoreboard players add @e[type=slime,tag=Spotted] spotting 1
execute as @e[type=slime,tag=Spotted,scores={spotting=500..}] run tag @s remove Spotted
execute as @e[type=slime,tag=!Spotted,scores={spotting=500..}] run scoreboard players reset @s spotting

execute as @e[type=slime,tag=Spotted,tag=Purple] if entity @a[team=Purple,tag=SeeWeakpoint] run scoreboard players set @s spotting 0
execute as @e[type=slime,tag=Spotted,tag=Orange] if entity @a[team=Orange,tag=SeeWeakpoint] run scoreboard players set @s spotting 0



tag @a[team=!Lobby] remove UsingSpyglass
tag @a remove SeeWeakpoint