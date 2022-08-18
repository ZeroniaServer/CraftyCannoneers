clone ~ ~-1 ~ ~-22 ~1 ~-62 ~978 ~-1 ~-62
scoreboard players add @s CmdData 1
execute store result score $restoreY CmdData run data get entity @s Pos[1]
execute as @e[type=#game:weakpoint,tag=WeakpointDamaged,tag=FakeWeakpoint] if score @s eyeclick = $restoreY CmdData run tag @s remove WeakpointDamaged
tp @s ~ ~1 ~
execute if entity @s[scores={CmdData=50..}] run scoreboard players set $shipstatus CmdData 1
kill @s[scores={CmdData=50..}]