##Utility function for handling item dropping

#Process individual items
execute as @e[type=item] if entity @s[type=item,nbt={Item:{tag:{NoDrop:1b}}}] run function everytick:no_drop_process

#Kills items after a while
execute as @e[type=item,nbt={Age:200s}] run kill @s