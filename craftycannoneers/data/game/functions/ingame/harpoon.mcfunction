#> Default case: no change
scoreboard players set $harpoon CmdData -1

#> When you're on land, in a boat, or climbing out of water, replace all active and inactive harpoons with normal (no riptide and full durability)
execute at @s[nbt={OnGround:1b}] unless predicate game:inwater run scoreboard players set $harpoon CmdData 0
execute if score @s climb matches 1.. unless predicate game:inwater run scoreboard players set $harpoon CmdData 0
execute if predicate game:boat/inboat run scoreboard players set $harpoon CmdData 0

#> When you're in water and not in a boat, replace all normal harpoons with active (has riptide and full durability)
execute if predicate game:inwater unless predicate game:boat/inboat run scoreboard players set $harpoon CmdData 1

#> Call inventory-wide harpoon replacement function
execute if score $harpoon CmdData matches 0..1 unless score @s harpoonstate = $harpoon CmdData run function game:harpoon/replace
scoreboard players operation @s harpoonstate = $harpoon CmdData

#> When you've used an active harpoon, replace it with an inactive harpoon (no riptide and no durability)
execute at @s[predicate=game:harpoon_active_mainhand,scores={useharpoon=1..}] run loot replace entity @s weapon.mainhand loot weapons:harpoon_inactive
execute at @s[predicate=game:harpoon_active_offhand,scores={useharpoon=1..}] run loot replace entity @s weapon.offhand loot weapons:harpoon_inactive