tag @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..3] add NewClaim

scoreboard players set $cannonamount playerUUID 0
scoreboard players set $hascannon playerUUID 0
scoreboard players operation $hascannon playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=CannonDisp] if score @s playerUUID = $hascannon playerUUID run scoreboard players add $cannonamount playerUUID 1

execute if score $cannonamount playerUUID matches 2.. as @e[type=armor_stand,tag=CannonDisp,tag=!NewClaim] if score @s playerUUID = $hascannon playerUUID run scoreboard players set @s cannonclaim 125
scoreboard players reset $hascannon playerUUID
scoreboard players reset $cannonamount playerUUID

tag @e[type=armor_stand,tag=NewClaim] remove NewClaim