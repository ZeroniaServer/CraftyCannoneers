execute as @e[type=item_display,tag=BlastBarrel,distance=..1,limit=1,sort=nearest] run function weapons:barrel/name
kill @e[type=interaction,tag=BlastBarrel,distance=..1,limit=3,sort=nearest]
execute if entity @s[type=husk] run function arenaclear:kill
execute if entity @s[type=husk] run return 0
execute as @e[type=husk,tag=BlastBarrel,distance=..1,limit=1,sort=nearest] run function arenaclear:kill