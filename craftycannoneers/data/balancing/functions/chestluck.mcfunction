execute if score $InPurple CmdData > $InOrange CmdData run attribute @s[team=Orange] minecraft:generic.luck base set 1.0
execute unless score $InPurple CmdData > $InOrange CmdData run attribute @s[team=Orange] minecraft:generic.luck base set 0.0
execute if score $InOrange CmdData > $InPurple CmdData run attribute @s[team=Purple] minecraft:generic.luck base set 1.0
execute unless score $InOrange CmdData > $InPurple CmdData run attribute @s[team=Purple] minecraft:generic.luck base set 0.0