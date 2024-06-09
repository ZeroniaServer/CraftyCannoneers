execute if score @s LootLoader matches 0 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 0 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 0 run scoreboard players set $currentslot CmdData 0
execute if score @s LootLoader matches 0 if data entity @s Items[{Slot:0b}] run function chests:dropslot
execute if score @s LootLoader matches 0 run function game:modifiers/lostcargo/lootloader

execute if score @s LootLoader matches 4 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 4 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 4 run scoreboard players set $currentslot CmdData 1
execute if score @s LootLoader matches 4 if data entity @s Items[{Slot:1b}] run function chests:dropslot
execute if score @s LootLoader matches 4 run function game:modifiers/lostcargo/lootloader

execute if score @s LootLoader matches 8 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 8 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 8 run scoreboard players set $currentslot CmdData 2
execute if score @s LootLoader matches 8 if data entity @s Items[{Slot:2b}] run function chests:dropslot
execute if score @s LootLoader matches 8 run function game:modifiers/lostcargo/lootloader

execute if score @s LootLoader matches 12 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 12 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 12 run scoreboard players set $currentslot CmdData 3
execute if score @s LootLoader matches 12 if data entity @s Items[{Slot:3b}] run function chests:dropslot
execute if score @s LootLoader matches 12 run function game:modifiers/lostcargo/lootloader

execute if score @s LootLoader matches 16 run playsound lootloader1 master @a ~ ~ ~ 0.2 1
execute if score @s LootLoader matches 16 run playsound lootloader2 master @a ~ ~ ~ 0.2 1.6
execute if score @s LootLoader matches 16 run scoreboard players set $currentslot CmdData 4
execute if score @s LootLoader matches 16 if data entity @s Items[{Slot:4b}] run function chests:dropslot
execute if score @s LootLoader matches 16 run function game:modifiers/lostcargo/lootloader
execute if score @s LootLoader matches 16 run scoreboard players set @s LootLoader 32

scoreboard players add @s LootLoader 1