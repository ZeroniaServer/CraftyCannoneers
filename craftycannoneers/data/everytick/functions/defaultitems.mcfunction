tag @s[tag=!checked,tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:iron_sword"}}] add Cutlass
tag @s[tag=!checked,tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:crossbow"}}] add Crossbow
tag @s[tag=!checked,tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:spyglass"}}] add Spyglass
tag @s[tag=!checked,tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer,nbt={Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:60}}}] add Tracer
tag @s[tag=!checked] add checked

execute unless entity @s[tag=!Cutlass,tag=!Crossbow,tag=!Spyglass,tag=!Tracer] run function everytick:defaultitemtimer