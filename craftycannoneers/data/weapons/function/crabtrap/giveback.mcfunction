tag @s add current
execute store result score @s TrapDurability run data get entity @s data.durability
data modify storage craftycannoneers:crabtrap durability set from entity @s data.durability
tag @a[tag=placer,limit=1] add self
execute as @a[tag=placer,tag=crabTrapMainhand,gamemode=!creative,limit=1] run function weapons:crabtrap/givemainhand
execute as @a[tag=placer,tag=crabTrapOffhand,gamemode=!creative,limit=1] run function weapons:crabtrap/giveoffhand
tag @a[tag=placer,limit=1] remove self
kill @s