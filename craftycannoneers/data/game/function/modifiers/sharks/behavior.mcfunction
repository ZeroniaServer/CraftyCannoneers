#> Target in range?
execute if entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] unless entity @s[tag=OnCooldown] run tag @s add HasTarget
execute unless entity @a[tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run tag @s remove HasTarget
tag @s[tag=OnCooldown,tag=HasTarget] remove HasTarget

#> Move back to original positions
execute if entity @s[tag=Pos1,tag=!IsBack,tag=!HasTarget] positioned 57 -33 34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos2,tag=!IsBack,tag=!HasTarget] positioned 68 -33 34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos3,tag=!IsBack,tag=!HasTarget] positioned 79 -33 34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos4,tag=!IsBack,tag=!HasTarget] positioned 83 -33 -34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos5,tag=!IsBack,tag=!HasTarget] positioned 72 -33 -34 unless entity @s[distance=..4] run tag @s add SwimBack
execute if entity @s[tag=Pos6,tag=!IsBack,tag=!HasTarget] positioned 61 -33 -34 unless entity @s[distance=..4] run tag @s add SwimBack

execute if entity @s[tag=Pos1,tag=!IsBack,tag=HasTarget] run tag @s remove SwimBack
execute if entity @s[tag=Pos2,tag=!IsBack,tag=HasTarget] run tag @s remove SwimBack
execute if entity @s[tag=Pos3,tag=!IsBack,tag=HasTarget] run tag @s remove SwimBack
execute if entity @s[tag=Pos4,tag=!IsBack,tag=HasTarget] run tag @s remove SwimBack
execute if entity @s[tag=Pos5,tag=!IsBack,tag=HasTarget] run tag @s remove SwimBack
execute if entity @s[tag=Pos6,tag=!IsBack,tag=HasTarget] run tag @s remove SwimBack

execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=OnCooldown] unless entity @e[type=cod,tag=Pos1,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=OnCooldown] unless entity @e[type=cod,tag=Pos2,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=OnCooldown] unless entity @e[type=cod,tag=Pos3,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=OnCooldown] unless entity @e[type=cod,tag=Pos4,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=OnCooldown] unless entity @e[type=cod,tag=Pos5,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=OnCooldown] unless entity @e[type=cod,tag=Pos6,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}

execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=OnCooldown] unless entity @e[type=cod,tag=Pos1,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=OnCooldown] unless entity @e[type=cod,tag=Pos2,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=OnCooldown] unless entity @e[type=cod,tag=Pos3,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=OnCooldown] unless entity @e[type=cod,tag=Pos4,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=OnCooldown] unless entity @e[type=cod,tag=Pos5,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=OnCooldown] unless entity @e[type=cod,tag=Pos6,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}

execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 57 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 68 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 79 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 83 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 72 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 61 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}

execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 57 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 68 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 79 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 83 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 72 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute unless score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=!IsBack,tag=!HasTarget,tag=!OnCooldown] positioned 61 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:2.0d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}


execute if score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=OnCooldown] unless entity @e[type=cod,tag=Pos1,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=OnCooldown] unless entity @e[type=cod,tag=Pos2,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=OnCooldown] unless entity @e[type=cod,tag=Pos3,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=OnCooldown] unless entity @e[type=cod,tag=Pos4,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=OnCooldown] unless entity @e[type=cod,tag=Pos5,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=OnCooldown] unless entity @e[type=cod,tag=Pos6,tag=NewVCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}

execute if score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=OnCooldown] unless entity @e[type=cod,tag=Pos1,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=OnCooldown] unless entity @e[type=cod,tag=Pos2,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=OnCooldown] unless entity @e[type=cod,tag=Pos3,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=OnCooldown] unless entity @e[type=cod,tag=Pos4,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=OnCooldown] unless entity @e[type=cod,tag=Pos5,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=OnCooldown] unless entity @e[type=cod,tag=Pos6,tag=NewPCod] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}


execute if score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=!IsBack,tag=!HasTarget] positioned 57 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=!IsBack,tag=!HasTarget] positioned 68 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=!IsBack,tag=!HasTarget] positioned 79 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=!IsBack,tag=!HasTarget] positioned 83 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=!IsBack,tag=!HasTarget] positioned 72 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=!IsBack,tag=!HasTarget] positioned 61 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewVCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}

execute if score $Storms CmdData matches 1 if entity @s[tag=Pos1,tag=!IsBack,tag=!HasTarget] positioned 57 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos1","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos2,tag=!IsBack,tag=!HasTarget] positioned 68 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos2","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos3,tag=!IsBack,tag=!HasTarget] positioned 79 -33 34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos3","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos4,tag=!IsBack,tag=!HasTarget] positioned 83 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos4","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos5,tag=!IsBack,tag=!HasTarget] positioned 72 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos5","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}
execute if score $Storms CmdData matches 1 if entity @s[tag=Pos6,tag=!IsBack,tag=!HasTarget] positioned 61 -33 -34 if entity @s[distance=..4] at @s run summon cod ~ ~ ~ {PersistenceRequired:1b,Silent:1b,attributes:[{base:0.6d,id:"minecraft:generic.movement_speed"}],Tags:["Pos6","SharkCod","SharkEntity","NewPCod"],Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty"}


execute if entity @s[tag=IsBack] at @s run data modify entity @s Rotation set from entity @e[type=cod,tag=NewVCod,sort=nearest,limit=1] Rotation
execute if entity @s[tag=OnCooldown] at @s run data modify entity @s Rotation set from entity @e[type=cod,tag=NewVCod,sort=nearest,limit=1] Rotation
execute if entity @s[tag=!HasTarget,tag=!OnCooldown,tag=!IsBack,tag=!SwimBack] at @s run data modify entity @s Rotation set from entity @e[type=cod,tag=NewVCod,sort=nearest,limit=1] Rotation

execute if entity @s[tag=Pos1] positioned 57 -33 34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos2] positioned 68 -33 34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos3] positioned 79 -33 34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos4] positioned 83 -33 -34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos5] positioned 72 -33 -34 if entity @s[distance=..4] run tag @s add IsBack
execute if entity @s[tag=Pos6] positioned 61 -33 -34 if entity @s[distance=..4] run tag @s add IsBack
tag @s[tag=IsBack] remove SwimBack

execute if entity @s[tag=Pos1,tag=IsBack,tag=HasTarget] run tag @s remove IsBack
execute if entity @s[tag=Pos2,tag=IsBack,tag=HasTarget] run tag @s remove IsBack
execute if entity @s[tag=Pos3,tag=IsBack,tag=HasTarget] run tag @s remove IsBack
execute if entity @s[tag=Pos4,tag=IsBack,tag=HasTarget] run tag @s remove IsBack
execute if entity @s[tag=Pos5,tag=IsBack,tag=HasTarget] run tag @s remove IsBack
execute if entity @s[tag=Pos6,tag=IsBack,tag=HasTarget] run tag @s remove IsBack

execute if entity @s[tag=Pos1,tag=SwimBack,tag=!OnCooldown] run tp @s ~ ~ ~ facing 57 -33 34
execute if entity @s[tag=Pos2,tag=SwimBack,tag=!OnCooldown] run tp @s ~ ~ ~ facing 68 -33 34
execute if entity @s[tag=Pos3,tag=SwimBack,tag=!OnCooldown] run tp @s ~ ~ ~ facing 79 -33 34
execute if entity @s[tag=Pos4,tag=SwimBack,tag=!OnCooldown] run tp @s ~ ~ ~ facing 83 -33 -34
execute if entity @s[tag=Pos5,tag=SwimBack,tag=!OnCooldown] run tp @s ~ ~ ~ facing 72 -33 -34
execute if entity @s[tag=Pos6,tag=SwimBack,tag=!OnCooldown] run tp @s ~ ~ ~ facing 61 -33 -34

execute if entity @s[tag=Pos1,tag=IsBack] positioned 57 -33 34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos2,tag=IsBack] positioned 68 -33 34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos3,tag=IsBack] positioned 79 -33 34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos4,tag=IsBack] positioned 83 -33 -34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos5,tag=IsBack] positioned 72 -33 -34 unless entity @s[distance=..12] run tag @s remove IsBack
execute if entity @s[tag=Pos6,tag=IsBack] positioned 61 -33 -34 unless entity @s[distance=..12] run tag @s remove IsBack

execute if entity @s[tag=SwimBack,tag=!OnCooldown] at @s run tp @s ^ ^ ^0.1
execute if entity @s[tag=SwimBack] at @s run tag @s remove Swimback

#> Attack cooldown
execute if score @s sharkcooldown matches 1.. run scoreboard players remove @s sharkcooldown 1
execute if score @s sharkcooldown matches 1.. run data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:0.0d}]}
execute unless score @s sharkcooldown matches 1.. run data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:15.0d}]}
execute unless score @s sharkcooldown matches 1.. run tag @s remove OnCooldown
execute if score @s sharkcooldown matches -2147483648..0 run scoreboard players reset @s sharkcooldown

#> Attack players
execute at @s unless entity @e[type=drowned,tag=!OnCooldown,tag=SharkEntity,tag=Attacking,scores={CmdData=..6},distance=..5] if entity @a[team=!Lobby,team=!Spectator,gamemode=adventure,tag=SharkTarget,distance=..3] run tag @s add Attacking
execute at @s[tag=Attacking,tag=!OnCooldown] run function game:modifiers/sharks/attacking
scoreboard players reset @s[tag=!Attacking,scores={CmdData=1..}] CmdData

effect give @s invisibility infinite 0 true

#> Dismount boats
ride @s[predicate=game:boat/inboat] dismount

#> Movement speed changes
scoreboard players add @s crabmode 1
execute if score @s crabmode matches 100.. run function game:modifiers/sharks/switchspeed

#> Max height
execute if entity @s[predicate=game:sharkbounds] run tp @s ~ -31.5 ~