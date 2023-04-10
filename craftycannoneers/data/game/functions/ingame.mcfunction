#> Lobby bar
bossbar set lobbybar color green
bossbar set lobbybar name {"translate":"game.in_progress","bold":true,"color":"green"}
bossbar set lobbybar value 10

#> Chests spawning
function chests:spawning

#> Tips
function tutorial:tips/showtip

#> Ship bell
execute as @e[type=armor_stand,tag=ShipBell,limit=2] run function game:ingame/bell

#> Spawn new weakpoints if the old ones die for some reason (failsafe)
execute unless score $OrangeWPDelay CmdData matches 1.. as @e[type=slime,tag=Weakpoint,tag=Orange,tag=WeakpointDamaged,limit=1] unless score $OrangeWP CmdData matches 6.. run function game:shipweakpoint/spawnnewpurple
execute unless score $PurpleWPDelay CmdData matches 1.. as @e[type=slime,tag=Weakpoint,tag=Purple,tag=WeakpointDamaged,limit=1] unless score $PurpleWP CmdData matches 6.. run function game:shipweakpoint/spawnneworange

#> Disable readyup trigger
execute as @a run trigger readyup set 0

#> Ingame timer
execute unless score $TimeLimit CmdData matches 42069.. run function game:ingame/timer

#> Modifier loops
execute if score $Storms CmdData matches 1 run function game:modifiers/seastorms/loop
execute if score $Sharks CmdData matches 1 run function game:modifiers/sharks/loop
execute if score $LostCargo CmdData matches 1 run function game:modifiers/lostcargo/loop

#> Game end criteria
execute unless score $gamestate CmdData matches 3.. run function game:ingame/endcriteria