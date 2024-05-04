#> Arrow return
execute if items entity @s contents arrow run function everytick:arrowreturn

#> No drop
execute if items entity @s contents *[custom_data~{NoDrop:1b}] run function everytick:nodrop
execute if entity @s[tag=NoDropArrow] run function everytick:nodrop

#> Prevent boat drops
execute if items entity @s contents oak_planks run kill
execute if items entity @s contents stick run kill
execute if items entity @s contents oak_boat run kill
execute if items entity @s contents hopper_minecart run kill

#> Crab tracking
execute if score $Wildlife CmdData matches 1 if items entity @s contents *[custom_data~{CrabTrap:1b,Empty:0b}] run function weapons:crabtrap/trackitem