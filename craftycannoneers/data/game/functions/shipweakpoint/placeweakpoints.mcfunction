scoreboard players set $OrangeWP CmdData -1
scoreboard players set $PurpleWP CmdData -1
tp @e[type=marker,tag=WeakpointLoc] 0 -1000 0
kill @e[type=marker,tag=WeakpointLoc]
tp @e[type=slime,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]

#> Purple - Left Side
summon marker 50 -30 -50 {Tags:["WeakpointLoc","Purple","left"]}
summon marker 51 -27 -50 {Tags:["WeakpointLoc","Purple","left"]}
summon marker 50 -24 -50 {Tags:["WeakpointLoc","Purple","left"]}
summon marker 55 -30 -49 {Tags:["WeakpointLoc","Purple","left"]}
summon marker 56 -27 -49 {Tags:["WeakpointLoc","Purple","left"]}
summon marker 52 -19 -51 {Tags:["WeakpointLoc","Purple","left"]}
summon marker 57 -12 -53 {Tags:["WeakpointLoc","Purple","left"]}
kill @e[type=marker,tag=WeakpointLoc,tag=Purple,tag=left,limit=5,sort=random]

#> Purple - Middle
summon marker 66 -30 -48 {Tags:["WeakpointLoc","Purple","middle"]}
summon marker 71 -28 -48 {Tags:["WeakpointLoc","Purple","middle"]}
summon marker 75 -29 -48 {Tags:["WeakpointLoc","Purple","middle"]}
summon marker 66 -18 -47 {Tags:["WeakpointLoc","Purple","middle"]}
summon marker 77 -19 -53 {Tags:["WeakpointLoc","Purple","middle"]}
summon marker 72 -10 -53 {Tags:["WeakpointLoc","Purple","middle"]}
summon marker 66 -6 -47 {Tags:["WeakpointLoc","Purple","middle"]}
kill @e[type=marker,tag=WeakpointLoc,tag=Purple,tag=middle,limit=5,sort=random]

#> Purple - Right Side
summon marker 82 -27 -50 {Tags:["WeakpointLoc","Purple","right"]}
summon marker 85 -26 -51 {Tags:["WeakpointLoc","Purple","right"]}
summon marker 89 -30 -52 {Tags:["WeakpointLoc","Purple","right"]}
summon marker 95 -17 -54 {Tags:["WeakpointLoc","Purple","right"]}
kill @e[type=marker,tag=WeakpointLoc,tag=Purple,tag=right,limit=2,sort=random]



#> Orange - Left Side
summon marker 90 -30 50 {Tags:["WeakpointLoc","Orange","left"]}
summon marker 89 -27 50 {Tags:["WeakpointLoc","Orange","left"]}
summon marker 90 -24 50 {Tags:["WeakpointLoc","Orange","left"]}
summon marker 85 -30 49 {Tags:["WeakpointLoc","Orange","left"]}
summon marker 84 -27 49 {Tags:["WeakpointLoc","Orange","left"]}
summon marker 88 -19 51 {Tags:["WeakpointLoc","Orange","left"]}
summon marker 83 -12 53 {Tags:["WeakpointLoc","Orange","left"]}
kill @e[type=marker,tag=WeakpointLoc,tag=Orange,tag=left,limit=5,sort=random]

#> Orange - Middle
summon marker 74 -30 48 {Tags:["WeakpointLoc","Orange","middle"]}
summon marker 69 -28 48 {Tags:["WeakpointLoc","Orange","middle"]}
summon marker 65 -29 48 {Tags:["WeakpointLoc","Orange","middle"]}
summon marker 74 -18 47 {Tags:["WeakpointLoc","Orange","middle"]}
summon marker 63 -19 53 {Tags:["WeakpointLoc","Orange","middle"]}
summon marker 68 -10 53 {Tags:["WeakpointLoc","Orange","middle"]}
summon marker 74 -6 47 {Tags:["WeakpointLoc","Orange","middle"]}
kill @e[type=marker,tag=WeakpointLoc,tag=Orange,tag=middle,limit=5,sort=random]

#> Orange - Right Side
summon marker 58 -27 50 {Tags:["WeakpointLoc","Orange","right"]}
summon marker 55 -26 51 {Tags:["WeakpointLoc","Orange","right"]}
summon marker 51 -30 52 {Tags:["WeakpointLoc","Orange","right"]}
summon marker 45 -17 54 {Tags:["WeakpointLoc","Orange","right"]}
kill @e[type=marker,tag=WeakpointLoc,tag=Orange,tag=right,limit=2,sort=random]