data merge entity @s {Size:0}
data remove entity @s CustomName
tag @s add killed
tp @s ~ -500 ~
kill @s
scoreboard players set $kill CmdData 1