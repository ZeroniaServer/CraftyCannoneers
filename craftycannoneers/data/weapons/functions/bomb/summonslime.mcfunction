summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}
summon slime ~ ~-33 ~ {NoAI:1b,Invulnerable:1b,Silent:1b,Attributes:[{Name:"generic.attack_damage",Base:0f}],Tags:["BlastSlime"],Size:16,NoAI:0b,NoGravity:1b,Invulnerable:1b}

data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BlastSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
data remove storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=BlastSlime,tag=!HasName] add HasName

tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..6] KillerUUID run scoreboard players get @s playerUUID