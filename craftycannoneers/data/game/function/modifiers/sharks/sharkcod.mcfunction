execute at @s[tag=NewVCod,tag=Pos1] run ride @e[type=drowned,tag=Pos1,tag=SharkEntity,limit=1,sort=nearest] mount @s
execute at @s[tag=NewVCod,tag=Pos2] run ride @e[type=drowned,tag=Pos2,tag=SharkEntity,limit=1,sort=nearest] mount @s
execute at @s[tag=NewVCod,tag=Pos3] run ride @e[type=drowned,tag=Pos3,tag=SharkEntity,limit=1,sort=nearest] mount @s
execute at @s[tag=NewVCod,tag=Pos4] run ride @e[type=drowned,tag=Pos4,tag=SharkEntity,limit=1,sort=nearest] mount @s
execute at @s[tag=NewVCod,tag=Pos5] run ride @e[type=drowned,tag=Pos5,tag=SharkEntity,limit=1,sort=nearest] mount @s
execute at @s[tag=NewVCod,tag=Pos6] run ride @e[type=drowned,tag=Pos6,tag=SharkEntity,limit=1,sort=nearest] mount @s

execute at @s[tag=NewPCod,tag=Pos1] run ride @s mount @e[type=drowned,tag=Pos1,tag=SharkEntity,limit=1,sort=nearest]
execute at @s[tag=NewPCod,tag=Pos2] run ride @s mount @e[type=drowned,tag=Pos2,tag=SharkEntity,limit=1,sort=nearest]
execute at @s[tag=NewPCod,tag=Pos3] run ride @s mount @e[type=drowned,tag=Pos3,tag=SharkEntity,limit=1,sort=nearest]
execute at @s[tag=NewPCod,tag=Pos4] run ride @s mount @e[type=drowned,tag=Pos4,tag=SharkEntity,limit=1,sort=nearest]
execute at @s[tag=NewPCod,tag=Pos5] run ride @s mount @e[type=drowned,tag=Pos5,tag=SharkEntity,limit=1,sort=nearest]
execute at @s[tag=NewPCod,tag=Pos6] run ride @s mount @e[type=drowned,tag=Pos6,tag=SharkEntity,limit=1,sort=nearest]

execute at @s[tag=Pos1] if entity @e[type=drowned,tag=Pos1,tag=!IsBack,tag=!OnCooldown] run function game:modifiers/sharks/killcod
execute at @s[tag=Pos2] if entity @e[type=drowned,tag=Pos2,tag=!IsBack,tag=!OnCooldown] run function game:modifiers/sharks/killcod
execute at @s[tag=Pos3] if entity @e[type=drowned,tag=Pos3,tag=!IsBack,tag=!OnCooldown] run function game:modifiers/sharks/killcod
execute at @s[tag=Pos4] if entity @e[type=drowned,tag=Pos4,tag=!IsBack,tag=!OnCooldown] run function game:modifiers/sharks/killcod
execute at @s[tag=Pos5] if entity @e[type=drowned,tag=Pos5,tag=!IsBack,tag=!OnCooldown] run function game:modifiers/sharks/killcod
execute at @s[tag=Pos6] if entity @e[type=drowned,tag=Pos6,tag=!IsBack,tag=!OnCooldown] run function game:modifiers/sharks/killcod

execute at @s[tag=NewVCod] unless block ~ ~3 ~ water run tp @s ~ ~-0.1 ~

effect give @s invisibility infinite 0 true

#> Dismount boats
ride @s[predicate=game:boat/inboat] dismount