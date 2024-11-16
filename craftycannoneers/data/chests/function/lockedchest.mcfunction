execute at @s[tag=Unlocked,tag=!Spawned] run function chests:unlockedlock

scoreboard players add @s[tag=!Unlocked] eyeclick 1
execute at @s[scores={eyeclick=35..}] run function chests:lockedambient

execute at @s on passengers if entity @s[type=interaction] run function chests:lockedchestnotif