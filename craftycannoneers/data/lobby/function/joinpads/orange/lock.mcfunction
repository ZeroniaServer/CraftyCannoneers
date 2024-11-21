scoreboard players set $orangelock CmdData 1
item replace entity @e[type=item_display,tag=JoinpadLock,tag=Orange,limit=1,distance=..3] contents with diamond_hoe[custom_model_data={floats:[138.0f]}]
fill ~-1 ~ ~-1 ~1 ~ ~1 red_stained_glass
fill ~-1 ~1 ~-1 ~1 ~1 ~1 green_stained_glass
tp @a[distance=..2] ~-3 ~-1 ~ -90 0