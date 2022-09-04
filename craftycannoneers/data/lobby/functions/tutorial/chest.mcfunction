tag @s remove TutorialChest
scoreboard players add @s ChestTutorial 1
execute if entity @s[scores={ChestTutorial=10..}] run scoreboard players set @s ChestTutorial 1

execute if entity @s[scores={ChestTutorial=9}] run advancement grant @s only tutorial:objectives/treasure
execute if entity @s[scores={ChestTutorial=9}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"Go on, start looting some treasure here to see what it's like!","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=8}] run tellraw @s ["",{"text":"[8/9] ","color":"gray"},{"text":"You can use Gold to purchase special Cannonballs from the Pirate Traders on your ship.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=7}] run tellraw @s ["",{"text":"[7/9] ","color":"gray"},{"text":"It's good to stick around on the island and take as much loot from the Treasure Chests as possible. But be careful: if you die, you lose all the items you were carrying with you!","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=6}] run tellraw @s ["",{"text":"[6/9] ","color":"gray"},{"text":"Skeleton","bold":true,"color":"dark_red"},{"text":": Gold, Gunpowder, Arrows & Golden Cannonballs.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=5}] run tellraw @s ["",{"text":"[5/9] ","color":"gray"},{"text":"Rare","bold":true,"color":"dark_purple"},{"text":": Gold, Gunpowder, Cannonballs, Blast Bombs, Arrows, Golden Apples, Trooper Ale, Shields, Rare Weapons & Special Cannonballs.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=4}] run tellraw @s ["",{"text":"[4/9] ","color":"gray"},{"text":"Uncommon","bold":true,"color":"dark_aqua"},{"text":": Gold, Gunpowder, Cannonballs, Blast Bombs, Arrows, Golden Apples, Trooper Ale, Shields & Uncommon Weapons.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=3}] run tellraw @s ["",{"text":"[3/9] ","color":"gray"},{"text":"Common","bold":true,"color":"gray"},{"text":": Gold, Gunpowder, Cannonballs, Blast Bombs, Arrows, & Golden Apples","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=2}] run tellraw @s ["",{"text":"[2/9] ","color":"gray"},{"text":"There are 4 types of Treasure Chests which can be found on the small island in the middle of the map. All of them contain different items, and the rarer the Chest is, the better loot you'll find inside.","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=1}] run tellraw @s ["",{"text":"[1/9] ","color":"gray"},{"text":"Welcome to the Treasure Pit! Here, you can learn about Treasure Chests and practice looting them for yourself.","color":"green"},"\n"]

tag @s add TutorialChest
advancement revoke @s only lobby:chesttutorial