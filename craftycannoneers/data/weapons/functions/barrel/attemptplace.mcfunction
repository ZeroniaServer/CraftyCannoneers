function weapons:barrel/illegalplacement
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace
execute at @s[tag=illegal] run function weapons:barrel/retryplace

execute at @s[tag=!illegal] if entity @e[type=armor_stand,tag=BlastBarrel,distance=..1] run tag @s add illegal
execute at @s[tag=!illegal] if entity @e[type=item_display,tag=CrabTrap,distance=..1] run tag @s add illegal

execute at @s[tag=illegal] run function weapons:barrel/giveback
execute at @s[tag=!illegal] run function weapons:barrel/summon