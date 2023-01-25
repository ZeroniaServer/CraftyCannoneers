kill @e[type=armor_stand,tag=ModifierIcons]
function arenaclear:traders
function arenaclear:cannons
function entityid:flush
fill -53 -24 9 -55 -22 9 air
tellraw @a [{"translate":"game.applied_updates","color":"green"},{"translate":"game.crafty","color":"green"},{"translate":"game.cannoneers","color":"green"},{"text":" v1.1.0","color":"green"}]
scoreboard players set $WorldVersion CmdData 1100
tp @e[type=armor_stand,tag=ConfirmIcon] -54 -23.5 9

#> New modifier options stuff
#icons
summon minecraft:armor_stand -55 -23.5 9 {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
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
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","translate":"game.click_here"}',Text3:'{"extra":[{"color":"#55FFFF","translate":"game.leave"},{"color":"#00CCCC","translate":"game.your_team"}],"text":""}',Text4:'{"text":""}'}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","translate":"game.click_here"}',Text3:'{"extra":[{"color":"#55FFFF","translate":"game.leave"},{"color":"#00CCCC","translate":"game.your_team"}],"text":""}',Text4:'{"text":""}'}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign
setblock -260 -24 -59 air
setblock -260 -24 -59 jungle_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":""}',Text2:'{"translate":"tutorial.combat_area.weapons_sign.1"}',Text3:'{"translate":"tutorial.combat_area.weapons_sign.2"}',Text4:'{"text":""}'}
setblock -58 -24 0 air
setblock -58 -24 0 spruce_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":""}',Text2:'{"translate":"lobby.jail_sign.1"}',Text3:'{"translate":"lobby.jail_sign.2"}',Text4:'{"text":""}'}

#> Lobby labels
data merge entity @e[type=area_effect_cloud,tag=TutorialWarp,tag=ToIsland,limit=1] {CustomName:'{"translate":"tutorial.warp.to_island","color":"aqua","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=TutorialWarp,tag=FromIsland,limit=1] {CustomName:'{"translate":"tutorial.warp.from_island","color":"aqua","bold":true}'}
kill @e[type=area_effect_cloud,tag=Basic,tag=TutorialText]
summon area_effect_cloud -46.5 -20.5 -14.5 {Tags:["LobbyText","TutorialText"],RadiusPerTick:0.0f,Particle:"minecraft:entity_effect",Duration:2000000000,CustomNameVisible:1b,Radius:0.0f,CustomName:'{"bold":true,"color":"aqua","translate":"tutorial.training_island"}',RadiusOnUse:0.0f}
summon area_effect_cloud -46.5 -20.8 -14.5 {Tags:["LobbyText","TutorialText2"],RadiusPerTick:0.0f,Particle:"minecraft:entity_effect",Duration:2000000000,CustomNameVisible:1b,Radius:0.0f,CustomName:'{"italic":true,"color":"yellow","translate":"lobby.label.tutorial"}',RadiusOnUse:0.0f}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=ParkourText,limit=1] {CustomName:'{"translate":"lobby.label.parkour.1","color":"aqua","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=ParkourText2,limit=1] {CustomName:'{"translate":"lobby.label.parkour.2","color":"yellow","italic":true}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=Madeby,limit=1] {CustomName:'{"color":"gray","extra":[{"color":"green","text":"Zeronia"}],"translate":"lobby.label.credits.1"}'}
data merge entity @e[type=area_effect_cloud,tag=LobbyText,tag=Clickon,limit=1] {CustomName:'{"italic":true,"color":"yellow","translate":"lobby.label.credits.2"}'}

function game:forcestop
function lobby:customizer/open