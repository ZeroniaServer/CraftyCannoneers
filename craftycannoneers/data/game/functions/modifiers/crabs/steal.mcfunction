scoreboard players set $chooseinv CmdData 1
execute as @a[tag=victim,limit=1] run function inventory:randomizer/choose
execute store result score $steal CmdData run data get storage craftycannoneers:inventory Result[0].Slot
execute if score $pickedinv CmdData matches 1 run function game:modifiers/crabs/takeitem
execute if score $pickedinv CmdData matches 1 on vehicle run function game:modifiers/crabs/chase
execute if score $pickedinv CmdData matches 1 on passengers if items entity @s contents lava_bucket on vehicle run tag @s add hashot
execute if entity @s[tag=hashot] on passengers run data merge entity @s {brightness:{block:15,sky:15}}