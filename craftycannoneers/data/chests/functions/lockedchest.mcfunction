execute as @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=!Spawned] at @s run summon chest_minecart ~ ~ ~ {Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["chest","lockedchest"],CustomName:'{"text":"Locked Treasure Chest","color":"dark_red","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
execute as @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=!Spawned] run tag @s add Spawned

execute as @e[type=chest_minecart,tag=lockedchest] at @s run tp @s @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=Spawned,limit=1,sort=nearest,distance=..2]