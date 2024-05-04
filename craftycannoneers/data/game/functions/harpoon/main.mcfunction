#> Default case: no change
scoreboard players set $harpoon CmdData -1

#> When you're on land, in a boat, or climbing out of water, replace all active and inactive harpoons with normal (no riptide and full durability)
execute if entity @s[nbt={OnGround:1b},predicate=!game:inwater] run scoreboard players set $harpoon CmdData 0
execute if entity @s[scores={climb=1..},predicate=!game:inwater] run scoreboard players set $harpoon CmdData 0
execute if predicate game:boat/inboat run scoreboard players set $harpoon CmdData 0

#> When you're in water and not in a boat, replace all normal harpoons with active (has riptide and full durability)
execute if predicate game:inwater unless predicate game:boat/inboat run scoreboard players set $harpoon CmdData 1

#> Call inventory-wide harpoon replacement function
execute if function game:harpoon/condition run function game:harpoon/replace
scoreboard players operation @s harpoonstate = $harpoon CmdData

#> When you've used an active harpoon, replace it with an inactive harpoon (no riptide and no durability)
loot replace entity @s[predicate=game:harpoon_active_mainhand,scores={useharpoon=1..}] weapon.mainhand loot weapons:harpoon_inactive
loot replace entity @s[predicate=game:harpoon_active_offhand,scores={useharpoon=1..}] weapon.offhand loot weapons:harpoon_inactive
scoreboard players reset @s[scores={useharpoon=1..}] useharpoon