execute if score $InPurple CmdData > $InOrange CmdData run tag @s[team=Orange] add lowerteam
execute unless score $InPurple CmdData > $InOrange CmdData run tag @s[team=Orange] remove lowerteam
execute if score $InOrange CmdData > $InPurple CmdData run tag @s[team=Purple] add lowerteam
execute unless score $InOrange CmdData > $InPurple CmdData run tag @s[team=Purple] remove lowerteam