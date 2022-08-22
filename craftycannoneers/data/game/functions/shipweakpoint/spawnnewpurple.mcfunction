tp @e[type=slime,tag=Weakpoint,tag=Orange] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint,tag=Orange]

tag @e[type=marker,tag=WeakpointLoc,tag=Purple] remove SelectedWeakP

tag @e[type=marker,tag=WeakpointLoc,tag=Purple,sort=random,limit=1] add SelectedWeakP

execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon slime ~ ~ ~2 {PersistenceRequired:1b,Tags:["Weakpoint","Orange","invisible","inship"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon slime ~ ~ ~7 {PersistenceRequired:1b,Tags:["Weakpoint","Orange","invisible"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~1 ~ ~1 {Tags:["Weakpoint","XParticle","1","Orange"]}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~-1 ~ ~1 {Tags:["Weakpoint","XParticle","2","Orange"]}

team join NoName @e[type=slime,tag=Weakpoint]

execute unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple] run tellraw @a[team=Orange] ["","\n",{"text":"All enemy Weakpoints have been destroyed!","color":"aqua"},"\n"]
execute unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple] run tellraw @a[team=Purple] ["","\n",{"text":"All of your Weakpoints have been destroyed!","color":"red"},"\n"]

kill @e[type=marker,tag=SelectedWeakP]