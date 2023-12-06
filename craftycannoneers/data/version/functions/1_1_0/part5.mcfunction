forceload add -399 -14 -427 -79
function entityid:flush

#> Lobby labels
data merge entity @e[type=area_effect_cloud,tag=TutorialWarp,tag=ToIsland,limit=1] {CustomName:'{"translate":"tutorial.warp.to_island","color":"aqua","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=TutorialWarp,tag=FromIsland,limit=1] {CustomName:'{"translate":"tutorial.warp.from_island","color":"aqua","bold":true}'}
kill @e[type=area_effect_cloud,tag=TutorialText]
kill @e[type=area_effect_cloud,tag=TutorialText2]
summon area_effect_cloud -46.5 -20.5 -14.5 {Tags:["LobbyText","TutorialText"],RadiusPerTick:0.0f,Particle:"entity_effect",Duration:2000000000,CustomNameVisible:1b,Radius:0.0f,CustomName:'{"bold":true,"color":"aqua","translate":"tutorial.training_island"}',RadiusOnUse:0.0f}
summon area_effect_cloud -46.5 -20.8 -14.5 {Tags:["LobbyText","TutorialText2"],RadiusPerTick:0.0f,Particle:"entity_effect",Duration:2000000000,CustomNameVisible:1b,Radius:0.0f,CustomName:'{"italic":true,"color":"yellow","translate":"lobby.label.tutorial"}',RadiusOnUse:0.0f}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=ParkourText,limit=1] {CustomName:'{"translate":"lobby.label.parkour.1","color":"aqua","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=ParkourText2,limit=1] {CustomName:'{"translate":"lobby.label.parkour.2","color":"yellow","italic":true}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=Madeby,limit=1] {CustomName:'{"color":"gray","translate":"lobby.label.credits.1","with":[{"color":"green","translate":"zeronia"}]}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=Clickon,limit=1] {CustomName:'{"italic":true,"color":"yellow","translate":"lobby.label.credits.2"}'}

#> Remove unused scoreboard objectives
scoreboard objectives remove fullInv
scoreboard objectives remove RNGmax
scoreboard objectives remove arrowtime

#> Move Parkour leaderboard text up
execute as @e[type=armor_stand,tag=ParkourAS,limit=1] if data entity @s CustomName run function version:1_1_0/leaderboardfix1
execute as @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] at @s unless entity @e[type=area_effect_cloud,tag=ParkourNameAEC,limit=1] run function version:1_1_0/leaderboardfix2

#> Replace Cannonball displays + add new ones
#Normal Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoCB"],item:{id:"diamond_hoe",tag:{CustomModelData:16},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[115.46028f,0.0f]}
execute as @e[type=item_display,tag=DecoCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoCB] run tp @s ~ ~ ~ ~ 0

#Hot Cannonball
setblock -44 -25 -8 light[level=13]
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoFB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoFB"],brightness:{block:15,sky:15},item:{id:"lava_bucket",tag:{CustomModelData:1},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[28.37343f,0.0f]}
execute as @e[type=item_display,tag=DecoFB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoFB] run tp @s ~ ~ ~ ~ 0

#Gas Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoGCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoGCB"],item:{id:"diamond_hoe",tag:{CustomModelData:31},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-60.69922f,0.0f]}
execute as @e[type=item_display,tag=DecoGCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoGCB] run tp @s ~ ~ ~ ~ 0

#Chain Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoCCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoCCB"],item:{id:"diamond_hoe",tag:{CustomModelData:32},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-27.406347f,0.0f]}
execute as @e[type=item_display,tag=DecoCCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoCCB] run tp @s ~ ~ ~ ~ 0

#Bouncy Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoBCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoBCB"],item:{id:"diamond_hoe",tag:{CustomModelData:55},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-45.14787f,0.0f]}
execute as @e[type=item_display,tag=DecoBCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoBCB] run tp @s ~ ~ ~ ~ 0

#Tracer Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoTCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoTCB"],item:{id:"diamond_hoe",tag:{CustomModelData:60},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[-124.082184f,0.0f]}
execute as @e[type=item_display,tag=DecoTCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoTCB] run tp @s ~ ~ ~ ~ 0

#Player Cannonball
execute at @e[type=armor_stand,tag=CannonballDeco,tag=DecoPCB] run summon item_display ~ ~ ~ {Tags:["CannonballDeco","HasDisplay","DecoPCB"],item:{id:"diamond_hoe",tag:{CustomModelData:56},Count:1b},transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f,interpolation_duration:0,Rotation:[118.07965f,0.0f]}
execute as @e[type=item_display,tag=DecoPCB,limit=1] at @s rotated as @e[type=armor_stand,tag=CannonballDeco,tag=DecoPCB] run tp @s ~ ~ ~ ~ 0

#Kill all the old ones
kill @e[type=armor_stand,tag=CannonballDeco]

#Golden Cannonball
execute unless entity @e[type=item_display,tag=CannonballDeco,tag=DecoGOCB] run summon item_display -40.5 -26.6 -8.5 {width:1f,height:1f,item_display:"fixed",Tags:["CannonballDeco","HasDisplay","DecoGOCB"],Rotation:[40.231f,1.392f],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:73}}}
setblock -41 -27 -9 creeper_head

#Copper Cannonball
execute unless entity @e[type=item_display,tag=CannonballDeco,tag=DecoCOCB] run summon item_display -41.5 -26.55 -5.5 {width:1f,height:1f,item_display:"fixed",Tags:["CannonballDeco","HasDisplay","DecoCOCB"],Rotation:[60.282f,2.056f],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:109}}}
setblock -42 -27 -6 creeper_head

#> Light up the Training Island for nighttime
setblock -282 -24 -73 light[level=13] 
setblock -279 -24 -73 light[level=13] 
setblock -274 -24 -73 light[level=12] 
setblock -283 -24 -71 light[level=13] 
setblock -281 -24 -70 light[level=13] 
setblock -283 -24 -69 light[level=13] 
setblock -275 -24 -67 light[level=12] 
setblock -282 -24 -66 light[level=13] 
setblock -280 -24 -66 light[level=13] 
setblock -282 -19 -71 light[level=13] 
setblock -280 -19 -70 light[level=13] 
setblock -282 -19 -69 light[level=13] 
setblock -282 -19 -66 light[level=13] 
setblock -274 -25 -57 light[level=12] 
setblock -283 -24 -63 light[level=13] 
setblock -281 -24 -62 light[level=13] 
setblock -283 -24 -61 light[level=13] 
setblock -276 -24 -59 light[level=12] 
setblock -281 -24 -58 light[level=13] 
setblock -278 -24 -56 light[level=13] 
setblock -278 -24 -53 light[level=13] 
setblock -273 -24 -52 light[level=12] 
setblock -283 -24 -49 light[level=13] 
setblock -282 -22 -53 light[level=13] 
setblock -282 -21 -54 light[level=13] 
setblock -282 -19 -63 light[level=13] 
setblock -280 -19 -62 light[level=13] 
setblock -282 -19 -61 light[level=13] 
setblock -281 -19 -58 light[level=13] 
setblock -282 -19 -56 light[level=13] 
setblock -281 -24 -48 light[level=13] 
setblock -278 -24 -48 light[level=13] 
setblock -283 -24 -47 light[level=13] 
setblock -282 -24 -45 light[level=13] 
setblock -283 -24 -42 light[level=15] 
setblock -282 -24 -42 light[level=13] 
setblock -280 -24 -42 light[level=13] 
setblock -278 -24 -42 light[level=13] 
setblock -275 -24 -42 light[level=13] 
setblock -273 -24 -42 light[level=13] 
setblock -283 -24 -38 light[level=13] 
setblock -281 -24 -37 light[level=13] 
setblock -283 -24 -36 light[level=13] 
setblock -282 -24 -33 light[level=13] 
setblock -279 -24 -33 light[level=13] 
setblock -282 -24 -30 light[level=13] 
setblock -279 -24 -30 light[level=13] 
setblock -283 -24 -27 light[level=13] 
setblock -281 -24 -26 light[level=13] 
setblock -279 -24 -26 light[level=13] 
setblock -283 -24 -25 light[level=13] 
setblock -281 -24 -21 light[level=13] 
setblock -278 -24 -21 light[level=13] 
setblock -275 -24 -21 light[level=13] 
setblock -280 -24 -20 light[level=13] 
setblock -278 -24 -20 light[level=13] 
setblock -279 -23 -21 light[level=14] 
setblock -282 -23 -18 light[level=14] 
setblock -279 -22 -21 light[level=15] 
setblock -279 -21 -21 light[level=15] 
setblock -279 -20 -21 light[level=15] 
setblock -276 -20 -17 light[level=14] 
setblock -279 -19 -21 light[level=15] 
setblock -282 -19 -18 light[level=14] 
setblock -279 -18 -21 light[level=15] 
setblock -279 -17 -21 light[level=15] 
setblock -279 -16 -21 light[level=15] 
setblock -282 -16 -18 light[level=14] 
setblock -279 -15 -21 light[level=15] 
setblock -279 -14 -21 light[level=15] 
setblock -279 -13 -21 light[level=15] 
setblock -282 -13 -18 light[level=14] 
setblock -276 -13 -18 light[level=14] 
setblock -279 -12 -21 light[level=15] 
setblock -279 -11 -19 light[level=13] 
setblock -282 -11 -18 light[level=14] 
setblock -276 -11 -18 light[level=14] 
setblock -282 -21 -14 light[level=14] 
setblock -276 -19 -15 light[level=14] 
setblock -282 -17 -14 light[level=14] 
setblock -276 -16 -16 light[level=14] 
setblock -282 -13 -14 light[level=14] 
setblock -276 -13 -14 light[level=14] 
setblock -279 -11 -15 light[level=15] 
setblock -282 -11 -14 light[level=14] 
setblock -276 -11 -14 light[level=14] 
setblock -271 -25 -76 light[level=12] 
setblock -266 -25 -75 light[level=12] 
setblock -262 -25 -72 light[level=12] 
setblock -265 -25 -66 light[level=12] 
setblock -266 -24 -71 light[level=12] 
setblock -269 -24 -70 light[level=12] 
setblock -271 -24 -67 light[level=12] 
setblock -267 -22 -76 light[level=12] 
setblock -266 -19 -78 light[level=12] 
setblock -266 -16 -80 light[level=12] 
setblock -264 -14 -79 light[level=12] 
setblock -260 -27 -56 light[level=13] 
setblock -261 -27 -53 light[level=13] 
setblock -259 -27 -53 light[level=13] 
setblock -264 -27 -52 light[level=13] 
setblock -266 -27 -50 light[level=13] 
setblock -262 -26 -59 light[level=13] 
setblock -261 -26 -59 light[level=13] 
setblock -260 -26 -59 light[level=13] 
setblock -259 -26 -59 light[level=13] 
setblock -258 -26 -59 light[level=13] 
setblock -272 -25 -61 light[level=12] 
setblock -262 -25 -59 light[level=13] 
setblock -261 -25 -59 light[level=13] 
setblock -260 -25 -59 light[level=13] 
setblock -259 -25 -59 light[level=13] 
setblock -258 -25 -59 light[level=13] 
setblock -271 -25 -49 light[level=12] 
setblock -262 -27 -45 light[level=13] 
setblock -260 -27 -45 light[level=13] 
setblock -267 -26 -47 light[level=13] 
setblock -261 -26 -46 light[level=14] 
setblock -267 -25 -46 light[level=13] 
setblock -261 -25 -46 light[level=15] 
setblock -270 -24 -42 light[level=13] 
setblock -268 -24 -42 light[level=13] 
setblock -266 -24 -42 light[level=13] 
setblock -264 -24 -42 light[level=13] 
setblock -262 -24 -42 light[level=13] 
setblock -260 -24 -42 light[level=13] 
setblock -257 -24 -42 light[level=13] 
setblock -264 -24 -39 light[level=13] 
setblock -264 -24 -36 light[level=13] 
setblock -258 -24 -35 light[level=12] 
setblock -271 -24 -34 light[level=12] 
setblock -264 -24 -34 light[level=13] 
setblock -261 -23 -38 light[level=12] 
setblock -264 -25 -29 light[level=13] 
setblock -268 -25 -26 light[level=13] 
setblock -267 -25 -26 light[level=13] 
setblock -266 -25 -26 light[level=13] 
setblock -265 -25 -26 light[level=13] 
setblock -264 -25 -26 light[level=13] 
setblock -263 -25 -26 light[level=13] 
setblock -262 -25 -26 light[level=13] 
setblock -261 -25 -26 light[level=13] 
setblock -269 -25 -25 light[level=13] 
setblock -260 -25 -25 light[level=13] 
setblock -270 -25 -24 light[level=13] 
setblock -265 -25 -24 light[level=13] 
setblock -264 -25 -24 light[level=13] 
setblock -263 -25 -24 light[level=13] 
setblock -259 -25 -24 light[level=13] 
setblock -271 -25 -23 light[level=13] 
setblock -267 -25 -23 light[level=13] 
setblock -261 -25 -23 light[level=13] 
setblock -258 -25 -23 light[level=13] 
setblock -271 -25 -22 light[level=13] 
setblock -258 -25 -22 light[level=13] 
setblock -271 -25 -21 light[level=13] 
setblock -258 -25 -21 light[level=13] 
setblock -271 -25 -20 light[level=13] 
setblock -258 -25 -20 light[level=13] 
setblock -271 -25 -19 light[level=13] 
setblock -267 -25 -19 light[level=13] 
setblock -261 -25 -19 light[level=13] 
setblock -258 -25 -19 light[level=13] 
setblock -270 -25 -18 light[level=13] 
setblock -266 -25 -18 light[level=13] 
setblock -265 -25 -18 light[level=13] 
setblock -264 -25 -18 light[level=13] 
setblock -263 -25 -18 light[level=13] 
setblock -259 -25 -18 light[level=13] 
setblock -269 -25 -17 light[level=13] 
setblock -260 -25 -17 light[level=13] 
setblock -264 -24 -32 light[level=13] 
setblock -269 -24 -21 light[level=13] 
setblock -259 -24 -21 light[level=13] 
setblock -272 -23 -30 light[level=12] 
setblock -260 -23 -21 light[level=13] 
setblock -265 -22 -23 light[level=13] 
setblock -263 -22 -23 light[level=13] 
setblock -262 -22 -22 light[level=13] 
setblock -266 -22 -21 light[level=13] 
setblock -263 -22 -19 light[level=13] 
setblock -264 -21 -21 light[level=14] 
setblock -262 -21 -20 light[level=13] 
setblock -265 -21 -19 light[level=13] 
setblock -268 -25 -16 light[level=13] 
setblock -267 -25 -16 light[level=13] 
setblock -266 -25 -16 light[level=13] 
setblock -265 -25 -16 light[level=13] 
setblock -264 -25 -16 light[level=13] 
setblock -263 -25 -16 light[level=13] 
setblock -262 -25 -16 light[level=13] 
setblock -261 -25 -16 light[level=13] 
setblock -259 -25 -11 light[level=12] 
setblock -255 -26 -69 light[level=12] 
setblock -252 -26 -66 light[level=12] 
setblock -254 -27 -63 light[level=12] 
setblock -244 -27 -61 light[level=12] 
setblock -244 -27 -55 light[level=12] 
setblock -245 -27 -53 light[level=12] 
setblock -251 -27 -51 light[level=13] 
setblock -242 -27 -51 light[level=13] 
setblock -243 -27 -50 light[level=13] 
setblock -249 -27 -49 light[level=13] 
setblock -242 -27 -49 light[level=13] 
setblock -252 -26 -60 light[level=13] 
setblock -250 -26 -60 light[level=13] 
setblock -251 -26 -59 light[level=13] 
setblock -249 -26 -59 light[level=13] 
setblock -248 -26 -58 light[level=13] 
setblock -242 -26 -50 light[level=13] 
setblock -251 -25 -60 light[level=13] 
setblock -248 -25 -59 light[level=13] 
setblock -254 -27 -47 light[level=13] 
setblock -252 -27 -47 light[level=13] 
setblock -247 -27 -47 light[level=13] 
setblock -241 -27 -46 light[level=13] 
setblock -251 -27 -43 light[level=13] 
setblock -246 -27 -43 light[level=13] 
setblock -251 -27 -41 light[level=13] 
setblock -242 -27 -41 light[level=13] 
setblock -243 -27 -40 light[level=13] 
setblock -242 -27 -39 light[level=13] 
setblock -252 -27 -38 light[level=12] 
setblock -246 -27 -36 light[level=12] 
setblock -253 -26 -48 light[level=14] 
setblock -250 -26 -42 light[level=14] 
setblock -242 -26 -40 light[level=13] 
setblock -250 -26 -34 light[level=12] 
setblock -253 -25 -48 light[level=15] 
setblock -250 -25 -42 light[level=15] 
setblock -253 -24 -44 light[level=13] 
setblock -255 -24 -42 light[level=13] 
setblock -253 -24 -42 light[level=13] 
setblock -253 -24 -38 light[level=13] 
setblock -247 -26 -31 light[level=12] 
setblock -241 -26 -29 light[level=12] 
setblock -251 -26 -26 light[level=12] 
setblock -242 -26 -22 light[level=15] 
setblock -253 -26 -21 light[level=13] 
setblock -250 -26 -21 light[level=13] 
setblock -246 -26 -21 light[level=13] 
setblock -244 -26 -21 light[level=13] 
setblock -253 -26 -17 light[level=12] 
setblock -253 -25 -32 light[level=12] 
setblock -256 -25 -21 light[level=13] 
setblock -247 -26 -15 light[level=12] 
setblock -242 -26 -11 light[level=12] 
setblock -253 -25 -10 light[level=12] 
setblock -249 -25 -9 light[level=12] 
setblock -241 -22 -4 light[level=12] 
setblock -241 -20 -2 light[level=12] 
setblock -238 -26 -54 light[level=12] 
setblock -240 -27 -45 light[level=13] 
setblock -236 -26 -48 light[level=12] 
setblock -240 -26 -46 light[level=13] 
setblock -233 -25 -44 light[level=12] 
setblock -227 -25 -42 light[level=12] 
setblock -232 -25 -40 light[level=12] 
setblock -225 -25 -38 light[level=12] 
setblock -234 -25 -37 light[level=12] 
setblock -236 -25 -34 light[level=12] 
setblock -233 -29 -19 light[level=13] 
setblock -234 -29 -18 light[level=13] 
setblock -234 -28 -22 light[level=13] 
setblock -239 -28 -20 light[level=13] 
setblock -236 -28 -19 light[level=13] 
setblock -231 -28 -19 light[level=13] 
setblock -237 -28 -17 light[level=13] 
setblock -236 -26 -27 light[level=12] 
setblock -229 -26 -24 light[level=12] 
setblock -225 -25 -32 light[level=12] 
setblock -225 -25 -28 light[level=12] 
setblock -225 -25 -22 light[level=12] 
setblock -225 -25 -18 light[level=12] 
setblock -233 -28 -16 light[level=13] 
setblock -237 -27 -13 light[level=12] 
setblock -233 -26 -12 light[level=12] 
setblock -225 -25 -14 light[level=12] 
setblock -231 -25 -10 light[level=12] 
setblock -240 -25 -9 light[level=12] 
setblock -235 -25 -9 light[level=12] 
setblock -240 -24 -5 light[level=12] 
setblock -226 -22 -11 light[level=12] 
setblock -223 -25 -35 light[level=12] 
setblock -222 -25 -26 light[level=12] 
setblock -220 -24 -19 light[level=12] 
setblock -224 -19 -9 light[level=12] 
setblock -223 -16 -7 light[level=12] 
setblock -223 -13 -7 light[level=12] 

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"5","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 5

schedule function version:1_1_0/part6 10t

execute as @a at @s run playsound updateadvance master @s ~ ~ ~ 1 2