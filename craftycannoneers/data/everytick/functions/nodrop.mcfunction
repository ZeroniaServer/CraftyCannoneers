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

tag @s[tag=!Cutlass,nbt={Item:{id:"minecraft:iron_sword"}}] add Cutlass
tag @s[tag=!Crossbow,nbt={Item:{id:"minecraft:crossbow"}}] add Crossbow
tag @s[tag=!Spyglass,nbt={Item:{id:"minecraft:spyglass"}}] add Spyglass
tag @s[tag=!Tracer,nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] add Tracer

execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[tag=Cutlass] CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[tag=Crossbow] CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[tag=Spyglass] CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players add @s[tag=Tracer] CmdData 1

execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},tag=Cutlass] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCutlass
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},tag=Crossbow] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCrossbow
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},tag=Spyglass] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsSpyglass
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=100..},tag=Tracer] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsTracer

execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Cutlass] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Crossbow] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Spyglass] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Tracer] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s

execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Cutlass] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Crossbow] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Spyglass] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if score $gamestate CmdData matches 2.. if entity @s[scores={CmdData=..99},tag=Tracer] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s

execute if entity @s[scores={CmdData=100..}] run kill @s

scoreboard players reset $tempuuid playerUUID
tag @s[tag=!processed] add processed