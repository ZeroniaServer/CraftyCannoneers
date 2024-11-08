scoreboard players set $ModiMapActive CmdData 0
fill -53 -24 9 -55 -22 9 air

scoreboard players reset @a modisigns
scoreboard players reset @a moditimer
effect clear @a[tag=ModiOwner] glowing
tag @a remove ModiOwner

scoreboard players operation $PurpleHP CmdData = $ShipHP CmdData
scoreboard players operation $OrangeHP CmdData = $ShipHP CmdData

scoreboard players operation $ticks CmdData = $TimeLimit CmdData
scoreboard players operation $ticks CmdData *= $1200 CmdData
scoreboard players add $ticks CmdData 20

execute if score $Daytime CmdData matches 0 run time set day
execute if score $Daytime CmdData matches 1 run time set 12725
execute if score $Daytime CmdData matches 2 run time set midnight

title @a title {"translate":"customizer.confirmed","underlined":true,"color":"dark_green"}
title @a subtitle [{"translate":"chat.the_game","color":"green","with":[{"translate":"chat.ready_to_play","color":"green"}]}]
execute as @a at @s run playsound confirmsettings master @s ~ ~ ~ 1 1.5
function lobby:customizer/gameinfo

scoreboard players set $gamestate CmdData 0

item replace entity @e[type=item_display,tag=LobbyEntity,tag=!CancelMatch] container.0 with air

item replace entity @e[type=item_display,tag=MapEntity,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[34.0f]}]

execute as @e[type=interaction,tag=SettingsInteraction] run data merge entity @s {width:0f,height:0f}

scoreboard players reset $orangelock CmdData
scoreboard players reset $purplelock CmdData
execute as @e[type=marker,tag=joinpad] at @s run function lobby:joinpads/unlock
scoreboard players reset @e[type=marker,tag=joinpad] CmdData

execute unless score $mcancel CmdData matches 1 run function arenaclear:reset
function arenaclear:boatvehicles
scoreboard players reset $mcancel CmdData
function lobby:customizer/cancel/begin