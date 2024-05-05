##Due to subtick timings, if the minecart is not open by any players, a LootTable will be detected here.

##If it's open, the LootTable is generated before it can be detected here.
execute if data entity @e[type=chest_minecart,tag=purpleteamchest,limit=1] LootTable run tag @s remove purpleteamchestopen

##Set items to minecart from storage
data modify entity @e[type=chest_minecart,tag=purpleteamchest,limit=1] Items set from storage craftycannoneers:purpleteamchest Items

##if container is closed, remove player's tag and don't revoke this tick advancement, so it doesn't trigger again.
execute unless entity @a[tag=purpleteamchestopen] as @e[type=marker,tag=purpleteamchest,limit=1] run return run function game:teamchest/purple/close
execute if entity @s[tag=!purpleteamchestopen] run return 0
advancement revoke @s only game:purplechestsubtick

##Empty item modifier force updates the player inventory to see the items
item modify entity @s armor.head []