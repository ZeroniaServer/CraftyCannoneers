execute if entity @a[team=Orange,predicate=game:matches_uuid,limit=1] run tag @s add Orange
team join Orange @s[tag=Orange]
execute if entity @s[tag=Orange] on controller run tag @s add Orange
execute if entity @s[tag=Orange] on controller run team join Orange @s

execute if entity @a[team=Purple,predicate=game:matches_uuid,limit=1] run tag @s add Purple
team join Purple @s[tag=Purple]
execute if entity @s[tag=Purple] on controller run tag @s add Purple
execute if entity @s[tag=Purple] on controller run team join Purple @s

setblock ~ 256 ~ oak_sign
execute as @a[predicate=game:matches_uuid,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value '["",{"color":"white","translate":"mob.crab.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'
data modify entity @s CustomName set from block ~ 256 ~ front_text.messages[0]
setblock ~ 256 ~ air
execute if entity @a[predicate=game:matches_uuid,limit=1] run data merge entity @s {CustomNameVisible:1b}

tag @s remove new