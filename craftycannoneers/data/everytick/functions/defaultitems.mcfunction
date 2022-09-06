tag @s[tag=!Cutlass,nbt={Item:{id:"minecraft:iron_sword"}}] add Cutlass
tag @s[tag=!Crossbow,nbt={Item:{id:"minecraft:crossbow"}}] add Crossbow
tag @s[tag=!Spyglass,nbt={Item:{id:"minecraft:spyglass"}}] add Spyglass
tag @s[tag=!Tracer,nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] add Tracer

scoreboard players add @s[tag=Cutlass] CmdData 1
scoreboard players add @s[tag=Crossbow] CmdData 1
scoreboard players add @s[tag=Spyglass] CmdData 1
scoreboard players add @s[tag=Tracer] CmdData 1

execute if entity @s[scores={CmdData=100..},tag=Cutlass] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCutlass
execute if entity @s[scores={CmdData=100..},tag=Crossbow] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsCrossbow
execute if entity @s[scores={CmdData=100..},tag=Spyglass] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsSpyglass
execute if entity @s[scores={CmdData=100..},tag=Tracer] run tag @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] add NeedsTracer

execute if entity @s[scores={CmdData=..99},tag=Cutlass] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if entity @s[scores={CmdData=..99},tag=Crossbow] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if entity @s[scores={CmdData=..99},tag=Spyglass] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s
execute if entity @s[scores={CmdData=..99},tag=Tracer] if entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid,scores={death=1..}] run kill @s

execute if entity @s[scores={CmdData=..99},tag=Cutlass] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if entity @s[scores={CmdData=..99},tag=Crossbow] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if entity @s[scores={CmdData=..99},tag=Spyglass] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s
execute if entity @s[scores={CmdData=..99},tag=Tracer] if entity @a[team=Lobby,predicate=game:matches_uuid] run kill @s

kill @s[scores={CmdData=100..}]