execute as @e[type=item_display,tag=CrabDisplay] at @s run function game:modifiers/crabs/animations
execute as @e[type=cat,tag=CrabEntity] run function everytick:permababy

#> Crab Rave
execute if score $crabrave CmdData matches 1.. run scoreboard players add $ravetime CmdData 1
execute if score $ravetime CmdData matches 100.. run scoreboard players reset $crabrave CmdData
execute if score $ravetime CmdData matches 100.. as @e[type=item_display,tag=CrabDisplay] run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}
execute if score $ravetime CmdData matches 100.. as @e[type=item_display,tag=CrabDisplay,tag=hashorn] at @s run playsound entity.item.break master @a ~ ~ ~ 1 1
execute if score $ravetime CmdData matches 100.. as @e[type=item_display,tag=CrabDisplay,tag=hashorn] at @s run particle item goat_horn ~ ~0.1 ~ 0 0 0 0.1 15 force
execute if score $ravetime CmdData matches 100.. as @e[type=item_display,tag=CrabDisplay,tag=hashorn] on passengers run item replace entity @s container.0 with air
execute if score $ravetime CmdData matches 100.. as @e[type=item_display,tag=CrabDisplay,tag=hashorn] run tag @s remove hasitem
execute if score $ravetime CmdData matches 100.. as @e[type=item_display,tag=CrabDisplay,tag=hashorn] run tag @s remove hashorn
execute if score $ravetime CmdData matches 100.. run scoreboard players reset $ravetime CmdData