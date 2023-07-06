execute if entity @e[type=item_display,tag=GPHolder,scores={CmdData=1..},limit=1,distance=..1.5] run tag @s add FireBlank
scoreboard players set @e[type=item_display,tag=GPDispL,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
scoreboard players set @e[type=item_display,tag=GPDispR,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @e[type=item_display,tag=GPDispL,distance=..1.5,limit=1,sort=nearest] run data modify entity @e[type=interaction,tag=CannonVLeft,distance=..2,limit=1,sort=nearest] response set value 0b
execute at @e[type=item_display,tag=GPDispR,distance=..1.5,limit=1,sort=nearest] run data modify entity @e[type=interaction,tag=CannonVRight,distance=..2,limit=1,sort=nearest] response set value 0b
data modify entity @e[type=interaction,tag=CannonVMain,distance=..2,limit=1,sort=nearest] response set value 0b
function cannons:updategp