#> Gas Display
execute as @e[type=item_display,tag=GasDisplay] at @s run function cannons:gas/gasdisplay

#> Gas Cloud
execute as @e[type=marker,tag=GasCloud] at @s run function cannons:gas/cloud

#> Gas Bubble
execute as @e[type=item_display,tag=GasBubble] at @s run function cannons:gas/bubble

#> No Natural Regeneration timer
tag @a[team=!Purple,team=!Orange] remove NoRegen
scoreboard players add @a[tag=NoRegen] NoRegenTimer 1
effect clear @a[tag=NoRegen] regeneration
tag @a[tag=NoRegen,scores={NoRegenTimer=120..}] remove NoRegen
scoreboard players reset @a[tag=!NoRegen,scores={NoRegenTimer=1..}] NoRegenTimer

#> Gas Bat
execute as @e[type=bat,tag=GasBat] at @s run function cannons:gas/bat