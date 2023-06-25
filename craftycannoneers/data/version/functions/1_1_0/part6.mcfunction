forceload add -427 -25 -452 -85

#> New Settings Map display entities
kill @e[type=glow_item_frame,tag=MapEntity]
execute unless entity @e[type=item_display,tag=MapEntity,limit=1] run summon item_display -53.5 -22.5 10.03125 {Tags:["MapEntity"],brightness:{block:15,sky:15},item:{id:"diamond_hoe",tag:{CustomModelData:76},Count:1b},item_display:"fixed",transformation:{translation:[0.0f,0.0f,-0.03f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

kill @e[type=armor_stand,tag=LobbyEntity]

#Game Time
execute unless entity @e[type=item_display,tag=TimeIcon,limit=1] positioned -52.5 -21.3 9.5 run summon item_display ~ ~ ~ {Tags:["TimeIcon","LobbyEntity"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Ship Health
execute unless entity @e[type=item_display,tag=HPIcon,limit=1] positioned -54.5 -21.3 9.5 run summon item_display ~ ~ ~ {Tags:["HPIcon","LobbyEntity"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Confirm Settings
execute unless entity @e[type=item_display,tag=ConfirmIcon,limit=1] positioned -54.5 -23.5 9.5 run summon item_display ~ ~ ~ {Tags:["ConfirmIcon","LobbyEntity"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Restore Defaults
execute unless entity @e[type=item_display,tag=DefaultsIcon,limit=1] positioned -52.5 -23.5 9.5 run summon item_display ~ ~ ~ {Tags:["DefaultsIcon","LobbyEntity"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Daytime
execute unless entity @e[type=item_display,tag=DaytimeIcon,limit=1] positioned -53.5 -21.3 9 run summon item_display ~ ~ ~ {Tags:["DaytimeIcon","LobbyEntity"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Modifiers
execute unless entity @e[type=item_display,tag=ModiIcon,limit=1] positioned -54 -23.5 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","ModiIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}
execute unless entity @e[type=item_display,tag=ModifModiIcon,limit=1] positioned -54 -23.5 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","ModifModiIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#No Tracers
execute unless entity @e[type=item_display,tag=NoTracersIcon,limit=1] positioned -53 -21.4 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","NoTracersIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Wildlife
execute unless entity @e[type=item_display,tag=WildlifeIcon,limit=1] positioned -54 -21.4 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","WildlifeIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Sea Storms
execute unless entity @e[type=item_display,tag=SeaStormsIcon,limit=1] positioned -55 -21.4 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","SeaStormsIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Lost Cargo
execute unless entity @e[type=item_display,tag=LostCargoIcon,limit=1] positioned -53 -22.4 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","LostCargoIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Grave Robbery
execute unless entity @e[type=item_display,tag=GraveRobberyIcon,limit=1] positioned -54 -22.4 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","GraveRobberyIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

#Boat Cannons
execute unless entity @e[type=item_display,tag=BoatCannonsIcon,limit=1] positioned -55 -22.4 9 run summon item_display ~ ~ ~ {Tags:["LobbyEntity","BoatCannonsIcon","ModifierIcons"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},width:1f,height:1f}

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

execute as @a at @s run playsound updatecomplete master @s ~ ~ ~ 1 0.8