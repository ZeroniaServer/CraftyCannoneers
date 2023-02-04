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
tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.0","color":"green"}]}]
scoreboard players set $WorldVersion CmdData 1100
tp @e[type=armor_stand,tag=ConfirmIcon] -55 -23.5 9

#> New modifier options stuff
#icons
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModifModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -53 -21.4 9 {Tags:["LobbyEntity","NoTracersIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -21.4 9 {Tags:["LobbyEntity","SharksIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -55 -21.4 9 {Tags:["LobbyEntity","SeaStormsIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}

#scores
scoreboard objectives add PCBCooldown dummy
scoreboard objectives add WPNotify dummy
scoreboard players set $NoTracers CmdData 0
scoreboard players set $Sharks CmdData 0
scoreboard players set $Storms CmdData 0

#> Lobby signs
setblock -49 -28 -3 air
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","translate":"game.click_here"}',Text3:'{"translate":"game.your_team","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave"}]}',Text4:'{"text":""}'}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","translate":"game.click_here"}',Text3:'{"translate":"game.your_team","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave"}]}',Text4:'{"text":""}'}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign
setblock -260 -24 -59 air
setblock -260 -24 -59 jungle_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":""}',Text2:'{"translate":"tutorial.combat_area.weapons_sign.1"}',Text3:'{"translate":"tutorial.combat_area.weapons_sign.2"}',Text4:'{"text":""}'}
setblock -58 -24 0 air
setblock -58 -24 0 spruce_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":""}',Text2:'{"translate":"lobby.jail_sign.1"}',Text3:'{"translate":"lobby.jail_sign.2"}',Text4:'{"text":""}'}

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

#> Set lightning rods to protect flammable/block-update-susceptible areas
#Lobby
setblock -64 300 48 lightning_rod[facing=south]
setblock -32 300 32 lightning_rod[facing=south]
setblock -48 300 32 lightning_rod[facing=south]
setblock -64 300 32 lightning_rod[facing=south]
setblock -80 300 32 lightning_rod[facing=south]
setblock -32 300 16 lightning_rod[facing=south]
setblock -48 300 16 lightning_rod[facing=south]
setblock -64 300 16 lightning_rod[facing=south]
setblock -80 300 16 lightning_rod[facing=south]
setblock -32 300 0 lightning_rod[facing=south]
setblock -48 300 0 lightning_rod[facing=south]
setblock -64 300 0 lightning_rod[facing=south]
setblock -80 300 0 lightning_rod[facing=south]
setblock -96 300 0 lightning_rod[facing=south]
setblock -32 300 -16 lightning_rod[facing=south]
setblock -48 300 -16 lightning_rod[facing=south]
setblock -64 300 -16 lightning_rod[facing=south]
setblock -80 300 -16 lightning_rod[facing=south]
setblock -96 300 -16 lightning_rod[facing=south]
setblock -32 300 -32 lightning_rod[facing=south]
setblock -48 300 -32 lightning_rod[facing=south]
setblock -64 300 -32 lightning_rod[facing=south]
setblock -80 300 -32 lightning_rod[facing=south]
setblock -96 300 -32 lightning_rod[facing=south]
setblock -32 300 -48 lightning_rod[facing=south]
setblock -48 300 -48 lightning_rod[facing=south]
setblock -64 300 -48 lightning_rod[facing=south]
setblock -80 300 -48 lightning_rod[facing=south]
setblock -96 300 -48 lightning_rod[facing=south]

#Training Area
setblock -272 300 -96 lightning_rod[facing=south]
setblock -288 300 -80 lightning_rod[facing=south]
setblock -272 300 -80 lightning_rod[facing=south]
setblock -256 300 -80 lightning_rod[facing=south]
setblock -288 300 -64 lightning_rod[facing=south]
setblock -272 300 -64 lightning_rod[facing=south]
setblock -256 300 -64 lightning_rod[facing=south]
setblock -240 300 -64 lightning_rod[facing=south]
setblock -288 300 -48 lightning_rod[facing=south]
setblock -272 300 -48 lightning_rod[facing=south]
setblock -256 300 -48 lightning_rod[facing=south]
setblock -240 300 -48 lightning_rod[facing=south]
setblock -288 300 -32 lightning_rod[facing=south]
setblock -272 300 -32 lightning_rod[facing=south]
setblock -256 300 -32 lightning_rod[facing=south]
setblock -240 300 -32 lightning_rod[facing=south]
setblock -224 300 -32 lightning_rod[facing=south]
setblock -288 300 -16 lightning_rod[facing=south]
setblock -272 300 -16 lightning_rod[facing=south]
setblock -256 300 -16 lightning_rod[facing=south]
setblock -240 300 -16 lightning_rod[facing=south]
setblock -224 300 -16 lightning_rod[facing=south]
setblock -256 300 0 lightning_rod[facing=south]
setblock -240 300 0 lightning_rod[facing=south]

#Middle Island
setblock 48 300 16 lightning_rod[facing=south]
setblock 32 300 0 lightning_rod[facing=south]
setblock 48 300 0 lightning_rod[facing=south]
setblock 64 300 0 lightning_rod[facing=south]
setblock 80 300 0 lightning_rod[facing=south]
setblock 48 300 -16 lightning_rod[facing=south]
setblock 64 300 -16 lightning_rod[facing=south]
setblock 80 300 -16 lightning_rod[facing=south]
setblock 96 300 -16 lightning_rod[facing=south]
setblock 80 300 -32 lightning_rod[facing=south]
setblock 93 300 -12 lightning_rod[facing=south]
setblock 95 300 -12 lightning_rod[facing=south]
setblock 47 300 12 lightning_rod[facing=south]
setblock 45 300 12 lightning_rod[facing=south]

#Purple Ship
setblock 32 300 -64 lightning_rod[facing=south]
setblock 48 300 -64 lightning_rod[facing=south]
setblock 64 300 -64 lightning_rod[facing=south]
setblock 80 300 -64 lightning_rod[facing=south]
setblock 96 300 -64 lightning_rod[facing=south]
setblock 48 300 -48 lightning_rod[facing=south]
setblock 64 300 -48 lightning_rod[facing=south]
setblock 80 300 -48 lightning_rod[facing=south]
setblock 64 300 -80 lightning_rod[facing=south]

#Orange Ship
setblock 32 300 48 lightning_rod[facing=south]
setblock 48 300 48 lightning_rod[facing=south]
setblock 64 300 48 lightning_rod[facing=south]
setblock 80 300 48 lightning_rod[facing=south]
setblock 96 300 48 lightning_rod[facing=south]
setblock 48 300 32 lightning_rod[facing=south]
setblock 64 300 32 lightning_rod[facing=south]
setblock 80 300 32 lightning_rod[facing=south]
setblock 64 300 64 lightning_rod[facing=south]

#Outer Islands
setblock -16 300 256 lightning_rod[facing=south]
setblock 0 300 256 lightning_rod[facing=south]
setblock 112 300 256 lightning_rod[facing=south]
setblock 128 300 256 lightning_rod[facing=south]
setblock 144 300 256 lightning_rod[facing=south]
setblock 128 300 240 lightning_rod[facing=south]
setblock 144 300 240 lightning_rod[facing=south]
setblock -128 300 -160 lightning_rod[facing=south]
setblock -112 300 -160 lightning_rod[facing=south]
setblock -96 300 -160 lightning_rod[facing=south]
setblock -112 300 -176 lightning_rod[facing=south]
setblock -96 300 -176 lightning_rod[facing=south]
setblock 48 300 -256 lightning_rod[facing=south]
setblock 32 300 -256 lightning_rod[facing=south]
setblock 48 300 -240 lightning_rod[facing=south]
setblock 32 300 -240 lightning_rod[facing=south]
setblock 208 300 -176 lightning_rod[facing=south]
setblock 208 300 -160 lightning_rod[facing=south]
setblock 256 300 -96 lightning_rod[facing=south]
setblock 240 300 -96 lightning_rod[facing=south]
setblock 224 300 -96 lightning_rod[facing=south]
setblock 256 300 -80 lightning_rod[facing=south]
setblock 240 300 -80 lightning_rod[facing=south]
setblock 224 300 -80 lightning_rod[facing=south]
setblock 256 300 -64 lightning_rod[facing=south]
setblock 240 300 -64 lightning_rod[facing=south]
setblock 224 300 -64 lightning_rod[facing=south]
setblock 256 300 -48 lightning_rod[facing=south]
setblock 240 300 -48 lightning_rod[facing=south]
setblock 224 300 -48 lightning_rod[facing=south]
setblock -256 300 176 lightning_rod[facing=south]
setblock -256 300 192 lightning_rod[facing=south]
setblock -240 300 176 lightning_rod[facing=south]
setblock -240 300 192 lightning_rod[facing=south]
setblock -224 300 192 lightning_rod[facing=south]
setblock -384 300 -32 lightning_rod[facing=south]
setblock -400 300 -32 lightning_rod[facing=south]
setblock -384 300 -48 lightning_rod[facing=south]
setblock -400 300 -48 lightning_rod[facing=south]
setblock -384 300 -64 lightning_rod[facing=south]
setblock -400 300 -64 lightning_rod[facing=south]
setblock -384 300 -80 lightning_rod[facing=south]
setblock -400 300 -80 lightning_rod[facing=south]
setblock -400 300 -96 lightning_rod[facing=south]

scoreboard objectives remove fullInv

function game:forcestop
function lobby:customizer/open