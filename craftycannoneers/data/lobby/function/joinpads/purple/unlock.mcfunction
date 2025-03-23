scoreboard players set $purplelock CmdData 0
item replace entity @e[type=item_display,tag=JoinpadLock,tag=Purple,limit=1,distance=..3] contents with air
data modify entity @e[type=text_display,tag=JoinpadLockTitle,tag=Purple,limit=1,distance=..3] text set value ""
data modify entity @e[type=text_display,tag=JoinpadLockSubtitle,tag=Purple,limit=1,distance=..3] text set value ""
fill ~-1 ~ ~-1 ~1 ~1 ~1 air