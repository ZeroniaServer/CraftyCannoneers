execute on vehicle if entity @s[team=!Purple,team=!Orange] run tag @a[distance=..1,limit=1,sort=nearest] add victim
execute on vehicle if entity @s[team=Purple] run tag @a[team=Orange,distance=..1,limit=1,sort=nearest] add victim
execute on vehicle if entity @s[team=Orange] run tag @a[team=Purple,distance=..1,limit=1,sort=nearest] add victim
execute on vehicle run scoreboard players operation @a[tag=victim,limit=1] KillerUUID = @s KillerUUID
execute on vehicle run damage @a[tag=victim,limit=1] 1.5 wither_skull by @s
execute if entity @a[tag=victim,limit=1] unless entity @s[tag=hasitem] run function game:modifiers/crabs/steal
tag @a[tag=victim,limit=1] remove victim