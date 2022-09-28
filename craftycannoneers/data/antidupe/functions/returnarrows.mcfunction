scoreboard players add @s hasArrows 1
execute if score @s hasArrows matches 5.. unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{}]}}]}] run give @s arrow{display:{Name:'[{"text":"Arrow","italic":false,"color":"dark_aqua"}]'}} 1
execute unless score @s hasArrows matches 5.. run give @s arrow{display:{Name:'[{"text":"Arrow","italic":false,"color":"dark_aqua"}]'}} 1
execute unless score @s hasArrows matches 5.. store result entity @e[type=minecraft:chest_minecart,tag=orangeteamchest,distance=..7,limit=1] Items[{id:"minecraft:arrow"}].Count byte 0.99999 run data get entity @e[type=minecraft:chest_minecart,distance=..3,limit=1] Items[{id:"minecraft:arrow"}].Count
execute if score @s hasArrows < @s arrowsToShoot run function antidupe:returnarrows
function game:ingame/arrowcount