#> Purple - Left Side
execute positioned 50 -30 -50 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}
execute positioned 51 -27 -50 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}
execute positioned 50 -24 -50 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}
execute positioned 55 -30 -49 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}
execute positioned 56 -27 -49 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}
execute positioned 52 -19 -51 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}
execute positioned 57 -12 -53 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","left"]}

#> Purple - Middle
execute positioned 66 -30 -48 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}
execute positioned 71 -28 -48 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}
execute positioned 75 -29 -48 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}
execute positioned 66 -18 -47 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}
execute positioned 77 -19 -53 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}
execute positioned 72 -10 -53 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}
execute positioned 66 -6 -47 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","middle"]}

#> Purple - Right Side
execute positioned 82 -27 -50 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","right"]}
execute positioned 85 -26 -51 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","right"]}
execute positioned 89 -30 -52 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","right"]}
execute positioned 95 -17 -54 unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~1 ~1 ~ air unless block ~-1 ~1 ~ air unless block ~ ~2 ~ air unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple,distance=..1] run summon marker ~ ~ ~ {Tags:["WeakpointLoc","Purple","right"]}

tag @e[type=marker,tag=WeakpointLoc,tag=Purple,limit=1,sort=random] add SelectedWeakP
kill @e[type=marker,tag=WeakpointLoc,tag=Purple,tag=!SelectedWeakP]