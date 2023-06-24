forceload add -427 -25 -452 -85

#> New Settings Map icons (TODO fully replace with item displays)
tp @e[type=armor_stand,tag=ConfirmIcon] -55 -23.5 9
kill @e[type=armor_stand,tag=ModifierIcons]
kill @e[type=armor_stand,tag=DaytimeIcon]
summon armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModifModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -53 -21.4 9 {Tags:["LobbyEntity","NoTracersIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -54 -21.4 9 {Tags:["LobbyEntity","WildlifeIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -55 -21.4 9 {Tags:["LobbyEntity","SeaStormsIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -53 -22.4 9 {Tags:["LobbyEntity","LostCargoIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -54 -22.4 9 {Tags:["LobbyEntity","GraveRobberyIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -55 -22.4 9 {Tags:["LobbyEntity","BoatCannonsIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon armor_stand -54 -21.3 9 {Tags:["LobbyEntity","DaytimeIcon"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}

fill -53 -24 9 -55 -22 9 air

#> Settings Map bench
setblock -53 -25 8 oak_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
setblock -54 -25 8 oak_slab[type=top,waterlogged=false]
setblock -55 -25 8 oak_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]

#scores
scoreboard objectives add copperStrike dummy
scoreboard objectives add sharktarget dummy
scoreboard objectives add crabtime dummy
scoreboard objectives add crabmode dummy
scoreboard players set $NoTracers CmdData 0
scoreboard players set $Wildlife CmdData 0
scoreboard players set $Storms CmdData 0
scoreboard players set $LostCargo CmdData 0
scoreboard players set $GraveRobbery CmdData 0
scoreboard players set $BoatCannons CmdData 0
scoreboard players set $Daytime CmdData 0
scoreboard players reset @e[type=armor_stand,tag=Parrot,limit=1] CmdData

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"6","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 6

function lobby:customizer/open

tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.0","color":"green"}]}]
scoreboard players set $WorldVersion CmdData 1100
scoreboard players set $updating CmdData 0

bossbar remove updatebar
bossbar set lobbybar visible true

execute as @a at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0.8