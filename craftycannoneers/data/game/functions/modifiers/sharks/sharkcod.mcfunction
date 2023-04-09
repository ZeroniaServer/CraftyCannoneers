execute if entity @s[tag=NewVCod,tag=Pos1] as @e[type=drowned,tag=Pos1,tag=SharkEntity,limit=1,sort=nearest] at @s run ride @s mount @e[type=cod,tag=Pos1,tag=NewVCod,limit=1,sort=nearest]
execute if entity @s[tag=NewVCod,tag=Pos2] as @e[type=drowned,tag=Pos2,tag=SharkEntity,limit=1,sort=nearest] at @s run ride @s mount @e[type=cod,tag=Pos2,tag=NewVCod,limit=1,sort=nearest]
execute if entity @s[tag=NewVCod,tag=Pos3] as @e[type=drowned,tag=Pos3,tag=SharkEntity,limit=1,sort=nearest] at @s run ride @s mount @e[type=cod,tag=Pos3,tag=NewVCod,limit=1,sort=nearest]
execute if entity @s[tag=NewVCod,tag=Pos4] as @e[type=drowned,tag=Pos4,tag=SharkEntity,limit=1,sort=nearest] at @s run ride @s mount @e[type=cod,tag=Pos4,tag=NewVCod,limit=1,sort=nearest]
execute if entity @s[tag=NewVCod,tag=Pos5] as @e[type=drowned,tag=Pos5,tag=SharkEntity,limit=1,sort=nearest] at @s run ride @s mount @e[type=cod,tag=Pos5,tag=NewVCod,limit=1,sort=nearest]
execute if entity @s[tag=NewVCod,tag=Pos6] as @e[type=drowned,tag=Pos6,tag=SharkEntity,limit=1,sort=nearest] at @s run ride @s mount @e[type=cod,tag=Pos6,tag=NewVCod,limit=1,sort=nearest]

execute if entity @s[tag=NewPCod,tag=Pos1] at @s run ride @s mount @e[type=drowned,tag=Pos1,tag=SharkEntity,limit=1,sort=nearest]
execute if entity @s[tag=NewPCod,tag=Pos2] at @s run ride @s mount @e[type=drowned,tag=Pos2,tag=SharkEntity,limit=1,sort=nearest]
execute if entity @s[tag=NewPCod,tag=Pos3] at @s run ride @s mount @e[type=drowned,tag=Pos3,tag=SharkEntity,limit=1,sort=nearest]
execute if entity @s[tag=NewPCod,tag=Pos4] at @s run ride @s mount @e[type=drowned,tag=Pos4,tag=SharkEntity,limit=1,sort=nearest]
execute if entity @s[tag=NewPCod,tag=Pos5] at @s run ride @s mount @e[type=drowned,tag=Pos5,tag=SharkEntity,limit=1,sort=nearest]
execute if entity @s[tag=NewPCod,tag=Pos6] at @s run ride @s mount @e[type=drowned,tag=Pos6,tag=SharkEntity,limit=1,sort=nearest]

execute if entity @s[tag=Pos1] unless entity @e[type=drowned,tag=Pos1,tag=IsBack] run ride @s dismount
execute if entity @s[tag=Pos1] unless entity @e[type=drowned,tag=Pos1,tag=IsBack] run function arenaclear:kill

execute if entity @s[tag=Pos2] unless entity @e[type=drowned,tag=Pos2,tag=IsBack] run ride @s dismount
execute if entity @s[tag=Pos2] unless entity @e[type=drowned,tag=Pos2,tag=IsBack] run function arenaclear:kill

execute if entity @s[tag=Pos3] unless entity @e[type=drowned,tag=Pos3,tag=IsBack] run ride @s dismount
execute if entity @s[tag=Pos3] unless entity @e[type=drowned,tag=Pos3,tag=IsBack] run function arenaclear:kill

execute if entity @s[tag=Pos4] unless entity @e[type=drowned,tag=Pos4,tag=IsBack] run ride @s dismount
execute if entity @s[tag=Pos4] unless entity @e[type=drowned,tag=Pos4,tag=IsBack] run function arenaclear:kill

execute if entity @s[tag=Pos5] unless entity @e[type=drowned,tag=Pos5,tag=IsBack] run ride @s dismount
execute if entity @s[tag=Pos5] unless entity @e[type=drowned,tag=Pos5,tag=IsBack] run function arenaclear:kill

execute if entity @s[tag=Pos6] unless entity @e[type=drowned,tag=Pos6,tag=IsBack] run ride @s dismount
execute if entity @s[tag=Pos6] unless entity @e[type=drowned,tag=Pos6,tag=IsBack] run function arenaclear:kill

execute if entity @a[gamemode=!spectator,tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run ride @s dismount
execute if entity @a[gamemode=!spectator,tag=SharkTarget,team=!Lobby,team=!Spectator,distance=..12] run function arenaclear:kill

execute if entity @s[tag=NewVCod] at @s unless block ~ ~3 ~ water run tp @s ~ ~-0.1 ~

effect give @s invisibility infinite 100 true