data modify storage craftycannoneers:chest Items set value []
data modify storage craftycannoneers:chest Items append from entity @s Items[{id:"minecraft:arrow"}]
execute if entity @s[tag=orangeteamchest] run scoreboard players set $orange1 hasArrows 0
execute if entity @s[tag=purpleteamchest] run scoreboard players set $purple1 hasArrows 0
execute if data storage craftycannoneers:chest Items[0] run function antidupe:chestcountloop