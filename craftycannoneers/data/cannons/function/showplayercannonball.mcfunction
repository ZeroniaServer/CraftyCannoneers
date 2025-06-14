item replace entity @s[tag=init] armor.head with minecraft:diamond_hoe[custom_model_data={floats:[106.0f]}]
tag @s[tag=!init] add init

execute if entity @s[tag=vacant] run return 0
execute unless entity @a[tag=PlayerCannon,limit=1] on passengers run item replace entity @s[tag=PCannonballdeco] contents with air
execute unless entity @a[tag=PlayerCannon,limit=1] on passengers run item replace entity @s[tag=PCannonballhat] contents with air
execute unless entity @a[tag=PlayerCannon,limit=1] if entity @s[tag=!vacant] on passengers on passengers run data modify entity @s[tag=PCannonballname] CustomNameVisible set value 0b
execute unless entity @a[tag=PlayerCannon,limit=1] if entity @s[tag=!vacant] on passengers on passengers run data modify entity @s[tag=PCannonballname] CustomName set value {text:""}
execute unless entity @a[tag=PlayerCannon,limit=1] run tag @s[tag=!vacant] add vacant
execute if entity @s[tag=vacant] run return 0

execute on passengers run item replace entity @s[tag=PCannonballhat] contents from entity @a[tag=PlayerCannon,limit=1] armor.head
data modify storage craftycannoneers:playercb CustomName set from entity @s CustomName
execute if entity @a[tag=PlayerCannon,tag=!CannonMVP,tag=!KillMVP,limit=1] on passengers on passengers run data modify entity @s[tag=PCannonballname,type=slime] CustomName set from storage craftycannoneers:playercb CustomName
execute if entity @a[tag=PlayerCannon,tag=!CannonMVP,tag=!KillMVP,limit=1] on passengers on passengers run data modify entity @s[tag=PCannonballname,type=cow] CustomName set value [{translate:"space.-4096"},{text:""},{translate:"space.-4096"}]
execute unless entity @a[tag=PlayerCannon,tag=!CannonMVP,tag=!KillMVP,limit=1] on passengers on passengers run data modify entity @s[tag=PCannonballname,type=slime] CustomName set value [{translate:"space.-4096"},{text:""},{translate:"space.-4096"}]
execute unless entity @a[tag=PlayerCannon,tag=!CannonMVP,tag=!KillMVP,limit=1] on passengers on passengers run data modify entity @s[tag=PCannonballname,type=cow] CustomName set from storage craftycannoneers:playercb CustomName

execute if entity @s[tag=occupied] run return 0
execute as @a[tag=PlayerCannon,limit=1] as @e[type=item_display,tag=PCannonballdeco,limit=1,sort=nearest] at @s run rotate @s ~180 ~
execute as @a[tag=PlayerCannon,limit=1] run loot replace entity @e[type=item_display,tag=PCannonballdeco,limit=1,sort=nearest] contents loot cannons:playerhead
execute on passengers on passengers run data modify entity @s[tag=PCannonballname] CustomNameVisible set value 1b
tag @s add occupied