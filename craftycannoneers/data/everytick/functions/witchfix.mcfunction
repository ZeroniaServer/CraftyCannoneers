data merge entity @s {Silent:1b,NoAI:1b}
summon villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["newVillager"],PersistenceRequired:1b,Passengers:[{id:"minecraft:marker",Tags:["newVillager"]}]}
execute positioned ~ ~0.73 ~ as @e[type=marker,tag=villager,limit=1,sort=nearest,distance=..1] positioned ~ ~-0.73 ~ run function everytick:witchswitch
function arenaclear:kill