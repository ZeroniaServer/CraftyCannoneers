execute as @e[type=armor_stand,tag=CannonDisp] unless score @s playerUUID matches 0 run scoreboard players add @s cannonclaim 1
execute as @e[type=armor_stand,tag=CannonDisp,tag=OnFire,scores={cannonclaim=1..120}] run scoreboard players set @s cannonclaim 125

#add nametag
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=3}] at @s run function cannons:setcannonname

execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s run kill @e[type=area_effect_cloud,tag=CannonNametag,limit=1,sort=nearest,distance=..3]
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s run kill @e[type=area_effect_cloud,tag=GPDispText,limit=2,sort=nearest,distance=..3]
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] run scoreboard players set @s playerUUID 0
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=CannonDisp,tag=Tutorial,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run scoreboard players set @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[type=armor_stand,tag=CannonDisp,tag=Tutorial,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run scoreboard players set @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[type=armor_stand,tag=CannonDisp,tag=Tutorial,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run item replace entity @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] armor.head with air
execute as @e[type=armor_stand,tag=CannonDisp,tag=Tutorial,scores={cannonclaim=120..}] at @s if score @s playerUUID matches 0 run item replace entity @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] armor.head with air
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=120..}] if score @s playerUUID matches 0 run scoreboard players reset @s cannonclaim


#> Unclaim for distance/leave game
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=1..120}] run function cannons:hasowner