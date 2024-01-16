scoreboard players add @s LootLoader 0
tag @s[scores={LootLoader=32..}] remove LoadLoot

#> Common
execute at @s[tag=CChestHopper] run return run function chests:lootloader/chest {rarity:"common"}
execute at @s[tag=CChestFake] run return run function chests:lootloader/chest {rarity:"common"}

#> Uncommon
execute at @s[tag=UCChestHopper] run return run function chests:lootloader/chest {rarity:"uncommon"}
execute at @s[tag=UCChestFake] run return run function chests:lootloader/chest {rarity:"uncommon"}

#> Rare
execute at @s[tag=RChestHopper] run return run function chests:lootloader/chest {rarity:"rare"}
execute at @s[tag=RChestFake] run return run function chests:lootloader/chest {rarity:"rare"}

#> Skeleton
execute at @s[tag=lockedchest] run return run function chests:lootloader/skeleton {type:"lockedchest"}
execute at @s[tag=fakelockedchest] run return run function chests:lootloader/skeleton {type:"fakelockedchest"}

#> Cargo
execute at @s[tag=CargoHopper] run return run function chests:lootloader/cargo
execute at @s[tag=CargoHopperFake] run return run function chests:lootloader/cargo

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