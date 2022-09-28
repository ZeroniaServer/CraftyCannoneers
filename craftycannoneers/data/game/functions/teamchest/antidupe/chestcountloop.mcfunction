execute store result score $temp hasArrows run data get storage craftycannoneers:chest Items[0].Count
data remove storage craftycannoneers:chest Items[0]
execute if entity @s[tag=orangeteamchest] run scoreboard players operation $orange1 hasArrows += $temp hasArrows
execute if entity @s[tag=purpleteamchest] run scoreboard players operation $purple1 hasArrows += $temp hasArrows
scoreboard players reset $temp hasArrows
execute if data storage craftycannoneers:chest Items[0] run function game:teamchest/antidupe/chestcountloop
execute unless data storage craftycannoneers:chest Items[0] run data remove storage craftycannoneers:chest Items