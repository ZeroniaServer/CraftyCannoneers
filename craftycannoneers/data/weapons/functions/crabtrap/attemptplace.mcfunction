tp @s ~ ~ ~ ~ ~
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

execute at @s[tag=!illegal] if entity @e[type=item_display,tag=BlastBarrel,distance=..1] run tag @s add illegal
execute at @s[tag=!illegal] if entity @e[type=item_display,tag=CrabTrap,distance=..1] run tag @s add illegal

execute at @s[tag=illegal] run function weapons:crabtrap/giveback
execute at @s[tag=!illegal] run function weapons:crabtrap/summon