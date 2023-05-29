tag @s add current
execute store result score @s TrapDurability run data get entity @s data.durability
execute as @a[scores={spawnPlaceable=1..},tag=crabTrapMainhand,gamemode=!creative,limit=1,sort=nearest] run function weapons:crabtrap/givemainhand
execute as @a[scores={spawnPlaceable=1..},tag=crabTrapOffhand,gamemode=!creative,limit=1,sort=nearest] run function weapons:crabtrap/giveoffhand
kill @s