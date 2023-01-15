fill -53 -24 9 -55 -22 9 air

scoreboard players reset @a modisigns
scoreboard players reset @a moditimer
tag @a remove ModiOwner

scoreboard players operation $PurpleHP CmdData = $ShipHP CmdData
scoreboard players operation $OrangeHP CmdData = $ShipHP CmdData

scoreboard players operation $ticks CmdData = $TimeLimit CmdData
scoreboard players operation $ticks CmdData *= $1200 CmdData
scoreboard players add $ticks CmdData 20

title @a title {"translate":"customizer.confirmed","underlined":true,"color":"dark_green"}
title @a subtitle {"translate":"customizer.ready","color":"green"}
execute as @a at @s run playsound confirmsettings master @s ~ ~ ~ 1 1.5
execute as @a run function lobby:customizer/gameinfo

scoreboard players set $gamestate CmdData 0

item replace entity @e[type=armor_stand,tag=LobbyEntity] armor.head with air

item replace entity @e[type=glow_item_frame,tag=MapEntity,limit=1] container.0 with diamond_hoe{CustomModelData:34}

tag @e[type=marker,tag=joinpad] remove Locked
scoreboard players reset @e[type=marker,tag=joinpad] CmdData

function arenaclear:reset