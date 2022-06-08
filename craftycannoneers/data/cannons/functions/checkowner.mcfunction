scoreboard players operation $currentcheck playerUUID = @s playerUUID

execute as @e[type=armor_stand,tag=CannonDisp,tag=!Owned,distance=..3,limit=1,sort=nearest] if score @s playerUUID matches 0 run tag @s add NoOwner
execute as @e[type=armor_stand,tag=CannonDisp,tag=!NoOwner,distance=..3,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run tag @s add Owned

execute as @e[type=armor_stand,tag=Owned,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute if entity @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run tag @s add NewClaim
execute as @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
execute as @e[type=armor_stand,tag=Owned,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
tag @e[type=armor_stand,tag=NoOwner] remove NoOwner
tag @e[type=armor_stand,tag=Owned] remove Owned

execute as @e[type=armor_stand,tag=CannonDisp] if score $currentcannon playerUUID = @s playerUUID run tag @s add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVMain,limit=1,sort=nearest,distance=..2] add CurrentCheck

execute unless entity @e[type=armor_stand,tag=CurrentCheck] if entity @e[type=armor_stand,tag=CannonDisp,tag=!CurrentCheck,distance=..3] run tellraw @s {"text":"This Cannon is currently occupied!","italic":true,"color":"red"}
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillLeft
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillRight
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillCB

execute if entity @e[type=armor_stand,tag=NewClaim,tag=CurrentCheck] run function cannons:unclaimmultiple

scoreboard players set @e[type=armor_stand,tag=CurrentCheck,scores={cannonclaim=4..120}] cannonclaim 3

execute unless entity @s[tag=!FillLeft,tag=!FillRight] run function cannons:usegunpowder
execute if entity @s[tag=FillCB] run function cannons:usecannonball

#Remove tags
tag @s remove HoldGP
tag @s remove FillLeft
tag @s remove FillRight
tag @s remove FillCB

tag @e[type=armor_stand,tag=CurrentCheck] remove CurrentCheck

scoreboard players reset $currentcannon playerUUID
scoreboard players reset $currentcheck playerUUID