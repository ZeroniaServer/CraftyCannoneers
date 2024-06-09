execute anchored eyes facing entity @e[type=slime,tag=FakeWeakpoint] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.01] run scoreboard players set $lookingat CmdData 1
execute if score $lookingat CmdData matches 1 anchored eyes positioned ^ ^ ^ anchored feet run function tutorial:raycast/start_ray
scoreboard players reset $lookingat CmdData