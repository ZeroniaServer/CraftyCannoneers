execute at @s[tag=Unlocked,tag=!Spawned] run function chests:unlockedlock
execute at @s[tag=Unlocked,tag=Spawned] run tp @e[type=chest_minecart,tag=lockedchest,limit=1,sort=nearest,distance=..2] @s

scoreboard players add @s[tag=!Unlocked] eyeclick 1
execute at @s[scores={eyeclick=35..}] run function chests:lockedambient

execute at @s on passengers if entity @s[type=interaction] run function chests:lockedchestnotif