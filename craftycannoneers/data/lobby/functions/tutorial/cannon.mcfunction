tag @s remove TutorialCannon
scoreboard players add @s CannonTutorial 1
execute if entity @s[scores={CannonTutorial=8..}] run scoreboard players set @s CannonTutorial 1

execute if entity @s[scores={CannonTutorial=7}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"What are you waiting for? Start shooting some Cannons!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=6}] run tellraw @s ["",{"text":"[6/6] ","color":"gray"},{"text":"There are special Cannonballs that you can find or buy at your ship. These have unique properties, so make sure you read the item descriptions in your inventory to learn about what they do!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=5}] run tellraw @s ["",{"text":"[5/6] ","color":"gray"},{"text":"You can shoot a Cannonball by placing a Cannonball at the back of the Cannon.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=4}] run tellraw @s ["",{"text":"[4/6] ","color":"gray"},{"text":"You can use the Gunpowder slots to aim your shot by putting more Gunpowder in one slot than the other.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=3}] run tellraw @s ["",{"text":"[3/6] ","color":"gray"},{"text":"The more Gunpowder you put in the Cannon, the stronger the shot will be.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=2}] run tellraw @s ["",{"text":"[2/6] ","color":"gray"},{"text":"Cannons have 2 slots on the sides. If you click on these slots with Gunpowder, you will fill up a part of the slot. Each slot can store up to 7 Gunpowder.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=1}] run tellraw @s ["",{"text":"[1/6] ","color":"gray"},{"text":"Cannons are the main gameplay element of Crafty Cannoneers; you use them to destroy the enemy ship or kill enemy players occupying the center island.","color":"green"},"\n"]

tag @s add TutorialCannon
advancement revoke @s only lobby:cannontutorial
advancement grant @s only tutorial:zzzunlockables/tutorial