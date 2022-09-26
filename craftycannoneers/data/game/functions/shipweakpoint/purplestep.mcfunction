execute if score $dust2 CmdData matches 0 unless entity @e[type=slime,tag=Spotted,tag=Purple] at @s run particle dust 1 1 1 0.5 ~ ~ ~-1 0 0 0 0 0 force @a[team=Purple,tag=UsingSpyglass,tag=!SeeWeakpoint]
execute if score $dust2 CmdData matches 0 unless entity @e[type=slime,tag=Spotted,tag=Purple] at @s run particle dust 0 1 0 0.5 ~ ~ ~-1 0 0 0 0 0 force @a[team=Purple,tag=UsingSpyglass,tag=SeeWeakpoint]

#fade 0
execute if entity @e[type=slime,tag=Spotted,tag=Purple,scores={spotting=-1}] at @s run particle dust 1 0 0 2 ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]
execute if score $dust6 CmdData matches 0 if entity @e[type=slime,tag=Spotted,tag=Purple,scores={spotting=0..100}] at @s run particle dust 1 0 0 2 ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

#fade 1
execute if score $dust5 CmdData matches 0 if entity @e[type=slime,tag=Spotted,tag=Purple,scores={spotting=100..140}] at @s run particle dust 1 0.35 0.35 1.6 ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

#fade 2
execute if score $dust3 CmdData matches 0 if entity @e[type=slime,tag=Spotted,tag=Purple,scores={spotting=140..170}] at @s run particle dust 1 0.63 0.63 1.3 ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

#fade 3
execute if score $dust3 CmdData matches 0 if entity @e[type=slime,tag=Spotted,tag=Purple,scores={spotting=170..}] at @s run particle dust 1 0.85 0.85 1.2 ~ ~ ~-1 0 0 0 0 0 force @a[team=!Orange,team=!Lobby]

execute at @s run function game:shipweakpoint/global