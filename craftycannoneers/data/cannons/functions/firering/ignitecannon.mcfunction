execute at @s[tag=!FireCannon] if entity @e[type=item_display,tag=!CannonDisp,scores={CmdData=1..},limit=1,distance=..1.5] run tag @s add FireBlank
execute at @s[tag=!FireCannon] if entity @e[type=item_display,tag=!CannonDisp,scores={CmdData=1..},limit=1,distance=..1.5] run scoreboard players set @e[type=item_display,tag=GPDispL,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @s[tag=!FireCannon] if entity @e[type=item_display,tag=!CannonDisp,limit=1,distance=..1.5] run scoreboard players set @e[type=item_display,tag=GPDispR,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @s[tag=!FireCannon] run function cannons:updategp
data merge entity @e[type=interaction,tag=CannonVLeft,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:1b}
data merge entity @e[type=interaction,tag=CannonVRight,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:1b}