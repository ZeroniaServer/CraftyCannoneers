execute as @e[type=item_display,tag=BlastBarrel,distance=..1,limit=1,sort=nearest] run function weapons:barrel/name
kill @e[type=interaction,tag=BlastBarrel,distance=..1,limit=2,sort=nearest]
function arenaclear:kill