execute as @a[scores={spawnPlaceable=1..},tag=barrelMainhand,gamemode=!creative,limit=1,sort=nearest] run function weapons:barrel/givemainhand
execute as @a[scores={spawnPlaceable=1..},tag=barrelOffhand,gamemode=!creative,limit=1,sort=nearest] run function weapons:barrel/giveoffhand
kill @s