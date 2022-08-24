scoreboard players set $current CannonID 0

execute as @e[type=marker,tag=LightFlash] at @s run fill ~ ~ ~ ~ ~ ~ air replace light
kill @e[type=marker,tag=LightFlash]
execute as @e[type=armor_stand,tag=CannonDisp,tag=!Tutorial] at @s run function cannons:resetgunpowder
kill @e[type=armor_stand,tag=cannonball,predicate=!cannons:safezones/tutorial]
tp @e[type=#game:weakpoint,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]
kill @e[type=marker,tag=WeakpointLoc]
kill @e[type=marker,tag=LockSpawn]
kill @e[type=armor_stand,tag=chestdisplay]
kill @e[type=chest_minecart,tag=teamchest]
tp @e[type=#game:chest,tag=chest] 0 -1000 0
kill @e[type=#game:chest,tag=chest]
kill @e[type=area_effect_cloud,tag=ChestNotif]
kill @e[type=item,predicate=!game:tutorialbounds]
kill @e[type=armor_stand,tag=EndFirework]
kill @e[type=arrow,predicate=!game:tutorialbounds]
kill @e[type=trident,predicate=!game:tutorialbounds]
kill @e[type=armor_stand,tag=GasBubble,predicate=!cannons:ships/tutorial]
kill @e[type=armor_stand,tag=GasAS,predicate=!cannons:ships/tutorial]
kill @e[type=bat,predicate=!cannons:ships/tutorial]
kill @e[type=area_effect_cloud,tag=GPDispText,tag=!Tutorial]
kill @e[type=area_effect_cloud,tag=CannonNametag,tag=!Tutorial]

function arenaclear:boatvehicles
function arenaclear:shipplacement

function game:setreadysign