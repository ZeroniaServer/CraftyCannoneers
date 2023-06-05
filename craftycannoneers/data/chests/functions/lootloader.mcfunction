scoreboard players add @s LootLoader 0
tag @s[scores={LootLoader=32..}] remove LoadLoot

### Real Chests

#> Common
execute at @s[tag=CChestHopper,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=CChestHopper,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=CChestHopper,scores={LootLoader=0}] run loot replace entity @s container.0 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=CChestHopper,scores={LootLoader=8}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=CChestHopper,scores={LootLoader=8}] run loot replace entity @s container.1 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=CChestHopper,scores={LootLoader=16}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=CChestHopper,scores={LootLoader=16}] run loot replace entity @s container.2 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=24}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=24}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=24}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=CChestHopper,scores={LootLoader=24}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=CChestHopper,scores={LootLoader=24}] run loot replace entity @s container.3 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=32}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=32}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=32}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=CChestHopper,scores={LootLoader=32}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=CChestHopper,scores={LootLoader=32}] run loot replace entity @s container.4 loot chests:common/chest

#> Uncommon
execute at @s[tag=UCChestHopper,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=UCChestHopper,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=UCChestHopper,scores={LootLoader=0}] run loot replace entity @s container.0 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=UCChestHopper,scores={LootLoader=8}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run loot replace entity @s container.1 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=UCChestHopper,scores={LootLoader=16}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run loot replace entity @s container.2 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=UCChestHopper,scores={LootLoader=24}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run loot replace entity @s container.3 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=UCChestHopper,scores={LootLoader=32}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run loot replace entity @s container.4 loot chests:uncommon/chest

#> Rare
execute at @s[tag=RChestHopper,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=RChestHopper,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=RChestHopper,scores={LootLoader=0}] run loot replace entity @s container.0 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=RChestHopper,scores={LootLoader=8}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=RChestHopper,scores={LootLoader=8}] run loot replace entity @s container.1 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=RChestHopper,scores={LootLoader=16}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=RChestHopper,scores={LootLoader=16}] run loot replace entity @s container.2 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=24}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=24}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=24}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=RChestHopper,scores={LootLoader=24}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=RChestHopper,scores={LootLoader=24}] run loot replace entity @s container.3 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=32}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=32}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=32}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=RChestHopper,scores={LootLoader=32}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=RChestHopper,scores={LootLoader=32}] run loot replace entity @s container.4 loot chests:rare/chest

#> Skeleton
execute at @s[tag=lockedchest,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=lockedchest,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=lockedchest,scores={LootLoader=0}] store result score $currentslot CmdData run data get storage craftycannoneers:lockedchest Items[0].Slot
execute at @s[tag=lockedchest,scores={LootLoader=0}] run function chests:dropslot
execute at @s[tag=lockedchest,scores={LootLoader=0}] run data modify entity @s Items append from storage craftycannoneers:lockedchest Items[0]
execute at @s[tag=lockedchest,scores={LootLoader=0}] run data remove storage craftycannoneers:lockedchest Items[0]
scoreboard players add @s[tag=lockedchest] LootLoader 1
scoreboard players set @s[tag=lockedchest,scores={LootLoader=4..}] LootLoader 0
execute unless data storage craftycannoneers:lockedchest Items[0] run scoreboard players set @s[tag=lockedchest] LootLoader 32

#> Cargo
execute at @s[tag=CargoHopper,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=CargoHopper,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=CargoHopper,scores={LootLoader=0}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=4}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=4}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=4}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=CargoHopper,scores={LootLoader=4}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=CargoHopper,scores={LootLoader=4}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=CargoHopper,scores={LootLoader=8}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=CargoHopper,scores={LootLoader=8}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=12}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=12}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=12}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=CargoHopper,scores={LootLoader=12}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=CargoHopper,scores={LootLoader=12}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=CargoHopper,scores={LootLoader=16}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run function game:modifiers/lostcargo/lootloader
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run scoreboard players set @s LootLoader 32

### Training Chests

#> Common
execute at @s[tag=CChestFake,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=CChestFake,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=CChestFake,scores={LootLoader=0}] run loot replace entity @s container.0 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=CChestFake,scores={LootLoader=8}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=CChestFake,scores={LootLoader=8}] run loot replace entity @s container.1 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=CChestFake,scores={LootLoader=16}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=CChestFake,scores={LootLoader=16}] run loot replace entity @s container.2 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=24}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=24}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=24}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=CChestFake,scores={LootLoader=24}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=CChestFake,scores={LootLoader=24}] run loot replace entity @s container.3 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=32}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=32}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=32}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=CChestFake,scores={LootLoader=32}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=CChestFake,scores={LootLoader=32}] run loot replace entity @s container.4 loot chests:common/chest

#> Uncommon
execute at @s[tag=UCChestFake,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=UCChestFake,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=UCChestFake,scores={LootLoader=0}] run loot replace entity @s container.0 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=UCChestFake,scores={LootLoader=8}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=UCChestFake,scores={LootLoader=8}] run loot replace entity @s container.1 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=UCChestFake,scores={LootLoader=16}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=UCChestFake,scores={LootLoader=16}] run loot replace entity @s container.2 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=24}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=24}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=24}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=UCChestFake,scores={LootLoader=24}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=UCChestFake,scores={LootLoader=24}] run loot replace entity @s container.3 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=32}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=32}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=32}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=UCChestFake,scores={LootLoader=32}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=UCChestFake,scores={LootLoader=32}] run loot replace entity @s container.4 loot chests:uncommon/chest

#> Rare
execute at @s[tag=RChestFake,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=0}] run scoreboard players set $currentslot CmdData 0
execute at @s[tag=RChestFake,scores={LootLoader=0}] if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute at @s[tag=RChestFake,scores={LootLoader=0}] run loot replace entity @s container.0 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=8}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=8}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=8}] run scoreboard players set $currentslot CmdData 1
execute at @s[tag=RChestFake,scores={LootLoader=8}] if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute at @s[tag=RChestFake,scores={LootLoader=8}] run loot replace entity @s container.1 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=16}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=16}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=16}] run scoreboard players set $currentslot CmdData 2
execute at @s[tag=RChestFake,scores={LootLoader=16}] if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute at @s[tag=RChestFake,scores={LootLoader=16}] run loot replace entity @s container.2 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=24}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=24}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=24}] run scoreboard players set $currentslot CmdData 3
execute at @s[tag=RChestFake,scores={LootLoader=24}] if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute at @s[tag=RChestFake,scores={LootLoader=24}] run loot replace entity @s container.3 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=32}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=32}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=32}] run scoreboard players set $currentslot CmdData 4
execute at @s[tag=RChestFake,scores={LootLoader=32}] if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute at @s[tag=RChestFake,scores={LootLoader=32}] run loot replace entity @s container.4 loot chests:rare/chest

#> Skeleton
execute at @s[tag=fakelockedchest,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=fakelockedchest,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=fakelockedchest,scores={LootLoader=0}] store result score $currentslot CmdData run data get storage craftycannoneers:fakelockedchest Items[0].Slot
execute at @s[tag=fakelockedchest,scores={LootLoader=0}] run function chests:dropslot
execute at @s[tag=fakelockedchest,scores={LootLoader=0}] run data modify entity @s Items append from storage craftycannoneers:fakelockedchest Items[0]
execute at @s[tag=fakelockedchest,scores={LootLoader=0}] run data remove storage craftycannoneers:fakelockedchest Items[0]
scoreboard players add @s[tag=fakelockedchest] LootLoader 1
scoreboard players set @s[tag=fakelockedchest,scores={LootLoader=4..}] LootLoader 0
execute unless data storage craftycannoneers:fakelockedchest Items[0] run scoreboard players set @s[tag=fakelockedchest] LootLoader 32

#> Grave
execute at @s[tag=grave,scores={LootLoader=0}] run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute at @s[tag=grave,scores={LootLoader=0}] run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=grave,scores={LootLoader=0}] store result score $currentslot CmdData on passengers run data get entity @s data.Items[0].Slot
execute at @s[tag=grave,scores={LootLoader=0}] run function chests:dropslot
execute at @s[tag=grave,scores={LootLoader=0}] on passengers run data modify storage craftycannoneers:grave CurrentItem set from entity @s data.Items[0]
execute at @s[tag=grave,scores={LootLoader=0}] run data modify entity @s Items append from storage craftycannoneers:grave CurrentItem
execute at @s[tag=grave,scores={LootLoader=0}] run data remove storage craftycannoneers:grave CurrentItem
execute at @s[tag=grave,scores={LootLoader=0}] on passengers run data remove entity @s data.Items[0]
scoreboard players add @s[tag=grave] LootLoader 1
scoreboard players set @s[tag=grave,scores={LootLoader=8..}] LootLoader 0
execute on passengers unless data entity @s data.Items[0] on vehicle run scoreboard players set @s[tag=grave] LootLoader 32

scoreboard players add @s[tag=!fakelockedchest,tag=!lockedchest,tag=!grave] LootLoader 1