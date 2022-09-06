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

execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[nbt={Item:{id:"minecraft:iron_sword"}}] CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[nbt={Item:{id:"minecraft:crossbow"}}] CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[nbt={Item:{id:"minecraft:spyglass"}}] CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] CmdData 1

execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},nbt={Item:{id:"minecraft:iron_sword"}}] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCutlass
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},nbt={Item:{id:"minecraft:crossbow"}}] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCrossbow
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},nbt={Item:{id:"minecraft:spyglass"}}] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsSpyglass
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsTracer

execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:iron_sword"}}] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:crossbow"}}] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:spyglass"}}] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s

execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:iron_sword"}}] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:crossbow"}}] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:spyglass"}}] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s

execute if entity @s[scores={CmdData=100..}] run kill @s

scoreboard players reset $tempuuid playerUUID
tag @s[tag=!processed] add processed