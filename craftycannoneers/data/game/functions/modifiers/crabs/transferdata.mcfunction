execute if entity @a[team=Orange,predicate=game:matches_uuid,limit=1] run tag @s add Orange
team join Orange @s[tag=Orange]
execute if entity @s[tag=Orange] on controller run tag @s add Orange
execute if entity @s[tag=Orange] on controller run team join Orange @s

execute if entity @a[team=Purple,predicate=game:matches_uuid,limit=1] run tag @s add Purple
team join Purple @s[tag=Purple]
execute if entity @s[tag=Purple] on controller run tag @s add Purple
execute if entity @s[tag=Purple] on controller run team join Purple @s

setblock ~ 256 ~ oak_sign
execute as @a[predicate=game:matches_uuid,limit=1] run data merge block ~ 256 ~ {Text2:'["",{"color":"white","translate":"mob.crab.possessive","with":[{"selector":"@a[limit=1,predicate=game:matches_uuid]"}]}]'}
data modify entity @s CustomName set from block ~ 256 ~ Text2
setblock ~ 256 ~ air
execute if entity @a[predicate=game:matches_uuid,limit=1] run data merge entity @s {CustomNameVisible:1b}

execute on passengers on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1f,1f,1f]},start_interpolation:-1,interpolation_duration:0}

tag @s remove new