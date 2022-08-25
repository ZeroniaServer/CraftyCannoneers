title @s actionbar {"text":"Fly into a ring of seagulls to stop spectating!","bold":true,"color":"aqua"}

execute at @s[tag=!NewSpec] if entity @e[type=marker,tag=seagullSpawner,distance=..4] run trigger leavegame
execute unless entity @e[type=marker,tag=seagullSpawner,distance=..4] run tag @s[tag=NewSpec] remove NewSpec

execute unless entity @s[predicate=game:inarena] run function everytick:specbounds