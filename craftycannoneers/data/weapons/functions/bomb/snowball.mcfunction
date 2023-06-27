#> Initial motion
execute at @s[tag=ThrowBomb,tag=!BombThrown] run function weapons:bomb/tick

#> Air toggle
execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData
scoreboard players set $inair CmdData 1