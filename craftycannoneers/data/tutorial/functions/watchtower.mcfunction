execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run clear @s

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run function lobby:hats

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run item replace entity @s hotbar.4 with spyglass{NoDrop:1b,display:{Name:'[{"text":"Spotting Spyglass","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this Spyglass to expose","italic":false,"color":"aqua"}]','[{"text":"the weakpoints of a ship!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']}}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run playsound ding master @s ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s title {"text":"Watchtower","color":"aqua"}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s subtitle {"text":"(Learn about spotting Weakpoints)","color":"yellow"}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run tag @s add InTower

execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s title {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s subtitle {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run clear @s
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run function lobby:items
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run tag @s remove InTower

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
execute as @a[tag=SpotFake,scores={spotfakewp=55}] run tellraw @s ["","\n",{"text":"Ship weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]
execute as @a[tag=SpotFake1,scores={spotfakewp=55}] run tag @s add Exposed1
execute as @a[tag=SpotFake2,scores={spotfakewp=55}] run tag @s add Exposed2
execute as @a[tag=SpotFake3,scores={spotfakewp=55}] run tag @s add Exposed3
execute as @a[tag=SpotFake4,scores={spotfakewp=55}] run tag @s add Exposed4
execute as @a[tag=SpotFake5,scores={spotfakewp=55}] run tag @s add Exposed5
execute as @a[tag=SpotFake6,scores={spotfakewp=55}] run tag @s add Exposed6
execute as @a[tag=SpotFake7,scores={spotfakewp=55}] run tag @s add Exposed7

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

#> Remove exposed status over time
scoreboard players add @a[tag=Exposed1] fakeexpose1 1
scoreboard players add @a[tag=Exposed2] fakeexpose2 1
scoreboard players add @a[tag=Exposed3] fakeexpose3 1
scoreboard players add @a[tag=Exposed4] fakeexpose4 1
scoreboard players add @a[tag=Exposed5] fakeexpose5 1
scoreboard players add @a[tag=Exposed6] fakeexpose6 1
scoreboard players add @a[tag=Exposed7] fakeexpose7 1

tag @a[tag=Exposed1,scores={fakeexpose1=500..}] remove Exposed1
tag @a[tag=Exposed2,scores={fakeexpose2=500..}] remove Exposed2
tag @a[tag=Exposed3,scores={fakeexpose3=500..}] remove Exposed3
tag @a[tag=Exposed4,scores={fakeexpose4=500..}] remove Exposed4
tag @a[tag=Exposed5,scores={fakeexpose5=500..}] remove Exposed5
tag @a[tag=Exposed6,scores={fakeexpose6=500..}] remove Exposed6
tag @a[tag=Exposed7,scores={fakeexpose7=500..}] remove Exposed7

tag @a[tag=!InTower] remove Exposed1
tag @a[tag=!InTower] remove Exposed2
tag @a[tag=!InTower] remove Exposed3
tag @a[tag=!InTower] remove Exposed4
tag @a[tag=!InTower] remove Exposed5
tag @a[tag=!InTower] remove Exposed6
tag @a[tag=!InTower] remove Exposed7

advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S1
advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S2
advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S3
advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S4
advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S5
advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S6
advancement revoke @a[tag=!InTower,advancements={tutorial:objectives/allweakpoints=false}] only tutorial:objectives/allweakpoints S7

scoreboard players reset @a[tag=!Exposed1,scores={fakeexpose1=1..}] fakeexpose1
scoreboard players reset @a[tag=!Exposed2,scores={fakeexpose2=1..}] fakeexpose2
scoreboard players reset @a[tag=!Exposed3,scores={fakeexpose3=1..}] fakeexpose3
scoreboard players reset @a[tag=!Exposed4,scores={fakeexpose4=1..}] fakeexpose4
scoreboard players reset @a[tag=!Exposed5,scores={fakeexpose5=1..}] fakeexpose5
scoreboard players reset @a[tag=!Exposed6,scores={fakeexpose6=1..}] fakeexpose6
scoreboard players reset @a[tag=!Exposed7,scores={fakeexpose7=1..}] fakeexpose7




tag @a[team=Lobby] remove UsingSpyglass
tag @a[tag=SpotFake] remove SpotFake
tag @a[tag=SpotFake1] remove SpotFake1
tag @a[tag=SpotFake2] remove SpotFake2
tag @a[tag=SpotFake3] remove SpotFake3
tag @a[tag=SpotFake4] remove SpotFake4
tag @a[tag=SpotFake5] remove SpotFake5
tag @a[tag=SpotFake6] remove SpotFake6
tag @a[tag=SpotFake7] remove SpotFake7