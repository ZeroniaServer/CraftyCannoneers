tag @s add current
execute as @a[tag=placer,tag=crabTrapMainhand,gamemode=!creative,limit=1] run function weapons:crabtrap/givemainhand
execute as @a[tag=placer,tag=crabTrapOffhand,gamemode=!creative,limit=1] run function weapons:crabtrap/giveoffhand
kill @s