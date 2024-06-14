execute unless score $foundinteraction CmdData matches 1 run function entityid:interaction/check
execute if score $foundinteraction CmdData matches 1 run data remove entity @s interaction