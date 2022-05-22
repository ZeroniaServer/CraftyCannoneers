tp @e[tag=Weakpoint,type=slime] ~ ~-200 ~
kill @e[tag=Weakpoint]

tag @e[tag=WeakpointLoc] remove SelectedWeakP

tag @e[type=marker,tag=WeakpointLoc,tag=Purple,sort=random,limit=1] add SelectedWeakP
tag @e[type=marker,tag=WeakpointLoc,tag=Orange,sort=random,limit=1] add SelectedWeakP

execute as @e[tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon slime ~ ~-2 ~-1 {Tags:["Weakpoint","Purple","invisible"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~1 ~-2 ~ {Tags:["Weakpoint","XParticle","1","Purple"]}
execute as @e[tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~-1 ~-2 ~ {Tags:["Weakpoint","XParticle","2","Purple"]}


execute as @e[tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon slime ~ ~-2 ~1 {Tags:["Weakpoint","Orange","invisible"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon marker ~1 ~-2 ~ {Tags:["Weakpoint","XParticle","1","Orange"]}
execute as @e[tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon marker ~-1 ~-2 ~ {Tags:["Weakpoint","XParticle","2","Orange"]}

say @e[tag=Weakpoint]