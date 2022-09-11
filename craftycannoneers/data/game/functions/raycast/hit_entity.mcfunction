scoreboard players set #hit raycast 1
execute if entity @s[tag=Weakpoint,tag=Purple] run tag @a[team=Purple,tag=raycaster,limit=1] add SeeWeakpoint
execute if entity @s[tag=Weakpoint,tag=Orange] run tag @a[team=Orange,tag=raycaster,limit=1] add SeeWeakpoint