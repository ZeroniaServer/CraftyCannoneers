execute as @e[type=armor_stand,tag=PirateHat,tag=!110HatPlacement] at @s run tp @s ~ ~0.17 ~
tag @e[type=armor_stand,tag=PirateHat,tag=!110HatPlacement] add 110HatPlacement

kill @e[type=armor_stand,tag=ModifierIcons]
function arenaclear:traders
function arenaclear:cannons
function tutorial:cannondock/resetcannons
forceload add -413 -379 -260 -15
forceload add -260 -379 -130 -15
forceload add -130 -379 -95 -15
forceload add -399 -14 -427 -79
forceload add -427 -25 -452 -85
function entityid:flush
fill -53 -24 9 -55 -22 9 air
tp @e[type=armor_stand,tag=ConfirmIcon] -55 -23.5 9

execute as @e[type=armor_stand,tag=TDAS] run function version:1_1_0/dummyrotate

#> New modifier options stuff
#icons
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModifModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -53 -21.4 9 {Tags:["LobbyEntity","NoTracersIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -21.4 9 {Tags:["LobbyEntity","SharksIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -55 -21.4 9 {Tags:["LobbyEntity","SeaStormsIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}

#scores
scoreboard players set $NoTracers CmdData 0
scoreboard players set $Sharks CmdData 0
scoreboard players set $Storms CmdData 0
scoreboard players reset @e[type=armor_stand,tag=Parrot,limit=1] CmdData

#> Lobby signs
setblock -49 -28 -3 air
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"color":"#00CCCC","translate":"game.leave_sign.1","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text2:'{"color":"#00CCCC","translate":"game.leave_sign.2","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text3:'{"translate":"game.leave_sign.3","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text4:'{"translate":"game.leave_sign.4","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}'}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"color":"#00CCCC","translate":"game.leave_sign.1","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text2:'{"color":"#00CCCC","translate":"game.leave_sign.2","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text3:'{"translate":"game.leave_sign.3","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text4:'{"translate":"game.leave_sign.4","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}'}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign
setblock -260 -24 -59 air
setblock -260 -24 -59 jungle_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"translate":"tutorial.combat_area.weapons_sign.1"}',Text2:'{"translate":"tutorial.combat_area.weapons_sign.2"}',Text3:'{"translate":"tutorial.combat_area.weapons_sign.3"}',Text4:'{"translate":"tutorial.combat_area.weapons_sign.4"}'}
setblock -58 -24 0 air
setblock -58 -24 0 spruce_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"translate":"lobby.jail_sign.1"}',Text2:'{"translate":"lobby.jail_sign.2"}',Text3:'{"translate":"lobby.jail_sign.3"}',Text4:'{"translate":"lobby.jail_sign.4"}'}

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

function game:forcestop
function lobby:customizer/open

tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.0","color":"green"}]}]
scoreboard players set $WorldVersion CmdData 1100