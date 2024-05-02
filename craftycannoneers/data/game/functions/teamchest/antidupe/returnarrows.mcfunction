scoreboard players add @s hasArrows 1
execute if score @s hasArrows > @s arrowsToShoot run loot give @s[tag=!loaded] loot weapons:arrow_one
execute unless score @s hasArrows > @s arrowsToShoot run loot give @s loot weapons:arrow_one
execute unless score @s hasArrows > @s arrowsToShoot run data modify storage craftycannoneers:chest Items set value []
execute unless score @s[team=Orange] hasArrows > @s arrowsToShoot run data modify storage craftycannoneers:chest Items append from entity @e[type=chest_minecart,tag=orangeteamchest,distance=..7,limit=1] Items[{id:"minecraft:arrow"}]
execute unless score @s[team=Purple] hasArrows > @s arrowsToShoot run data modify storage craftycannoneers:chest Items append from entity @e[type=chest_minecart,tag=purpleteamchest,distance=..7,limit=1] Items[{id:"minecraft:arrow"}]
execute unless score @s hasArrows > @s arrowsToShoot store result storage craftycannoneers:chest Items[-1].count byte 0.99999 run data get storage craftycannoneers:chest Items[-1].count
execute unless score @s hasArrows > @s arrowsToShoot store result score $arrct CmdData run data get storage craftycannoneers:chest Items[-1].count
# super cringe but mc no longer automatically removes items from inventories with count:0
# also if we set the ID to air then it complains in chat
# therefore just set it to stone and remove all stone later
execute unless score @s hasArrows > @s arrowsToShoot if score $arrct CmdData matches 0 run data modify storage craftycannoneers:chest Items[-1].id set value "minecraft:stone"
execute unless score @s[team=Orange] hasArrows > @s arrowsToShoot run data modify entity @e[type=chest_minecart,tag=orangeteamchest,distance=..7,limit=1] Items append from storage craftycannoneers:chest Items[-1]
execute unless score @s[team=Purple] hasArrows > @s arrowsToShoot run data modify entity @e[type=chest_minecart,tag=purpleteamchest,distance=..7,limit=1] Items append from storage craftycannoneers:chest Items[-1]
execute unless score @s[team=Orange] hasArrows > @s arrowsToShoot run data remove entity @e[type=chest_minecart,tag=orangeteamchest,distance=..7,limit=1] Items[{id:"minecraft:stone"}]
execute unless score @s[team=Purple] hasArrows > @s arrowsToShoot run data remove entity @e[type=chest_minecart,tag=purpleteamchest,distance=..7,limit=1] Items[{id:"minecraft:stone"}]
execute unless score @s hasArrows > @s arrowsToShoot run data remove storage craftycannoneers:chest Items
execute if score @s hasArrows < @s arrowsToShoot run function game:teamchest/antidupe/returnarrows