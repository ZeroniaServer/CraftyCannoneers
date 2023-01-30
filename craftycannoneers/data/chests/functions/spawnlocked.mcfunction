tag @e[type=marker,tag=LockSpawn,limit=1,sort=random] add SelectedLock

execute as @e[type=marker,tag=SelectedLock,limit=1] at @s run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","LChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:69}}]}
kill @e[type=marker,tag=SelectedLock,limit=1]

execute as @e[type=armor_stand,tag=LChestAS,tag=!Randomized] at @s run function chests:randomrotation

scoreboard players operation $CombinedDamage CmdData -= $lockboxspawn CmdData