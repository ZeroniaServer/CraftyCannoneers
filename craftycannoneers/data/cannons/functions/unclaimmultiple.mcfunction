scoreboard players set $cannonamount playerUUID 0
scoreboard players set $hascannon playerUUID 0
scoreboard players operation $hascannon playerUUID = @s playerUUID
execute as @e[type=item_display,tag=CannonDisp,tag=!FireCannon] if score @s playerUUID = $hascannon playerUUID run scoreboard players add $cannonamount playerUUID 1

execute if score $cannonamount playerUUID matches 2.. as @e[type=item_display,tag=CannonDisp,tag=!NewClaim] if score @s playerUUID = $hascannon playerUUID run scoreboard players set @s cannonclaim 125
execute if score $cannonamount playerUUID matches 2.. as @e[type=item_display,tag=CannonDisp,tag=!NewClaim] if score @s playerUUID = $hascannon playerUUID run tag @s remove CurrentCheck
scoreboard players reset $hascannon playerUUID
scoreboard players reset $cannonamount playerUUID

tag @e[type=item_display,tag=NewClaim] remove NewClaim