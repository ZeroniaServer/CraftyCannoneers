scoreboard players add @s hasArrows 1
execute store result score $loadedbow CmdData run clear @s crossbow[charged_projectiles] 0
execute if score @s hasArrows > @s arrowsToShoot unless score $loadedbow CmdData matches 1 run loot give @s loot weapons:arrow_one
execute unless score @s hasArrows > @s arrowsToShoot run loot give @s loot weapons:arrow_one
execute unless score @s hasArrows > @s arrowsToShoot run data modify storage craftycannoneers:chest Items set value []
execute unless score @s[team=Orange] hasArrows > @s arrowsToShoot run data modify storage craftycannoneers:chest Items append from entity @e[type=chest_minecart,tag=orangeteamchest,distance=..7,limit=1] Items[{id:"minecraft:arrow"}]
execute unless score @s[team=Purple] hasArrows > @s arrowsToShoot run data modify storage craftycannoneers:chest Items append from entity @e[type=chest_minecart,tag=purpleteamchest,distance=..7,limit=1] Items[{id:"minecraft:arrow"}]
execute unless score @s hasArrows > @s arrowsToShoot store result storage craftycannoneers:chest Items[-1].Count byte 0.99999 run data get storage craftycannoneers:chest Items[-1].Count
execute unless score @s[team=Orange] hasArrows > @s arrowsToShoot run data modify entity @e[type=chest_minecart,tag=orangeteamchest,distance=..7,limit=1] Items append from storage craftycannoneers:chest Items[-1]
execute unless score @s[team=Purple] hasArrows > @s arrowsToShoot run data modify entity @e[type=chest_minecart,tag=purpleteamchest,distance=..7,limit=1] Items append from storage craftycannoneers:chest Items[-1]
execute unless score @s hasArrows > @s arrowsToShoot run data remove storage craftycannoneers:chest Items
execute if score @s hasArrows < @s arrowsToShoot run function game:teamchest/antidupe/returnarrows