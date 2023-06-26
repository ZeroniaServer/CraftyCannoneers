execute at @s[tag=!FireCannon] if entity @e[type=item_display,tag=GPHolder,scores={CmdData=1..},limit=1,distance=..1.5] run tag @s add FireBlank
execute at @s[tag=!FireCannon] run scoreboard players set @e[type=item_display,tag=GPDispL,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @s[tag=!FireCannon] run scoreboard players set @e[type=item_display,tag=GPDispR,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @s[tag=!FireCannon] run function cannons:updategp