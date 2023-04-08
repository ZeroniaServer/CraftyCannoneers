#> Empty - TODO CHANGE THIS WHEN WE ADD LOOT LOADER FUNCTIONALITY!!!
execute at @s[nbt={Items:[]},tag=!fakelockedchest,scores={LootLoader=32..}] run function tutorial:treasurepit/empty
execute at @s[nbt={Items:[]},tag=fakelockedchest] run function tutorial:treasurepit/empty

#> Abandoned
execute unless entity @a[team=Lobby,distance=..7] run function tutorial:treasurepit/abandoned