execute as @e[tag=WeakpointLoc,tag=Orange] at @s if block ~1 ~1 ~1 air if block ~ ~2 ~1 air if block ~ ~ ~1 air if block ~-1 ~1 ~1 air if block ~ ~1 ~1 air run kill @s
execute as @e[tag=WeakpointLoc,tag=Purple] at @s if block ~1 ~1 ~-1 air if block ~ ~2 ~-1 air if block ~ ~ ~-1 air if block ~-1 ~1 ~-1 air if block ~ ~1 ~-1 air run kill @s

tp @e[tag=Weakpoint,type=slime,tag=Purple] ~ ~-200 ~
kill @e[tag=Weakpoint,tag=Purple]

tag @e[tag=WeakpointLoc,tag=Orange] remove SelectedWeakP

tag @e[type=marker,tag=WeakpointLoc,tag=Orange,sort=random,limit=1] add SelectedWeakP

execute as @e[tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon slime ~ ~ ~-1 {PresistanceRequired:1b,Tags:["Weakpoint","Purple","invisible"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon marker ~1 ~ ~-1 {Tags:["Weakpoint","XParticle","1","Purple"]}
execute as @e[tag=SelectedWeakP,tag=Orange] at @s unless block ~ ~ ~ air run summon marker ~-1 ~ ~-1 {Tags:["Weakpoint","XParticle","2","Purple"]}

team join NoName @e[type=slime]

kill @e[tag=SelectedWeakP]
