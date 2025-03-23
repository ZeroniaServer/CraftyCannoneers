title @s actionbar {translate:"game.seagulls",bold:true,color:"aqua"}

execute at @s[tag=!NewSpec] if entity @e[type=marker,tag=seagullSpawner,distance=..4] run trigger leavegame
execute unless entity @e[type=marker,tag=seagullSpawner,distance=..4] run tag @s[tag=NewSpec] remove NewSpec

execute unless predicate game:inarena run function everytick:specbounds