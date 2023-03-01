execute as @a[tag=placer,tag=barrelMainhand,gamemode=!creative,limit=1] run function weapons:barrel/givemainhand
execute as @a[tag=placer,tag=barrelOffhand,gamemode=!creative,limit=1] run function weapons:barrel/giveoffhand
kill @s