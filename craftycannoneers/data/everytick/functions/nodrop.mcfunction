##Processes individual items for the purpose of preventing item dropping
##Thanks to Cloud Wolf for the tip!
kill @s[nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:18}}}]
kill @s[nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:17}}}]

data modify entity @s[tag=!processed] Owner set from entity @s Thrower
data merge entity @s {NoGravity:1b}
data merge entity @s[tag=!processed] {PickupDelay:0s}
execute store result score @s[tag=!processed] playerUUID run data get entity @s Thrower[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=processed] unless entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] run kill @s
execute if entity @a[team=!Spectator,predicate=game:matches_uuid] at @a[team=!Spectator,predicate=game:matches_uuid,limit=1] run tp @s ~ ~ ~
execute if entity @a[team=!Spectator,predicate=game:matches_uuid] at @a[team=!Spectator,predicate=game:matches_uuid,scores={Falling=20..}] run tp @s ~ ~-0.5 ~
execute if entity @a[team=!Spectator,predicate=game:matches_uuid] at @s run tp @s @s
execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData

scoreboard players reset $tempuuid playerUUID
tag @s[tag=!processed] add processed