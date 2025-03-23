execute as @e[type=marker,tag=LightFlash] at @s run fill ~ ~ ~ ~ ~ ~ air replace light
kill @e[type=marker,tag=LightFlash]
execute as @e[type=item_display,tag=CannonDisp,tag=!Tutorial] at @s run function cannons:resetgunpowder
tag @e[type=interaction,tag=CannonVMain,tag=Charged,tag=!Tutorial] remove Charged
execute as @e[type=armor_stand,tag=cannonball,predicate=!cannons:safezones/tutorial] run function cannons:killcb
execute as @e[type=slime,tag=Weakpoint] run function arenaclear:kill
kill @e[type=marker,tag=Weakpoint]
kill @e[type=marker,tag=WeakpointLoc]
kill @e[type=marker,tag=LockSpawn]
execute as @e[type=armor_stand,tag=chest] run function chests:kill
execute as @e[type=chest_minecart,tag=lockedchest] run function arenaclear:kill
kill @e[type=area_effect_cloud,tag=ChestNotif]
kill @e[type=item,predicate=game:inarena]
kill @e[type=item_display,tag=EndFirework]
kill @e[type=arrow,predicate=!game:tutorialbounds]
kill @e[type=trident,predicate=!game:tutorialbounds]
kill @e[type=armor_stand,tag=GasBubble,predicate=!cannons:ships/tutorialfull]
kill @e[type=item_display,tag=GasBubble,predicate=!cannons:ships/tutorialfull]
kill @e[type=item_display,tag=gascloud,predicate=!cannons:ships/tutorialfull]
kill @e[type=marker,tag=GasCloud,predicate=!cannons:ships/tutorialfull]
kill @e[type=bat,predicate=!cannons:ships/tutorialfull]
kill @e[type=marker,tag=RingOfFire,predicate=!cannons:ships/tutorialfull]
kill @e[type=area_effect_cloud,tag=GPDispText,tag=!Tutorial]
kill @e[type=area_effect_cloud,tag=CannonNametag,tag=!Tutorial]
kill @e[type=interaction,tag=LChest]
kill @e[type=item_display,tag=BlastBarrel]
kill @e[type=interaction,tag=BlastBarrel]
execute as @e[type=bat,tag=BlastBarrel] run function arenaclear:kill
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
kill @e[type=marker,tag=gravedata]
kill @e[type=marker,tag=CargoEntity]
kill @e[type=splash_potion,tag=Bomb]
kill @e[type=item_display,tag=Bomb]
kill @e[type=interaction,tag=ShootPrevention]
scoreboard players set $total crabs 0
scoreboard players set $curr crabs 0

function arenaclear:villagertrades
function arenaclear:fakeairclear
function arenaclear:teamchests
function arenaclear:boatvehicles
function arenaclear:cannons

function game:setreadysign

summon marker 39 -40 -68 {Tags:["FireRemover"]}
summon marker 34 -40 43 {Tags:["FireRemover"]}
execute as @e[type=marker,tag=FireRemover] at @s run function cannons:firering/extinguishloop

schedule function arenaclear:shipplacement/orange1 5t