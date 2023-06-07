#> Fill gunpowder
#Left
execute if entity @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..1] at @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillLeft,tag=HoldGP,team=!Lobby] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..1] run item modify entity @s[gamemode=!creative] weapon.mainhand game:reducecount
execute if entity @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..1] run scoreboard players add @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] CmdData 1
execute if entity @s[tag=FillLeft,tag=HoldGP] run function cannons:updategp
execute if entity @s[tag=FillLeft,tag=HoldGP] run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] add DisplayGP
execute if entity @s[tag=FillLeft,tag=HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute if entity @s[tag=FillLeft,tag=HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] add DisplayGP

#Right
execute if entity @s[tag=FillRight,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..1] at @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillRight,tag=HoldGP,team=!Lobby] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..1] run item modify entity @s[gamemode=!creative] weapon.mainhand game:reducecount
execute if entity @s[tag=FillRight,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..1] run scoreboard players add @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] CmdData 1
execute if entity @s[tag=FillRight,tag=HoldGP] run function cannons:updategp
execute if entity @s[tag=FillRight,tag=HoldGP] run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] add DisplayGP
execute if entity @s[tag=FillRight,tag=HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute if entity @s[tag=FillRight,tag=HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] at @s run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] add DisplayGP

#> Take gunpowder
execute if entity @s[tag=FillLeft,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] run loot give @s[team=!Lobby,gamemode=!creative] loot weapons:gunpowder
execute if entity @s[tag=FillLeft,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillLeft,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] CmdData 1
execute if entity @s[tag=FillLeft,tag=!HoldGP] run function cannons:updategp
execute if entity @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] run tag @s add DisplayGP
execute if entity @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1] add DisplayGP
execute if entity @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1

execute if entity @s[tag=FillRight,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] run loot give @s[team=!Lobby,gamemode=!creative] loot weapons:gunpowder
execute if entity @s[tag=FillRight,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillRight,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..1,scores={CmdData=1..}] CmdData 1
execute if entity @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] run tag @s add DisplayGP
execute if entity @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..1] add DisplayGP
execute if entity @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute if entity @s[tag=FillRight,tag=!HoldGP] run function cannons:updategp