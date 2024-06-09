execute if score @s LootLoader matches 0 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 0 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
$execute if score @s LootLoader matches 0 store result score $currentslot CmdData run data get storage craftycannoneers:$(type) Items[0].Slot
execute if score @s LootLoader matches 0 run function chests:dropslot
$execute if score @s LootLoader matches 0 run data modify entity @s Items append from storage craftycannoneers:$(type) Items[0]
$execute if score @s LootLoader matches 0 run data remove storage craftycannoneers:$(type) Items[0]
scoreboard players add @s LootLoader 1
scoreboard players set @s[scores={LootLoader=3..}] LootLoader 0
$execute unless data storage craftycannoneers:$(type) Items[0] run scoreboard players set @s LootLoader 32