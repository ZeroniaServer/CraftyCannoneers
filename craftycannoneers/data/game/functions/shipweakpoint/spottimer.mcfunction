execute if entity @s[tag=Orange,scores={spotting=100..}] if entity @e[type=armor_stand,tag=CannonDisp,tag=Orange,tag=!OnFire,scores={cannonclaim=1..}] run scoreboard players set @s spotting 99
execute if entity @s[tag=Purple,scores={spotting=100..}] if entity @e[type=armor_stand,tag=CannonDisp,tag=Purple,tag=!OnFire,scores={cannonclaim=1..}] run scoreboard players set @s spotting 99

execute if entity @s[tag=Orange] unless entity @e[type=armor_stand,tag=CannonDisp,tag=Orange,tag=!OnFire,scores={cannonclaim=1..}] run scoreboard players add @s spotting 1
execute if entity @s[tag=Purple] unless entity @e[type=armor_stand,tag=CannonDisp,tag=Purple,tag=!OnFire,scores={cannonclaim=1..}] run scoreboard players add @s spotting 1
execute if entity @s[scores={spotting=220..}] run function game:shipweakpoint/unspot

execute if entity @s[tag=Purple] if entity @a[team=Purple,tag=SeeWeakpoint] run scoreboard players set @s[scores={spotting=100..}] spotting -1
execute if entity @s[tag=Orange] if entity @a[team=Orange,tag=SeeWeakpoint] run scoreboard players set @s[scores={spotting=100..}] spotting -1

execute if entity @s[tag=Purple] if entity @a[team=Purple,tag=SeeWeakpoint] run scoreboard players set @s[scores={spotting=1..}] spotting 0
execute if entity @s[tag=Orange] if entity @a[team=Orange,tag=SeeWeakpoint] run scoreboard players set @s[scores={spotting=1..}] spotting 0