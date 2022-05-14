tag @s remove TutorialCannon
scoreboard players add @s CannonTutorial 1
execute if entity @s[scores={CannonTutorial=7..}] run scoreboard players set @s CannonTutorial 1

execute as @s at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 2
execute if entity @s[scores={CannonTutorial=6}] run tellraw @s ["",{"text":"[6/6] ","color":"gray"},{"text":"There are Special Cannonballs that you can find or purchase at your ship. These have special properties, so make sure you read the item lore in game to learn about what they do!","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=5}] run tellraw @s ["",{"text":"[5/6] ","color":"gray"},{"text":"If you load a Cannonball into the Cannon it start a timer and will shoot after 1.5 seconds.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=4}] run tellraw @s ["",{"text":"[4/6] ","color":"gray"},{"text":"You can use the Gunpowder slots to aim your shot by putting more Gunpowder in one slot than the other.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=3}] run tellraw @s ["",{"text":"[3/6] ","color":"gray"},{"text":"The more Gunpowder you put in the Cannon, the stronger the shot will be.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=2}] run tellraw @s ["",{"text":"[2/6] ","color":"gray"},{"text":"Cannons have 2 slots on them, if you click on these slots using Gunpowder you will fill up a part of the slot. Each slot can store 7 Gunpowder.","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=1}] run tellraw @s ["",{"text":"[1/6] ","color":"gray"},{"text":"Cannons are the main gameplay element of Crafty Cannoneers, you use them to destroy the enemy ship or kill enemy players occupying the center island.","color":"green"},"\n"]

tag @s add TutorialCannon
advancement revoke @s only lobby:cannontutorial