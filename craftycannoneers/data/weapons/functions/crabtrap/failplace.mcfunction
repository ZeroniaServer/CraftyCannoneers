execute as @a[scores={spawnPlaceable=1..},tag=crabTrapMainhand,gamemode=!creative,limit=1,sort=nearest] run function weapons:barrel/givemainhand
execute as @a[scores={spawnPlaceable=1..},tag=crabTrapOffhand,gamemode=!creative,limit=1,sort=nearest] run function weapons:barrel/giveoffhand
kill @s