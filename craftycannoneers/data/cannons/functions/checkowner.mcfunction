scoreboard players operation $currentcheck playerUUID = @s playerUUID

execute as @e[type=armor_stand,tag=CannonDisp,tag=!Owned,distance=..3,limit=1,sort=nearest] if score @s playerUUID matches 0 run tag @s add NoOwner
execute as @e[type=armor_stand,tag=CannonDisp,tag=!NoOwner,distance=..3,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run tag @s add Owned

execute if entity @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=Owned,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
execute as @e[type=armor_stand,tag=Owned,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
tag @e[type=armor_stand,tag=NoOwner] remove NoOwner
tag @e[type=armor_stand,tag=Owned] remove Owned

execute as @e[type=armor_stand,tag=CannonDisp] if score $currentcannon playerUUID = @s playerUUID run tag @s add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVMain,limit=1,sort=nearest,distance=..2] add CurrentCheck

execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillLeft
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillRight
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillCB

function cannons:unclaimmultiple

scoreboard players set @e[tag=CurrentCheck,scores={cannonclaim=4..120}] cannonclaim 3


tag @e[tag=CurrentCheck] remove CurrentCheck

scoreboard players reset $currentcannon playerUUID
scoreboard players reset $currentcheck playerUUID