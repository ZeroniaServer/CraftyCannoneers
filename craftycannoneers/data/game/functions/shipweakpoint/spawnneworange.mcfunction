tp @e[type=slime,tag=Weakpoint,tag=Purple] ~ ~-200 ~
kill @e[type=#game:weakpoint,tag=Weakpoint,tag=Purple]

tag @e[type=marker,tag=WeakpointLoc,tag=Orange] remove SelectedWeakP

tag @e[type=marker,tag=WeakpointLoc,tag=Orange,sort=random,limit=1] add SelectedWeakP

execute as @e[type=marker,tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon slime ~ ~ ~-1 {PersistenceRequired:1b,Tags:["Weakpoint","Purple","invisible"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon marker ~1 ~ ~-1 {Tags:["Weakpoint","XParticle","1","Purple"]}
execute as @e[type=marker,tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon marker ~-1 ~ ~-1 {Tags:["Weakpoint","XParticle","2","Purple"]}

team join NoName @e[type=slime]

kill @e[type=marker,tag=SelectedWeakP]