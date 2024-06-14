scoreboard players set @e[type=item_display,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
scoreboard players set @e[type=item_display,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
tag @e[type=interaction,distance=..2,tag=CannonVMain,tag=Charged,tag=Tutorial] remove Charged
execute as @e[type=interaction,distance=..3,tag=Tutorial] run data modify entity @s response set value 1b
item replace entity @e[type=item_display,tag=GPDispL,distance=..2,limit=1,sort=nearest] container.0 with air
item replace entity @e[type=item_display,tag=GPDispR,distance=..2,limit=1,sort=nearest] container.0 with air