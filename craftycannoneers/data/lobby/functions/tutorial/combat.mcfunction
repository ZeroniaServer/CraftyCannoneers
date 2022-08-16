tag @s remove TutorialCombat
scoreboard players add @s CombatTutorial 1
execute if entity @s[scores={CombatTutorial=8..}] run scoreboard players set @s CombatTutorial 1

execute if entity @s[scores={CombatTutorial=7}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"Go ahead, grab yourself some weapons from the Weapon Rack behind me and start beating up those Training Dummies!","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=6}] run tellraw @s ["",{"text":"[6/6] ","color":"gray"},{"text":"The Combat Area also has some Training Dummies! These have the same health and armor stats as any other Pirate! You can use these to find your favorite weapon combination and check exactly how much damage each weapon does.","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=5}] run tellraw @s ["",{"text":"[5/6] ","color":"gray"},{"text":"Each weapon has its own damage and attack speed. Some even have some special properties, like the Boarding Axe and the Harpoon. Read the item descriptions in your inventory to learn more about them.","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=4}] run tellraw @s ["",{"text":"[4/6] ","color":"gray"},{"text":"A blue handle means that the weapon can be found in Uncommon Treasure Chests, while a purple handle means it can be found in Rare Treasure Chests.","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=3}] run tellraw @s ["",{"text":"[3/6] ","color":"gray"},{"text":"You can see which type of Treasure Chest a weapon can be found in by looking at the color of its handle.","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=2}] run tellraw @s ["",{"text":"[2/6] ","color":"gray"},{"text":"Pirates are always equipped with a Cutlass and a Hand Crossbow. Other weapons can be found in different types of Treasure Chests.","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=1}] run tellraw @s ["",{"text":"[1/6] ","color":"gray"},{"text":"In Crafty Cannoneers, you have access to a wide variety of weapons.","color":"green"},"\n"]

tag @s add TutorialCombat
advancement revoke @s only lobby:combattutorial
advancement grant @s only tutorial:zzzunlockables/tutorial