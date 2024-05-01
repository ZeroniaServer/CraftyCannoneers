scoreboard players set #hit raycast 1
execute if entity @s[type=slime,tag=Weakpoint,tag=Purple] run tag @a[team=Purple,tag=UsingSpyglass,tag=raycaster,limit=1] add SeeWeakpoint
execute if entity @s[type=slime,tag=Weakpoint,tag=Orange] run tag @a[team=Orange,tag=UsingSpyglass,tag=raycaster,limit=1] add SeeWeakpoint
execute if entity @s[type=interaction,tag=cannon] run tag @a[tag=raycaster,limit=1] add lookAtCannon
execute if entity @s[type=interaction,tag=cannon] run effect give @a[tag=raycaster,limit=1] weakness infinite 0 true
execute if entity @s[type=interaction,tag=cannon] run attribute @a[tag=raycaster,limit=1] generic.attack_damage modifier add 9c55d773-f866-4def-9740-6253d5ebb737 "nodamage" -100 add_value