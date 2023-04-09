#> Move back to original positions
execute if entity @s[tag=Pos1,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 57 -33 34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos2,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 68 -33 34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos3,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 79 -33 34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos4,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 83 -33 -34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos5,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 72 -33 -34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos6,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 61 -33 -34 unless entity @s[distance=..4] run tag @s add SwimBack

execute if entity @s[tag=Pos1,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 57 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos2,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 68 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos3,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 79 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos4,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 83 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos5,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 72 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos6,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 61 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,Silent:1b}

execute if entity @s[tag=Pos1,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 57 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos2,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 68 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos3,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 79 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos4,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 83 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos5,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 72 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,Silent:1b}
execute if entity @s[tag=Pos6,tag=!IsBack] unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] positioned 61 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,Silent:1b}

execute if entity @s[tag=IsBack] at @s run data modify entity @s Rotation set from entity @e[type=cod,tag=NewVCod,sort=nearest,limit=1] Rotation

execute if entity @s[tag=Pos1] positioned 57 -33 34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos2] positioned 68 -33 34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos3] positioned 79 -33 34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos4] positioned 83 -33 -34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos5] positioned 72 -33 -34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos6] positioned 61 -33 -34 if entity @s[distance=..4] run tag @s add IsBack
tag @s[tag=IsBack] remove SwimBack

execute if entity @s[tag=Pos1,tag=IsBack] if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos2,tag=IsBack] if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos3,tag=IsBack] if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos4,tag=IsBack] if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos5,tag=IsBack] if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos6,tag=IsBack] if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove IsBack

execute if entity @s[tag=Pos1,tag=SwimBack] run tp @s ~ ~ ~ facing 57 -33 34
execute if entity @s[tag=Pos2,tag=SwimBack] run tp @s ~ ~ ~ facing 68 -33 34
execute if entity @s[tag=Pos3,tag=SwimBack] run tp @s ~ ~ ~ facing 79 -33 34
execute if entity @s[tag=Pos4,tag=SwimBack] run tp @s ~ ~ ~ facing 83 -33 -34
execute if entity @s[tag=Pos5,tag=SwimBack] run tp @s ~ ~ ~ facing 72 -33 -34
execute if entity @s[tag=Pos6,tag=SwimBack] run tp @s ~ ~ ~ facing 61 -33 -34

execute if entity @s[tag=Pos1,tag=IsBack] positioned 57 -33 34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos2,tag=IsBack] positioned 68 -33 34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos3,tag=IsBack] positioned 79 -33 34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos4,tag=IsBack] positioned 83 -33 -34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos5,tag=IsBack] positioned 72 -33 -34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos6,tag=IsBack] positioned 61 -33 -34 unless entity @s[distance=..12] run tag @s remove IsBack

execute if entity @s[tag=SwimBack] at @s run tp @s ^ ^ ^0.1
execute if entity @s[tag=SwimBack] at @s run tag @s remove Swimback

#> Hover in deep water
# execute at @s unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] if block ~ ~4 ~ water unless block ~ ~4.5 ~ air run effect give @s slow_falling 1 100 true
# execute at @s unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] if block ~ ~4 ~ water unless block ~ ~4.5 ~ air run tp @s ~ ~0.1 ~

#> Bite players
execute at @s unless entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=..6},distance=..5] if entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..3] run tag @s add Attacking
execute at @s[tag=Attacking] run function game:modifiers/sharks/attacking
scoreboard players reset @s[tag=!Attacking,scores={CmdData=1..}] CmdData 

effect give @s invisibility infinite 100 true