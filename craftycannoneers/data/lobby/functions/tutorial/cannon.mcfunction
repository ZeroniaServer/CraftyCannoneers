tag @s remove TutorialCannon
scoreboard players add @s CannonTutorial 1
execute if entity @s[scores={CannonTutorial=8..}] run scoreboard players set @s CannonTutorial 1

execute if entity @s[scores={CannonTutorial=7}] run advancement grant @s only tutorial:objectives/cannon
execute if entity @s[scores={CannonTutorial=7}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"What are you waiting for? Start shooting some Cannons and see if you can hit those Weakpoints!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=6}] run tellraw @s ["",{"text":"[6/7] ","color":"gray"},{"text":"There are other special Cannonballs that you can find in Treasure Chests or buy at your ship. These have unique properties, so make sure you read the item descriptions in your inventory to learn about what they do!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=5}] run tellraw @s ["",{"text":"[5/7] ","color":"gray"},{"text":"You can preview your shot without losing Gunpowder by shooting a Tracer Cannonball instead. Tracer Cannonballs leave a green particle trail that only you can see, and you get them back once they hit something. You also spawn with them!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=4}] run tellraw @s ["",{"text":"[4/7] ","color":"gray"},{"text":"Once you're done loading up Gunpowder, you can shoot a Cannonball by placing it at the back of the Cannon. The Cannon takes a few seconds to fire up, and then... thar she blows!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=3}] run tellraw @s ["",{"text":"[3/7] ","color":"gray"},{"text":"The more Gunpowder you put in the Cannon, the stronger the shot will be. You can also use the Gunpowder slots to aim your shot in a given direction by loading more Gunpowder in one slot than the other.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=2}] run tellraw @s ["",{"text":"[2/7] ","color":"gray"},{"text":"Cannons have 2 slots on the sides. If you click on these slots with Gunpowder, you will fill up a part of the slot. Each slot can store up to 7 Gunpowder.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=1}] run tellraw @s ["",{"text":"[1/7] ","color":"gray"},{"text":"Cannons are the main gameplay element of Crafty Cannoneers. You use them to destroy the enemy ship or kill enemy players occupying the center island. Here at the Cannon Dock, you can learn how to become a true cannoneer!","color":"green"},"\n"]

tag @s add TutorialCannon
advancement revoke @s only lobby:cannontutorial
advancement grant @s only tutorial:zzzunlockables/tutorial