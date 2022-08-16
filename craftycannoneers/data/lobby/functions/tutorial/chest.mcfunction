tag @s remove TutorialChest
scoreboard players add @s ChestTutorial 1
execute if entity @s[scores={ChestTutorial=10..}] run scoreboard players set @s ChestTutorial 1

execute if entity @s[scores={ChestTutorial=9}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"Go on, start looting some treasures here to see what the loot looks like for yourself!","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=8}] run tellraw @s ["",{"text":"[8/8] ","color":"gray"},{"text":"Gold can be used to purchase Special Cannonballs on your ship.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=7}] run tellraw @s ["",{"text":"[7/8] ","color":"gray"},{"text":"It's good to stick around on the island and take as much loot from Chests as possible. But be careful: if you die, you lose all the items you were carrying with you.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=6}] run tellraw @s ["",{"text":"[6/8] ","color":"gray"},{"text":"Locked","bold":true,"color":"dark_red"},{"text":": Gold, Gunpowder, Arrows & Golden Cannonballs.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=5}] run tellraw @s ["",{"text":"[5/8] ","color":"gray"},{"text":"Rare","bold":true,"color":"dark_purple"},{"text":": Gold, Gunpowder, Cannonballs, Blast Bombs, Arrows, Golden Apples, Trooper Ale, Shields, Rare Weapons & Special Cannonballs.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=4}] run tellraw @s ["",{"text":"[4/8] ","color":"gray"},{"text":"Uncommon","bold":true,"color":"dark_aqua"},{"text":": Gold, Gunpowder, Cannonballs, Blast Bombs, Arrows, Golden Apples, Trooper Ale, Shields & Uncommon Weapons.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=3}] run tellraw @s ["",{"text":"[3/8] ","color":"gray"},{"text":"Common","bold":true,"color":"gray"},{"text":": Gold, Gunpowder, Cannonballs, Blast Bombs, Arrows, & Golden Apples","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=2}] run tellraw @s ["",{"text":"[2/8] ","color":"gray"},{"text":"There are 4 types of Treasure Chests, all of them contain different items, and the rarer the Chest is, the more loot inside.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=1}] run tellraw @s ["",{"text":"[1/8] ","color":"gray"},{"text":"Loot Chests can be found on the small island in the middle of the map.","color":"green"},"\n"]

tag @s add TutorialChest
advancement revoke @s only lobby:chesttutorial
advancement grant @s only tutorial:zzzunlockables/tutorial