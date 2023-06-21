#> Fill gunpowder
#Left
execute if entity @s[tag=FillLeft,tag=HoldGP] at @e[type=item_display,tag=GPDispL,scores={CmdData=..6},limit=1,sort=nearest] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillLeft,tag=HoldGP,team=!Lobby] if entity @e[type=item_display,tag=GPDispL,scores={CmdData=..6},limit=1,sort=nearest] run item modify entity @s[gamemode=!creative] weapon.mainhand game:reducecount
execute if entity @s[tag=FillLeft,tag=HoldGP] run scoreboard players add @e[type=item_display,tag=GPDispL,scores={CmdData=..6},limit=1,sort=nearest] CmdData 1
execute if entity @s[tag=FillLeft,tag=HoldGP] run function cannons:updategp
execute if entity @s[tag=FillLeft,tag=HoldGP] run tag @e[type=item_display,tag=GPDispL,limit=1,sort=nearest] add DisplayGP
execute if entity @s[tag=FillLeft,tag=HoldGP] as @e[type=item_display,tag=GPDispL,limit=1,sort=nearest] at @s run scoreboard players set @e[type=item_display,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute if entity @s[tag=FillLeft,tag=HoldGP] as @e[type=item_display,tag=GPDispL,limit=1,sort=nearest] at @s run tag @e[type=item_display,tag=GPDispR,limit=1,sort=nearest] add DisplayGP

#Right
execute if entity @s[tag=FillRight,tag=HoldGP] at @e[type=item_display,tag=GPDispR,scores={CmdData=..6},limit=1,sort=nearest] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillRight,tag=HoldGP,team=!Lobby] if entity @e[type=item_display,tag=GPDispR,scores={CmdData=..6},limit=1,sort=nearest] run item modify entity @s[gamemode=!creative] weapon.mainhand game:reducecount
execute if entity @s[tag=FillRight,tag=HoldGP] run scoreboard players add @e[type=item_display,tag=GPDispR,scores={CmdData=..6},limit=1,sort=nearest] CmdData 1
execute if entity @s[tag=FillRight,tag=HoldGP] run function cannons:updategp
execute if entity @s[tag=FillRight,tag=HoldGP] run tag @e[type=item_display,tag=GPDispR,limit=1,sort=nearest] add DisplayGP
execute if entity @s[tag=FillRight,tag=HoldGP] as @e[type=item_display,tag=GPDispR,limit=1,sort=nearest] at @s run scoreboard players set @e[type=item_display,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute if entity @s[tag=FillRight,tag=HoldGP] as @e[type=item_display,tag=GPDispR,limit=1,sort=nearest] at @s run tag @e[type=item_display,tag=GPDispL,limit=1,sort=nearest] add DisplayGP

tag @s remove FillLeft
tag @s remove FillRight