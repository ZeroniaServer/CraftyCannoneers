execute as @a[scores={spawnBarrel=1..},tag=barrelMainhand,limit=1,sort=nearest] run function weapons:barrel/givemainhand
execute as @a[scores={spawnBarrel=1..},tag=barrelOffhand,limit=1,sort=nearest] run function weapons:barrel/giveoffhand
kill @s