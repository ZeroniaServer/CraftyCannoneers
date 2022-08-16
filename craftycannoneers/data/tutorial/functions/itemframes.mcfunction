loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=Cutlass] container.0 loot weapons:cutlass
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=Saber] container.0 loot weapons:saber
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=BoardingAxe] container.0 loot weapons:boarding_axe
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=BattleAxe] container.0 loot weapons:battle_axe
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=Mace] container.0 loot weapons:mace
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=Hook] container.0 loot weapons:hook
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=Crossbow] container.0 loot weapons:crossbow_loaded
loot replace entity @e[type=item_frame,tag=TutorialWeapon,tag=Harpoon] container.0 loot weapons:harpoon

execute as @e[type=item_frame,tag=TutorialWeapon,tag=!Mace,tag=!Crossbow] run data merge entity @s {ItemRotation:7b}
execute as @e[type=item_frame,tag=TutorialWeapon,tag=Mace] run data merge entity @s {ItemRotation:1b}
execute as @e[type=item_frame,tag=TutorialWeapon,tag=Crossbow] run data merge entity @s {ItemRotation:1b}