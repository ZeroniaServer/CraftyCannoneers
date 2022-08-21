execute at @s[tag=!FireCannon] if entity @e[type=armor_stand,tag=!CannonDisp,scores={CmdData=1..},distance=..1.5] run tag @s add FireBlank
execute at @s[tag=!FireCannon] if entity @e[type=armor_stand,tag=!CannonDisp,scores={CmdData=1..},distance=..1.5] run scoreboard players set @e[type=armor_stand,tag=GPDispL,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @s[tag=!FireCannon] if entity @e[type=armor_stand,tag=!CannonDisp,distance=..1.5] run scoreboard players set @e[type=armor_stand,tag=GPDispR,scores={CmdData=1..},distance=..1.5,limit=1,sort=nearest] CmdData 0
execute at @s[tag=!FireCannon] run function cannons:updategp
data merge entity @e[type=villager,tag=CannonVLeft,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:1b}
data merge entity @e[type=villager,tag=CannonVRight,distance=..1.5,limit=1,sort=nearest] {HasVisualFire:1b}