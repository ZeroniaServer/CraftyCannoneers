scoreboard players add @s LootLoader 1
tag @s[scores={LootLoader=32}] remove LoadLoot

### Real Chests

#> Common
execute at @s[tag=CChestHopper,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=1}] run loot replace entity @s hotbar.0 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=8}] run loot replace entity @s hotbar.1 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=16}] run loot replace entity @s hotbar.2 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=24}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=24}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=24}] run loot replace entity @s hotbar.3 loot chests:common/chest

execute at @s[tag=CChestHopper,scores={LootLoader=32}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestHopper,scores={LootLoader=32}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestHopper,scores={LootLoader=32}] run loot replace entity @s hotbar.4 loot chests:common/chest

#> Uncommon
execute at @s[tag=UCChestHopper,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=1}] run loot replace entity @s hotbar.0 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=8}] run loot replace entity @s hotbar.1 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=16}] run loot replace entity @s hotbar.2 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=24}] run loot replace entity @s hotbar.3 loot chests:uncommon/chest

execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestHopper,scores={LootLoader=32}] run loot replace entity @s hotbar.4 loot chests:uncommon/chest

#> Rare
execute at @s[tag=RChestHopper,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=1}] run loot replace entity @s hotbar.0 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=8}] run loot replace entity @s hotbar.1 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=16}] run loot replace entity @s hotbar.2 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=24}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=24}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=24}] run loot replace entity @s hotbar.3 loot chests:rare/chest

execute at @s[tag=RChestHopper,scores={LootLoader=32}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestHopper,scores={LootLoader=32}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestHopper,scores={LootLoader=32}] run loot replace entity @s hotbar.4 loot chests:rare/chest

#> Skeleton
execute at @s[tag=lockedchest,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=lockedchest,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=lockedchest,scores={LootLoader=1}] run data modify entity @s Items append from storage craftycannoneers:lockedchest Items[0]
execute at @s[tag=lockedchest,scores={LootLoader=1}] run data remove storage craftycannoneers:lockedchest Items[0]
scoreboard players set @s[tag=lockedchest,scores={LootLoader=4..}] LootLoader 0
execute unless data storage craftycannoneers:lockedchest Items[0] run scoreboard players set @s[tag=lockedchest] LootLoader 32

#> Cargo
execute at @s[tag=CargoHopper,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=1}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=4}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=4}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=4}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=8}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=12}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=12}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=12}] run function game:modifiers/lostcargo/lootloader

execute at @s[tag=CargoHopper,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run function game:modifiers/lostcargo/lootloader
execute at @s[tag=CargoHopper,scores={LootLoader=16}] run scoreboard players set @s LootLoader 32

### Training Chests

#> Common
execute at @s[tag=CChestFake,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=1}] run loot replace entity @s hotbar.0 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=8}] run loot replace entity @s hotbar.1 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=16}] run loot replace entity @s hotbar.2 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=24}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=24}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=24}] run loot replace entity @s hotbar.3 loot chests:common/chest

execute at @s[tag=CChestFake,scores={LootLoader=32}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=CChestFake,scores={LootLoader=32}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=CChestFake,scores={LootLoader=32}] run loot replace entity @s hotbar.4 loot chests:common/chest

#> Uncommon
execute at @s[tag=UCChestFake,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=1}] run loot replace entity @s hotbar.0 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=8}] run loot replace entity @s hotbar.1 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=16}] run loot replace entity @s hotbar.2 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=24}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=24}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=24}] run loot replace entity @s hotbar.3 loot chests:uncommon/chest

execute at @s[tag=UCChestFake,scores={LootLoader=32}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=UCChestFake,scores={LootLoader=32}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=UCChestFake,scores={LootLoader=32}] run loot replace entity @s hotbar.4 loot chests:uncommon/chest

#> Rare
execute at @s[tag=RChestFake,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=1}] run loot replace entity @s hotbar.0 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=8}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=8}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=8}] run loot replace entity @s hotbar.1 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=16}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=16}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=16}] run loot replace entity @s hotbar.2 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=24}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=24}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=24}] run loot replace entity @s hotbar.3 loot chests:rare/chest

execute at @s[tag=RChestFake,scores={LootLoader=32}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=RChestFake,scores={LootLoader=32}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=RChestFake,scores={LootLoader=32}] run loot replace entity @s hotbar.4 loot chests:rare/chest

#> Skeleton
execute at @s[tag=fakelockedchest,scores={LootLoader=1}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.2 1
execute at @s[tag=fakelockedchest,scores={LootLoader=1}] run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.2 1.6
execute at @s[tag=fakelockedchest,scores={LootLoader=1}] run data modify entity @s Items append from storage craftycannoneers:fakelockedchest Items[0]
execute at @s[tag=fakelockedchest,scores={LootLoader=1}] run data remove storage craftycannoneers:fakelockedchest Items[0]
scoreboard players set @s[tag=fakelockedchest,scores={LootLoader=4..}] LootLoader 0
execute unless data storage craftycannoneers:fakelockedchest Items[0] run scoreboard players set @s[tag=fakelockedchest] LootLoader 32