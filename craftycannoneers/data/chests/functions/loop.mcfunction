#> Pop up from the ground
execute as @e[type=armor_stand,tag=NewChest] unless score @s CmdData matches 31.. run scoreboard players add @s CmdData 1
execute as @e[type=armor_stand,tag=NewChest,scores={CmdData=1..30}] at @s run tp @s ~ ~0.033 ~
execute as @e[type=armor_stand,tag=NewChest,scores={CmdData=1..30}] at @s run particle block sand ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=armor_stand,tag=NewChest,scores={CmdData=1..30}] at @s run particle block dirt ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=armor_stand,tag=NewChest,scores={CmdData=1..30}] at @s run playsound minecraft:block.sand.break master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=NewChest,scores={CmdData=1}] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1.2 0.9

#> Particles
#Common
execute as @e[type=armor_stand,tag=CChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_gray_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a
execute as @e[type=armor_stand,tag=CChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=!Spectator,team=!Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=CChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_gray_concrete ~ ~2 ~ 0 0 0 0.1 1 force @a[team=!Spectator,team=!Lobby,distance=13..]
#Uncommon
execute as @e[type=armor_stand,tag=UCChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_blue_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a
execute as @e[type=armor_stand,tag=UCChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_blue_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=!Spectator,team=!Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=UCChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_blue_concrete ~ ~2 ~ 0 0 0 0.1 1 force @a[team=!Spectator,team=!Lobby,distance=13..]
#Rare
execute as @e[type=armor_stand,tag=RChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust purple_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a
execute as @e[type=armor_stand,tag=RChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=!Spectator,team=!Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=RChestAS,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust purple_concrete ~ ~2 ~ 0 0 0 0.1 1 force @a[team=!Spectator,team=!Lobby,distance=13..]

#Common
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:20}
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 1.3
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.6
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..6] run kill @s

execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tag @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tp @s ~ ~-200 ~
execute as @e[type=hopper_minecart,tag=CChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run kill @s

#Uncommon
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:24}
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 1.1
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.6
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..6] run kill @s

execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tag @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tp @s ~ ~-200 ~
execute as @e[type=hopper_minecart,tag=UCChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run kill @s

#Rare
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:27}
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.6
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..6] run kill @s

execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tag @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run tp @s ~ ~-200 ~
execute as @e[type=hopper_minecart,tag=RChestHopper,tag=Opened,tag=!Looted] at @s unless entity @a[team=!Lobby,distance=..7] run kill @s

#> Go down when empty
scoreboard players add @e[type=#game:chest,tag=Looted,scores={CmdData=30..220}] CmdData 1
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=171}] at @s run kill @e[type=hopper_minecart,tag=Looted,distance=..1,sort=nearest]
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=171..220}] at @s run tp @s ~ ~-0.033 ~
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=171..200}] at @s run particle block sand ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=171..200}] at @s run particle block dirt ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=171..200}] at @s run playsound minecraft:block.composter.fill master @a ~ ~ ~ 1 1.6
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=200}] at @s run playsound minecraft:block.composter.fill_success master @a ~ ~ ~ 1 1.7
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=220..}] at @s run tp @s ~ ~-200 ~
execute as @e[type=#game:chest,tag=Looted,scores={CmdData=220..}] at @s run kill @s



#> Prevent certain items from being stored in chests
#Hoppers
execute as @e[type=minecraft:hopper_minecart,nbt={Items:[{id:"minecraft:iron_sword"}]}] at @s as @a[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]},distance=..6] run function chests:checkitems
execute as @e[type=minecraft:hopper_minecart,nbt={Items:[{id:"minecraft:crossbow"}]}] at @s as @a[nbt=!{Inventory:[{id:"minecraft:crossbow"}]},distance=..6] run function chests:checkitems
execute as @e[type=minecraft:hopper_minecart,nbt={Items:[{id:"minecraft:spyglass"}]}] at @s as @a[nbt=!{Inventory:[{id:"minecraft:spyglass"}]},distance=..6] run function chests:checkitems

execute as @e[type=minecraft:hopper_minecart,nbt={Items:[{id:"minecraft:iron_sword"}]}] run data remove entity @s Items[{id:"minecraft:iron_sword"}]
execute as @e[type=minecraft:hopper_minecart,nbt={Items:[{id:"minecraft:crossbow"}]}] run data remove entity @s Items[{id:"minecraft:crossbow"}]
execute as @e[type=minecraft:hopper_minecart,nbt={Items:[{id:"minecraft:spyglass"}]}] run data remove entity @s Items[{id:"minecraft:spyglass"}]

#Chests
execute as @e[type=minecraft:chest_minecart,nbt={Items:[{id:"minecraft:iron_sword"}]}] at @s as @a[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]},distance=..6] run function chests:checkitems
execute as @e[type=minecraft:chest_minecart,nbt={Items:[{id:"minecraft:crossbow"}]}] at @s as @a[nbt=!{Inventory:[{id:"minecraft:crossbow"}]},distance=..6] run function chests:checkitems
execute as @e[type=minecraft:chest_minecart,nbt={Items:[{id:"minecraft:spyglass"}]}] at @s as @a[nbt=!{Inventory:[{id:"minecraft:spyglass"}]},distance=..6] run function chests:checkitems

execute as @e[type=minecraft:chest_minecart,nbt={Items:[{id:"minecraft:iron_sword"}]}] run data remove entity @s Items[{id:"minecraft:iron_sword"}]
execute as @e[type=minecraft:chest_minecart,nbt={Items:[{id:"minecraft:crossbow"}]}] run data remove entity @s Items[{id:"minecraft:crossbow"}]
execute as @e[type=minecraft:chest_minecart,nbt={Items:[{id:"minecraft:spyglass"}]}] run data remove entity @s Items[{id:"minecraft:spyglass"}]
