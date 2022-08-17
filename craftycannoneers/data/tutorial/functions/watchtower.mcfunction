execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run clear @s

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run function lobby:hats

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run item replace entity @s hotbar.4 with spyglass{NoDrop:1b,display:{Name:'[{"text":"Spotting Spyglass","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this Spyglass to expose","italic":false,"color":"aqua"}]','[{"text":"the weakpoints of a ship!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']}}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run playsound ding master @a ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s title {"text":"Watchtower","color":"aqua"}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s subtitle {"text":"(Learn about spotting Weakpoints)","color":"yellow"}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run tag @s add InTower

execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s title {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s subtitle {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run clear @s
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run function lobby:items
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run tag @s remove InTower

function tutorial:xparticle



#Titles are epic
scoreboard players add @a[tag=SpotFake] spotfakewp 1
execute as @a[tag=SpotFake,scores={spotfakewp=1..55}] run title @s title {"text":" ","color":"white"}
execute as @a[tag=SpotFake,scores={spotfakewp=1..5}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=6..10}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=11..15}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=16..20}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=21..25}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=26..30}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=31..35}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=36..40}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=41..45}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=46..50}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=SpotFake,scores={spotfakewp=51..55}] run title @s subtitle ["",{"text":"Spotting... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]


execute as @a[tag=SpotFake,scores={spotfakewp=1}] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 0.6
execute as @a[tag=SpotFake,scores={spotfakewp=3}] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 0.7
execute as @a[tag=SpotFake,scores={spotfakewp=5}] at @s run playsound minecraft:item.spyglass.use master @s ~ ~ ~ 1 1.3
execute as @a[tag=SpotFake,scores={spotfakewp=10..55}] at @s run playsound minecraft:item.spyglass.stop_using master @s ~ ~ ~ 1 2
execute as @a[tag=SpotFake,scores={spotfakewp=55}] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute as @a[tag=SpotFake,scores={spotfakewp=55..}] run title @s title {"text":" ","color":"white"}
execute as @a[tag=SpotFake,scores={spotfakewp=55..}] run tag @s remove SpotFake

title @a[tag=!SpotFake,scores={spotfakewp=1..}] title {"text":""}
title @a[tag=!SpotFake,scores={spotfakewp=1..}] subtitle {"text":""}
scoreboard players reset @a[tag=!SpotFake,scores={spotfakewp=1..}] spotfakewp




tag @a[team=Lobby] remove UsingSpyglass
tag @a[tag=SpotFake] remove SpotFake