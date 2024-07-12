tag @s remove LockedMidgame
execute if entity @s[tag=JoinpadOrange] unless score $orangelock CmdData matches 1 run function lobby:joinpads/resetlock
execute if entity @s[tag=JoinpadPurple] unless score $purplelock CmdData matches 1 run function lobby:joinpads/resetlock