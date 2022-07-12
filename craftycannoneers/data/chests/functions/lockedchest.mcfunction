execute as @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=!Spawned] at @s run summon chest_minecart ~ ~ ~ {LootTable:"chests:locked_treasure",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["chest","lockedchest"],CustomName:'{"text":"Locked Treasure Chest","color":"dark_red","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
execute as @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=!Spawned] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:70}
execute as @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=!Spawned] at @s run scoreboard players set @e[type=chest_minecart,tag=lockedchest,limit=1,sort=nearest,distance=..1] CmdData 30
execute as @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=!Spawned] run tag @s add Spawned

execute as @e[type=chest_minecart,tag=lockedchest] at @s run tp @s @e[type=armor_stand,tag=LChestAS,tag=Unlocked,tag=Spawned,limit=1,sort=nearest,distance=..2]

execute if score $CombinedDamage CmdData >= $lockboxspawn CmdData run function chests:spawnlocked
execute if score $CombinedDamage CmdData >= $lockboxspawn CmdData run scoreboard players reset $CombinedDamage CmdData