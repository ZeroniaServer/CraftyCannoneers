#> Arrow return
execute if entity @s[nbt={Item:{id:"minecraft:arrow"}}] run function everytick:arrowreturn

#> No drop
execute if entity @s[nbt={Item:{tag:{NoDrop:1b}}}] run function everytick:nodrop
execute if entity @s[tag=NoDropArrow] run function everytick:nodrop

#> Prevent boat drops
kill @s[nbt={Item:{id:"minecraft:oak_planks"}}]
kill @s[nbt={Item:{id:"minecraft:stick"}}]