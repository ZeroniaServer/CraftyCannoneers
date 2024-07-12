#> Chests spawning
function chests:spawning

#> Tips
function tutorial:tips/showtip

#> Ship bell
execute as @e[type=item_display,tag=ShipBell,limit=2] run function game:ingame/bell

#> Spawn new weakpoints if the old ones die for some reason (failsafe)
execute unless score $OrangeWPDelay CmdData matches 1.. as @e[type=slime,tag=Weakpoint,tag=Orange,tag=WeakpointDamaged,limit=1] unless score $OrangeWP CmdData matches 6.. run function game:shipweakpoint/spawnnewpurple
execute unless score $PurpleWPDelay CmdData matches 1.. as @e[type=slime,tag=Weakpoint,tag=Purple,tag=WeakpointDamaged,limit=1] unless score $PurpleWP CmdData matches 6.. run function game:shipweakpoint/spawnneworange

#> Disable readyup trigger
execute as @a run trigger readyup set 0

#> Shoot prevention
function game:shotpreventiontimer

#> Ingame timer
execute unless score $TimeLimit CmdData matches 42069.. run function game:ingame/timer

#> Lock joinpads if midgame joins are disabled
execute if score $NoMidgameJoins CmdData matches 1 as @e[x=0,type=marker,tag=joinpad,tag=!JoinpadSpec,tag=!LockedMidgame,limit=2] at @s run function lobby:joinpads/lockmidgame
execute unless score $NoMidgameJoins CmdData matches 1 as @e[x=0,type=marker,tag=joinpad,tag=!JoinpadSpec,tag=LockedMidgame,limit=2] at @s run function lobby:joinpads/unlockmidgame

#> Game end criteria
execute unless score $gamestate CmdData matches 3.. run function game:ingame/endcriteria