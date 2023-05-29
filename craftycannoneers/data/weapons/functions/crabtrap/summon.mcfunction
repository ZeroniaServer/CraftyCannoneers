# playsound blastbarrelplace master @a ~ ~ ~ 0.6 1
particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~ ~ 0.4 0 0.4 0.1 5 force @a[team=!Lobby]
particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force @a[team=!Lobby]
summon villager ~ ~ ~ {NoAI:1b,Silent:1b,NoGravity:1b,Age:-2147483648,Tags:["CrabTrap","CrabTrapVillager"],PersistenceRequired:1b,DeathTime:17s,ActiveEffects:[{Id:11,Amplifier:100b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:marker",Tags:["villager","crabtrap"],data:{Tags:["CrabTrap","CrabTrapVillager"]}}]}
team join NoName @e[type=villager,tag=CrabTrapVillager,limit=1,sort=nearest]
function weapons:crabtrap/rotate

kill @s