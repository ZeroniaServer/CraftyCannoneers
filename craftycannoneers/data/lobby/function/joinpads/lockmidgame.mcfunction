tag @s add LockedMidgame
item replace entity @n[type=item_display,tag=JoinpadLock,distance=..3] contents with diamond_hoe[custom_model_data=138]
data modify entity @n[type=text_display,tag=JoinpadLockTitle,limit=1,distance=..3] text set value '{"translate":"game.started"}'
fill ~-1 ~ ~-1 ~1 ~ ~1 red_stained_glass
fill ~-1 ~1 ~-1 ~1 ~1 ~1 green_stained_glass