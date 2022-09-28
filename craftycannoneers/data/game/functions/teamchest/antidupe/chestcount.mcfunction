data modify storage craftycannoneers:chest Items set value []
data modify storage craftycannoneers:chest Items append from entity @s Items[{id:"minecraft:arrow"}]
execute if entity @s[tag=orangeteamchest] run scoreboard players set $orange hasArrows 0
execute if entity @s[tag=purpleteamchest] run scoreboard players set $purple hasArrows 0
execute if data storage craftycannoneers:chest Items[0] run function game:teamchest/antidupe/chestcountloop