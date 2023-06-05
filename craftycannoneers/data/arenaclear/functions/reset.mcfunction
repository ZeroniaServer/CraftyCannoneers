execute as @e[type=marker,tag=LightFlash] at @s run fill ~ ~ ~ ~ ~ ~ air replace light
kill @e[type=marker,tag=LightFlash]
execute as @e[type=armor_stand,tag=CannonDisp,tag=!Tutorial] at @s run function cannons:resetgunpowder
tag @e[type=villager,tag=CannonVMain,tag=Charged,tag=!Tutorial] remove Charged
kill @e[type=armor_stand,tag=cannonball,predicate=!cannons:safezones/tutorial]
kill @e[type=armor_stand,tag=ChainAnchor,predicate=!game:tutorialbounds]
execute as @e[type=slime,tag=Weakpoint] run function arenaclear:kill
kill @e[type=marker,tag=Weakpoint]
kill @e[type=marker,tag=WeakpointLoc]
kill @e[type=marker,tag=LockSpawn]
kill @e[type=armor_stand,tag=chest]
execute as @e[type=hopper_minecart,tag=chest] run function arenaclear:kill
execute as @e[type=chest_minecart,tag=chest] run function arenaclear:kill
kill @e[type=area_effect_cloud,tag=ChestNotif]
kill @e[type=item,predicate=game:inarena]
kill @e[type=armor_stand,tag=EndFirework]
kill @e[type=arrow,predicate=!game:tutorialbounds]
kill @e[type=trident,predicate=!game:tutorialbounds]
kill @e[type=armor_stand,tag=GasBubble,predicate=!cannons:ships/tutorial]
kill @e[type=armor_stand,tag=GasAS,predicate=!cannons:ships/tutorial]
kill @e[type=bat,predicate=!cannons:ships/tutorial]
kill @e[type=area_effect_cloud,tag=GPDispText,tag=!Tutorial]
kill @e[type=area_effect_cloud,tag=CannonNametag,tag=!Tutorial]
kill @e[type=marker,tag=RingOfFire,predicate=!cannons:ships/tutorial]
kill @e[type=interaction,tag=LChest]
kill @e[type=armor_stand,tag=BlastBarrel]
execute as @e[type=villager,tag=BlastBarrel] run function arenaclear:kill
kill @e[type=marker,tag=bbarrel]
kill @e[type=marker,tag=StormEntity]
execute as @e[type=drowned,tag=SharkEntity] run function arenaclear:kill
execute as @e[type=cod,tag=SharkEntity] run function arenaclear:kill
execute as @e[type=endermite,tag=CrabEntity] run function arenaclear:kill
execute as @e[type=cat,tag=CrabEntity] run function arenaclear:kill
kill @e[type=item_display,tag=CrabEntity]
execute as @e[type=item_display,tag=CargoBarrel] run function game:modifiers/lostcargo/killbarrel
kill @e[type=item_display,tag=CrabTrap]
kill @e[type=interaction,tag=CrabTrap]
scoreboard players set $total crabs 0
scoreboard players set $curr crabs 0

function arenaclear:fakeairclear
function arenaclear:boatvehicles
function arenaclear:shipplacement
function arenaclear:teamchests

function game:setreadysign