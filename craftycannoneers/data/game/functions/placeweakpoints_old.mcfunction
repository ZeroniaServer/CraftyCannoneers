scoreboard players set $OrangeWP CmdData -1
scoreboard players set $PurpleWP CmdData -1
tp @e[type=marker,tag=WeakpointLoc] 0 -1000 0
kill @e[type=marker,tag=WeakpointLoc]
tp @e[type=slime,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]

summon marker 70 -30 -48 {Tags:["WeakpointLoc","Purple"]}
summon marker 60 -27 -48 {Tags:["WeakpointLoc","Purple"]}
summon marker 53 -26 -49 {Tags:["WeakpointLoc","Purple"]}
summon marker 82 -27 -50 {Tags:["WeakpointLoc","Purple"]}
summon marker 75 -19 -53 {Tags:["WeakpointLoc","Purple"]}
summon marker 72 -11 -53 {Tags:["WeakpointLoc","Purple"]}
summon marker 57 -14 -52 {Tags:["WeakpointLoc","Purple"]}

summon marker 70 -30 48 {Tags:["WeakpointLoc","Orange"]}
summon marker 80 -27 48 {Tags:["WeakpointLoc","Orange"]}
summon marker 87 -26 49 {Tags:["WeakpointLoc","Orange"]}
summon marker 58 -27 50 {Tags:["WeakpointLoc","Orange"]}
summon marker 65 -19 53 {Tags:["WeakpointLoc","Orange"]}
summon marker 68 -11 53 {Tags:["WeakpointLoc","Orange"]}
summon marker 83 -14 52 {Tags:["WeakpointLoc","Orange"]}