forceload add -427 -25 -452 -85

#> New modifier options stuff
#icons
tp @e[type=armor_stand,tag=ConfirmIcon] -55 -23.5 9
kill @e[type=armor_stand,tag=ModifierIcons]
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModifModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -53 -21.4 9 {Tags:["LobbyEntity","NoTracersIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -21.4 9 {Tags:["LobbyEntity","SharksIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -55 -21.4 9 {Tags:["LobbyEntity","SeaStormsIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -53 -22.4 9 {Tags:["LobbyEntity","LostCargoIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}

fill -53 -24 9 -55 -22 9 air

#scores
scoreboard objectives add copperStrike dummy
scoreboard objectives add sharktarget dummy
scoreboard players set $NoTracers CmdData 0
scoreboard players set $Sharks CmdData 0
scoreboard players set $Storms CmdData 0
scoreboard players set $LostCargo CmdData 0
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