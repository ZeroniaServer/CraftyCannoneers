kill @e[type=armor_stand,tag=ModifierIcons]
function arenaclear:traders
function arenaclear:cannons
function entityid:flush
fill -53 -24 9 -55 -22 9 air
tellraw @a [{"text":"Successfully applied updates from Crafty Cannoneers v1.1.0","color":"green"}]
scoreboard players set $WorldVersion CmdData 1100
tp @e[type=armor_stand,tag=ConfirmIcon] -54 -23.5 9


summon minecraft:armor_stand -55 -23.5 9 {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}
summon minecraft:armor_stand -54 -23.5 9 {Tags:["LobbyEntity","ModifModiIcon","ModifierIcons"],NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b}


function game:forcestop
function lobby:customizer/open