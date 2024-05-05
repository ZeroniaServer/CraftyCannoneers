## Due to subtick timings, we need to set inital items from storage in the first run of this schedule function.
execute as @e[type=chest_minecart,tag=purpleteamchest,limit=1] if score @s eyeclick matches 1 run data modify entity @s Items set from storage craftycannoneers:purpleteamchest Items
scoreboard players reset @e[type=chest_minecart,tag=purpleteamchest,limit=1] eyeclick

##Copy items in minecart to storage and check for changes.
data modify storage craftycannoneers:purpleteamchest Items set from entity @e[type=chest_minecart,tag=purpleteamchest,limit=1] Items

##Set empty loot table for minecart
data modify entity @e[type=chest_minecart,tag=purpleteamchest,limit=1] LootTable set value "game:purpleteamchest"
execute if entity @a[tag=purpleteamchestopen] run schedule function game:teamchest/purple/schedule 1t replace