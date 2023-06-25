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

scoreboard objectives remove fullInv

#> Move Parkour leaderboard text up
execute as @e[type=armor_stand,tag=ParkourAS,limit=1] if data entity @s CustomName run function version:1_1_0/leaderboardfix1
execute as @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] at @s unless entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] run function version:1_1_0/leaderboardfix2

#> Replace Cannonball displays + add new ones
#Normal Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoCB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:16},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[115.46028f,0.0f]}
execute as @e[type=item_display,tag=DecoCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoCB] run tp @s ~ ~ ~ ~ 0

#Hot Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoFB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoFB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:22},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[28.37343f,0.0f]}
execute as @e[type=item_display,tag=DecoFB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoFB] run tp @s ~ ~ ~ ~ 0

#Gas Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoGCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoGCB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:31},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-60.69922f,0.0f]}
execute as @e[type=item_display,tag=DecoGCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoGCB] run tp @s ~ ~ ~ ~ 0

#Chain Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoCCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoCCB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:32},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-27.406347f,0.0f]}
execute as @e[type=item_display,tag=DecoCCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoCCB] run tp @s ~ ~ ~ ~ 0

#Bouncy Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoBCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoBCB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:55},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-45.14787f,0.0f]}
execute as @e[type=item_display,tag=DecoBCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoBCB] run tp @s ~ ~ ~ ~ 0

#Tracer Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoTCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoTCB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-124.082184f,0.0f]}
execute as @e[type=item_display,tag=DecoTCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoTCB] run tp @s ~ ~ ~ ~ 0

#Player Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoPCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoPCB"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:56},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[118.07965f,0.0f]}
execute as @e[type=item_display,tag=DecoPCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoPCB] run tp @s ~ ~ ~ ~ 0

#Kill all the old ones
kill @e[type=armor_stand,tag=CannonballDeco]

#Golden Cannonball
execute unless entity @e[type=item_display,tag=CannonballDeco,tag=DecoGOCB] run summon item_display -40.5 -26.6 -8.5 {width:1f,height:1f,item_display:"fixed",Tags:["CannonballDeco","HasDisplay","DecoGOCB"],Rotation:[40.231f,1.392f],item:{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:73}}}
setblock -41 -27 -9 creeper_head

#Copper Cannonball
execute unless entity @e[type=item_display,tag=CannonballDeco,tag=DecoCOCB] run summon item_display -41.5 -26.55 -5.5 {width:1f,height:1f,item_display:"fixed",Tags:["CannonballDeco","HasDisplay","DecoCOCB"],Rotation:[60.282f,2.056f],item:{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:109}}}
setblock -42 -27 -6 creeper_head

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"5","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 5

schedule function version:1_1_0/part6 10t

execute as @a at @s run playsound updateadvance master @s ~ ~ ~ 1 2