execute if score @s LootLoader matches 0 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 0 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 0 run scoreboard players set $currentslot CmdData 0
execute if score @s LootLoader matches 0 if data entity @s Items[{Slot:0b}] run function chests:dropslot
$execute if score @s LootLoader matches 0 run loot replace entity @s container.0 loot chests:$(rarity)/chest

execute if score @s LootLoader matches 8 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 8 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 8 run scoreboard players set $currentslot CmdData 1
execute if score @s LootLoader matches 8 if data entity @s Items[{Slot:1b}] run function chests:dropslot
$execute if score @s LootLoader matches 8 run loot replace entity @s container.1 loot chests:$(rarity)/chest

execute if score @s LootLoader matches 16 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 16 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 16 run scoreboard players set $currentslot CmdData 2
execute if score @s LootLoader matches 16 if data entity @s Items[{Slot:2b}] run function chests:dropslot
$execute if score @s LootLoader matches 16 run loot replace entity @s container.2 loot chests:$(rarity)/chest

execute if score @s LootLoader matches 24 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 24 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 24 run scoreboard players set $currentslot CmdData 3
execute if score @s LootLoader matches 24 if data entity @s Items[{Slot:3b}] run function chests:dropslot
$execute if score @s LootLoader matches 24 run loot replace entity @s container.3 loot chests:$(rarity)/chest

execute if score @s LootLoader matches 32 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 32 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 32 run scoreboard players set $currentslot CmdData 4
execute if score @s LootLoader matches 32 if data entity @s Items[{Slot:4b}] run function chests:dropslot
$execute if score @s LootLoader matches 32 run loot replace entity @s container.4 loot chests:$(rarity)/chest

scoreboard players add @s LootLoader 1