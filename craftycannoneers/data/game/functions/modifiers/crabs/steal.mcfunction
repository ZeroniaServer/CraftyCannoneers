scoreboard players set $chooseinv CmdData 1
execute as @a[tag=victim,limit=1] run function inventory:randomizer/choose
execute as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if entity @s[tag=picked] if score $pickedinv CmdData matches 1 run scoreboard players operation $steal CmdData = @s CmdData
execute if score $pickedinv CmdData matches 1 run function game:modifiers/crabs/takeitem
execute on vehicle run function game:modifiers/crabs/chase