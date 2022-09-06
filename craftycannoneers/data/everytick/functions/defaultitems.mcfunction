tag @s[tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:iron_sword"}}] add Cutlass
tag @s[tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:crossbow"}}] add Crossbow
tag @s[tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:spyglass"}}] add Spyglass
tag @s[tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] add Tracer

execute if entity @s[tag=Cutlass] run function everytick:defaultitemtimer
execute if entity @s[tag=Crossbow] run function everytick:defaultitemtimer
execute if entity @s[tag=Spyglass] run function everytick:defaultitemtimer
execute if entity @s[tag=Tracer] run function everytick:defaultitemtimer