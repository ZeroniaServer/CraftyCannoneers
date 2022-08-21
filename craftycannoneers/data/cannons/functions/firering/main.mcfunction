#> Functionality
execute as @e[type=marker,tag=RingOfFire] at @s run function cannons:firering/functionality

#> Gas Ignite (bubble + cloud)
execute as @e[type=armor_stand,tag=GasIgnite] at @s run function cannons:firering/ignitebubble
execute as @e[type=marker,tag=GasIgnite] at @s run function cannons:firering/ignitecloud

#> Cannon on fire
execute as @e[type=armor_stand,tag=CannonDisp,tag=OnFire] at @s run function cannons:firering/cannononfire