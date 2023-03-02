forceload add -399 -14 -427 -79
function entityid:flush

#> Lobby labels
data merge entity @e[type=area_effect_cloud,tag=TutorialWarp,tag=ToIsland,limit=1] {CustomName:'{"translate":"tutorial.warp.to_island","color":"aqua","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=TutorialWarp,tag=FromIsland,limit=1] {CustomName:'{"translate":"tutorial.warp.from_island","color":"aqua","bold":true}'}
kill @e[type=area_effect_cloud,tag=TutorialText]
kill @e[type=area_effect_cloud,tag=TutorialText2]
summon area_effect_cloud -46.5 -20.5 -14.5 {Tags:["LobbyText","TutorialText"],RadiusPerTick:0.0f,Particle:"minecraft:entity_effect",Duration:2000000000,CustomNameVisible:1b,Radius:0.0f,CustomName:'{"bold":true,"color":"aqua","translate":"tutorial.training_island"}',RadiusOnUse:0.0f}
summon area_effect_cloud -46.5 -20.8 -14.5 {Tags:["LobbyText","TutorialText2"],RadiusPerTick:0.0f,Particle:"minecraft:entity_effect",Duration:2000000000,CustomNameVisible:1b,Radius:0.0f,CustomName:'{"italic":true,"color":"yellow","translate":"lobby.label.tutorial"}',RadiusOnUse:0.0f}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=ParkourText,limit=1] {CustomName:'{"translate":"lobby.label.parkour.1","color":"aqua","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=ParkourText2,limit=1] {CustomName:'{"translate":"lobby.label.parkour.2","color":"yellow","italic":true}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=Madeby,limit=1] {CustomName:'{"color":"gray","translate":"lobby.label.credits.1","with":[{"color":"green","translate":"zeronia"}]}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=Clickon,limit=1] {CustomName:'{"italic":true,"color":"yellow","translate":"lobby.label.credits.2"}'}

#> No more floating buttons
setblock -58 -3 -32 air
setblock -65 -12 -39 air
setblock -63 -8 -39 air
setblock -60 -5 -39 air

scoreboard objectives remove fullInv

#> Move Parkour leaderboard text up
execute as @e[type=armor_stand,tag=ParkourAS,limit=1] if data entity @s CustomName run function version:1_1_0/leaderboardfix1
execute as @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] at @s unless entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] run function version:1_1_0/leaderboardfix2

kill @e[type=marker,tag=test]

bossbar set updatebar name ["",{"text":"UPDATING TO 1.1.0 ","color":"green"},{"text":"[","color":"gray"},{"text":"5","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]
bossbar set updatebar value 5

schedule function version:1_1_0/part6 10t