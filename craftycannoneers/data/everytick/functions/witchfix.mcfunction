effect give @s invisibility infinite 255 true
data merge entity @s {Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",DeathTime:17s}
execute positioned ~ ~0.73 ~ as @e[type=marker,tag=villager,limit=1,sort=nearest,distance=..1] positioned ~ ~-0.73 ~ run function everytick:witchswitch
function arenaclear:kill