#> Take gunpowder
execute if entity @s[tag=FillLeft] if entity @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4,scores={CmdData=1..}] run loot give @s[team=!Lobby,gamemode=!creative] loot weapons:gunpowder
execute if entity @s[tag=FillLeft] at @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillLeft] run scoreboard players remove @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4,scores={CmdData=1..}] CmdData 1
execute if entity @s[tag=FillLeft] run function cannons:updategp
execute if entity @s[tag=FillLeft] as @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4] run tag @s add DisplayGP
execute if entity @s[tag=FillLeft] as @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4] at @s run tag @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4] add DisplayGP
execute if entity @s[tag=FillLeft] as @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4] at @s run scoreboard players set @e[type=item_display,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1

execute if entity @s[tag=FillRight] if entity @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4,scores={CmdData=1..}] run loot give @s[team=!Lobby,gamemode=!creative] loot weapons:gunpowder
execute if entity @s[tag=FillRight] at @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute if entity @s[tag=FillRight] run scoreboard players remove @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4,scores={CmdData=1..}] CmdData 1
execute if entity @s[tag=FillRight] as @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4] run tag @s add DisplayGP
execute if entity @s[tag=FillRight] as @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4] at @s run tag @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..1.4] add DisplayGP
execute if entity @s[tag=FillRight] as @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..1.4] at @s run scoreboard players set @e[type=item_display,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute if entity @s[tag=FillRight] run function cannons:updategp