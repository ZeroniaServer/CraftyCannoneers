scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute unless score @s CmdData > @s click run scoreboard players set $move CmdData 1
execute as @e[type=marker,tag=BubbleSource,predicate=game:matches_uuid,limit=1] at @s run function weapons:bomb/movebubble
scoreboard players reset $move CmdData