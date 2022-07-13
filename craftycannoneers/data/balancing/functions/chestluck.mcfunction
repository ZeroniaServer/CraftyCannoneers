execute as @a[team=Orange] if score $InPurple CmdData > $InOrange CmdData run attribute @s minecraft:generic.luck base set 1.0
execute as @a[team=Orange] unless score $InPurple CmdData > $InOrange CmdData run attribute @s minecraft:generic.luck base set 0.0
execute as @a[team=Purple] if score $InOrange CmdData > $InPurple CmdData run attribute @s minecraft:generic.luck base set 1.0
execute as @a[team=Purple] unless score $InOrange CmdData > $InPurple CmdData run attribute @s minecraft:generic.luck base set 0.0