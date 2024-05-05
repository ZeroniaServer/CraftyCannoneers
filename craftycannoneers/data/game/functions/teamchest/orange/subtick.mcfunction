##Due to subtick timings, if the minecart is not open by any players, a LootTable will be detected here.

##If it's open, the LootTable is generated before it can be detected here.
execute if data entity @e[type=chest_minecart,tag=orangeteamchest,limit=1] LootTable run tag @s remove orangeteamchestopen

##Set items to minecart from storage
data modify entity @e[type=chest_minecart,tag=orangeteamchest,limit=1] Items set from storage craftycannoneers:orangeteamchest Items

##if container is closed, remove player's tag and don't revoke this tick advancement, so it doesn't trigger again.
execute unless entity @a[tag=orangeteamchestopen] as @e[type=marker,tag=orangeteamchest,limit=1] run return run function game:teamchest/orange/close
execute if entity @s[tag=!orangeteamchestopen] run return 0
advancement revoke @s only game:orangechestsubtick

##Empty item modifier force updates the player inventory to see the items
item modify entity @s armor.head []