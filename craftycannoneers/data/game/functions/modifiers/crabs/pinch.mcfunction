tag @a[distance=..0.75,limit=1,sort=nearest] add victim
execute on vehicle run damage @a[tag=victim,limit=1] 1.5 wither_skull by @s
execute if entity @a[tag=victim,limit=1] unless entity @s[tag=hasitem] run function game:modifiers/crabs/steal
tag @a[tag=victim,limit=1] remove victim