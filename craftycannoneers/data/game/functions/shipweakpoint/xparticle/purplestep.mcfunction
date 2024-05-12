execute store success score $spotted CmdData if entity @e[type=slime,tag=Spotted,tag=Purple,limit=1]
scoreboard players set $fadeval CmdData -2
execute if score $spotted CmdData matches 1 run scoreboard players operation $fadeval CmdData = @e[type=slime,tag=Spotted,tag=Purple,limit=1] spotting

execute if score $dust2 CmdData matches 0 unless score $spotted CmdData matches 1 at @s run particle dust{color:[1.0,1.0,1.0],scale:0.5} ~ ~ ~-1 0 0 0 0 0 force @a[team=Purple,tag=UsingSpyglass,tag=!SeeWeakpoint]
execute if score $dust2 CmdData matches 0 unless score $spotted CmdData matches 1 at @s run particle dust{color:[0.0,1.0,0.0],scale:0.5} ~ ~ ~-1 0 0 0 0 0 force @a[team=Purple,tag=UsingSpyglass,tag=SeeWeakpoint]

#fade 0
execute if score $fadeval CmdData matches -1 at @s run particle dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]
execute if score $dust6 CmdData matches 0 if score $fadeval CmdData matches 0..100 at @s run particle dust{color:[1.0,0.0,0.0],scale:2.0} ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

#fade 1
execute if score $dust5 CmdData matches 0 if score $fadeval CmdData matches 100..140 at @s run particle dust{color:[1.0,0.35,0.35],scale:1.6} ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

#fade 2
execute if score $dust3 CmdData matches 0 if score $fadeval CmdData matches 140..170 at @s run particle dust{color:[1.0,0.63,0.63],scale:1.3} ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

#fade 3
execute if score $dust3 CmdData matches 0 if score $fadeval CmdData matches 170.. at @s run particle dust{color:[1.0,0.85,0.85],scale:1.2} ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

execute at @s run function game:shipweakpoint/xparticle/global