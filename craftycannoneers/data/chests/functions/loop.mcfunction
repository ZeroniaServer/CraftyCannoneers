#> Pop up from the ground
execute as @e[tag=NewChest] unless score @s CmdData matches 31.. run scoreboard players add @s CmdData 1
execute as @e[tag=NewChest,scores={CmdData=1..30}] at @s run tp @s ~ ~0.033 ~
execute as @e[tag=NewChest,scores={CmdData=1..30}] at @s run particle block sand ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[tag=NewChest,scores={CmdData=1..30}] at @s run particle block dirt ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[tag=NewChest,scores={CmdData=1..30}] at @s run playsound minecraft:block.sand.break master @a ~ ~ ~ 1 1
execute as @e[tag=NewChest,scores={CmdData=1}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1.2 0.9

#Common
execute as @e[tag=CChestHopper,tag=!Opened] at @s if data entity @s Items run item replace entity @e[tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:20}
execute as @e[tag=CChestHopper,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 1.3
execute as @e[tag=CChestHopper,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.6
execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[tag=CChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run kill @s

execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run item replace entity @e[tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tag @e[tag=CChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tp @s ~ ~-200 ~
execute as @e[tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run kill @s

#Uncommon
execute as @e[tag=UCChestHopper,tag=!Opened] at @s if data entity @s Items run item replace entity @e[tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:24}
execute as @e[tag=UCChestHopper,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 1.1
execute as @e[tag=UCChestHopper,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.6
execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[tag=UCChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run kill @s

execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run item replace entity @e[tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tag @e[tag=UCChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tp @s ~ ~-200 ~
execute as @e[tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run kill @s

#Rare
execute as @e[tag=RChestHopper,tag=!Opened] at @s if data entity @s Items run item replace entity @e[tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:27}
execute as @e[tag=RChestHopper,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute as @e[tag=RChestHopper,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.6
execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[tag=RChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run kill @s

execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run item replace entity @e[tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tag @e[tag=RChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tp @s ~ ~-200 ~
execute as @e[tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run kill @s

#> Go down when empty
scoreboard players add @e[tag=Looted,scores={CmdData=30..220}] CmdData 1
execute as @e[tag=Looted,scores={CmdData=171..220}] at @s run tp @s ~ ~-0.033 ~
execute as @e[tag=Looted,scores={CmdData=171..200}] at @s run particle block sand ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[tag=Looted,scores={CmdData=171..200}] at @s run particle block dirt ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[tag=Looted,scores={CmdData=171..200}] at @s run playsound minecraft:block.sand.break master @a ~ ~ ~ 1 1.1
execute as @e[tag=Looted,scores={CmdData=200}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1.2 0.8
execute as @e[tag=Looted,scores={CmdData=220..}] at @s run tp @s ~ ~-200 ~
execute as @e[tag=Looted,scores={CmdData=220..}] at @s run kill @s