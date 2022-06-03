tp @e[type=slime,tag=Weakpoint,tag=Orange] ~ ~-200 ~
kill @e[type=#game:weakpoint,tag=Weakpoint,tag=Orange]

tag @e[type=marker,tag=WeakpointLoc,tag=Purple] remove SelectedWeakP

tag @e[type=marker,tag=WeakpointLoc,tag=Purple,sort=random,limit=1] add SelectedWeakP

execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon slime ~ ~ ~1 {PersistenceRequired:1b,Tags:["Weakpoint","Orange","invisible"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~1 ~ ~1 {Tags:["Weakpoint","XParticle","1","Orange"]}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~-1 ~ ~1 {Tags:["Weakpoint","XParticle","2","Orange"]}

team join NoName @e[type=slime,tag=Weakpoint]

execute unless entity @e[type=marker,tag=WeakpointLoc,tag=Purple] run tellraw @a[team=Orange] {"text":"All ship weakpoints destroyed!","color":"dark_aqua"}

kill @e[type=marker,tag=SelectedWeakP]