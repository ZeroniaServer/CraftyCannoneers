execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 1 1 1 1 ~ ~ ~-1 0.5 0 0 0 10 force @a[tag=UsingSpyglass,tag=!SeeWeakpoint]
execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 0 1 0 1 ~ ~ ~-1 0.5 0 0 0 10 force @a[tag=UsingSpyglass,tag=SeeWeakpoint]

execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 1 1 1 1 ~ ~2 ~-1 0.5 0 0 0 10 force @a[tag=UsingSpyglass,tag=!SeeWeakpoint]
execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 0 1 0 1 ~ ~2 ~-1 0.5 0 0 0 10 force @a[tag=UsingSpyglass,tag=SeeWeakpoint]

execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 1 1 1 1 ~1 ~1 ~-1 0 0.5 0 0 10 force @a[tag=UsingSpyglass,tag=!SeeWeakpoint]
execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 0 1 0 1 ~1 ~1 ~-1 0 0.5 0 0 10 force @a[tag=UsingSpyglass,tag=SeeWeakpoint]

execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 1 1 1 1 ~-1 ~1 ~-1 0 0.5 0 0 10 force @a[tag=UsingSpyglass,tag=!SeeWeakpoint]
execute as @e[tag=Weakpoint,type=slime] at @s run particle dust 0 1 0 1 ~-1 ~1 ~-1 0 0.5 0 0 10 force @a[tag=UsingSpyglass,tag=SeeWeakpoint]

effect give @e[type=slime] invisibility 1 100 true

tag @a remove UsingSpyglass
tag @a remove SeeWeakpoint