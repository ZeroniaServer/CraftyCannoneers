tag @s remove TutorialChest
scoreboard players add @s ChestTutorial 1
execute if entity @s[scores={ChestTutorial=8..}] run scoreboard players set @s ChestTutorial 1

execute as @s at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 2
execute if entity @s[scores={ChestTutorial=7}] run tellraw @s ["",{"text":"[7/7] ","color":"gray"},{"text":"Gold can be used to purchase Special Cannonballs on your ship.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=6}] run tellraw @s ["",{"text":"[6/7] ","color":"gray"},{"text":"It's good to stick around on the island and take as much loot from Chests as possible. But be careful: if you die, you lose all the items you were carrying with you.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=5}] run tellraw @s ["",{"text":"[5/7] ","color":"gray"},{"text":"Rare","bold":true,"color":"dark_purple"},{"text":": Gold, Gunpowder, Simple Cannonballs, Arrows, Golden Apples, Trooper Ale, Shields, Weapons, Rare Weapons & Special Cannonballs.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=4}] run tellraw @s ["",{"text":"[4/7] ","color":"gray"},{"text":"Uncommon","bold":true,"color":"dark_aqua"},{"text":": Gold, Gunpowder, Simple Cannonballs, Arrows, Golden Apples, Trooper Ale, Shields & Weapons.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=3}] run tellraw @s ["",{"text":"[3/7] ","color":"gray"},{"text":"Common","bold":true,"color":"gray"},{"text":": Gold, Gunpowder, Simple Cannonballs, Arrows, & Golden Apples","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=2}] run tellraw @s ["",{"text":"[2/7] ","color":"gray"},{"text":"There are 3 rarities of Loot Chests, all of them contain different items, and the rarer the Chest is, the more loot inside.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=1}] run tellraw @s ["",{"text":"[1/7] ","color":"gray"},{"text":"Loot Chests can be found on the small island in the middle of the map.","color":"green"},"\n"]

tag @s add TutorialChest
advancement revoke @s only lobby:chesttutorial