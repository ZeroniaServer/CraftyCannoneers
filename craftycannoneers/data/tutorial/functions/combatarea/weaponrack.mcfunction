loot replace entity @s[tag=Cutlass] container.0 loot weapons:cutlass
loot replace entity @s[tag=Saber] container.0 loot weapons:saber
loot replace entity @s[tag=BoardingAxe] container.0 loot weapons:boarding_axe
loot replace entity @s[tag=BattleAxe] container.0 loot weapons:battle_axe
loot replace entity @s[tag=Mace] container.0 loot weapons:mace
loot replace entity @s[tag=Hook] container.0 loot weapons:hook
loot replace entity @s[tag=Crossbow] container.0 loot weapons:crossbow_loaded
loot replace entity @s[tag=Harpoon] container.0 loot weapons:harpoon

data merge entity @s[tag=!Mace,tag=!Crossbow] {ItemRotation:7b}
data merge entity @s[tag=Mace] {ItemRotation:1b}
data merge entity @s[tag=Crossbow] {ItemRotation:1b}