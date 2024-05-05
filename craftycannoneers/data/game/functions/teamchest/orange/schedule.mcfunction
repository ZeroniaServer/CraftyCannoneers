## Due to subtick timings, we need to set inital items from storage in the first run of this schedule function.
execute as @e[type=chest_minecart,tag=orangeteamchest,limit=1] if score @s eyeclick matches 1 run data modify entity @s Items set from storage craftycannoneers:orangeteamchest Items
scoreboard players reset @e[type=chest_minecart,tag=orangeteamchest,limit=1] eyeclick

##Copy items in minecart to storage and check for changes.
data modify storage craftycannoneers:orangeteamchest Items set from entity @e[type=chest_minecart,tag=orangeteamchest,limit=1] Items

##Set empty loot table for minecart
data modify entity @e[type=chest_minecart,tag=orangeteamchest,limit=1] LootTable set value "game:orangeteamchest"
execute if entity @a[tag=orangeteamchestopen] run schedule function game:teamchest/orange/schedule 1t replace