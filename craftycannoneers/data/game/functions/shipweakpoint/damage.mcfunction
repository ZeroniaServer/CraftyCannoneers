execute as @e[type=slime,tag=Purple] at @s if block ~1 ~1 ~1 air if block ~ ~2 ~1 air if block ~ ~ ~1 air if block ~-1 ~1 ~1 air if block ~ ~1 ~1 air run scoreboard players add $DamageOrange CmdData 55
execute as @e[type=slime,tag=Purple] at @s if block ~1 ~1 ~1 air if block ~ ~2 ~1 air if block ~ ~ ~1 air if block ~-1 ~1 ~1 air if block ~ ~1 ~1 air run function game:shipweakpoint/spawnneworange

execute as @e[type=slime,tag=Orange] at @s if block ~1 ~1 ~-1 air if block ~ ~2 ~-1 air if block ~ ~ ~-1 air if block ~-1 ~1 ~-1 air if block ~ ~1 ~-1 air run scoreboard players add $DamagePurple CmdData 55
execute as @e[type=slime,tag=Orange] at @s if block ~1 ~1 ~-1 air if block ~ ~2 ~-1 air if block ~ ~ ~-1 air if block ~-1 ~1 ~-1 air if block ~ ~1 ~-1 air run function game:shipweakpoint/spawnnewpurple
