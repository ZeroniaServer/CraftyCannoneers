scoreboard players add $Tip CmdData 1

execute if score $Tip CmdData matches 1200.. run tag @e[type=marker,tag=TipSet,limit=1,sort=random] add Selected

execute as @e[type=marker,tag=Tip1,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"If you want to shoot a Cannonball more towards the left or right, you can put unequal amounts of Gunpowder into a Cannon's Gunpowder slots.","color":"gray"}]
execute as @e[type=marker,tag=Tip2,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"In order to shoot a Cannonball you need to place Gunpowder in at least one of the 2 slots on the sides of the Cannon.","color":"gray"}]
execute as @e[type=marker,tag=Tip3,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"All Cannonballs have different properties. Make sure to read the item lore to see what they do.","color":"gray"}]
execute as @e[type=marker,tag=Tip4,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Fire placed by Hot Cannonballs will deal extra damage to a ship once it extinguishes.","color":"gray"}]
execute as @e[type=marker,tag=Tip5,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Chain Cannonballs deal bonus damage to the sails of ships.","color":"gray"}]
execute as @e[type=marker,tag=Tip6,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Cannonball Clusters are weak against ships, but they'll kill players with ease.","color":"gray"}]
execute as @e[type=marker,tag=Tip7,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Use your Spotting Spyglass to locate and temporarily expose weakpoints on the enemy ship.","color":"gray"}]
execute as @e[type=marker,tag=Tip8,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Using a Harpoon underwater will allow you to perform a quick dash.","color":"gray"}]
execute as @e[type=marker,tag=Tip9,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"You can use a Skeleton Key to open the Team Chest of your enemies or open Locked Treasure Chests.","color":"gray"}]
execute as @e[type=marker,tag=Tip10,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Killing an enemy regenerates a little bit of health.","color":"gray"}]
execute as @e[type=marker,tag=Tip11,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Players drop a small amount of Gold on death.","color":"gray"}]
execute as @e[type=marker,tag=Tip12,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"If you die, you lose all items you were carrying with you.","color":"gray"}]
execute as @e[type=marker,tag=Tip13,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Share any leftover resources with your teammates either by dropping them or putting it in the Team Chest on your ship.","color":"gray"}]
execute as @e[type=marker,tag=Tip14,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Arrows have a 50% chance of breaking on impact.","color":"gray"}]
execute as @e[type=marker,tag=Tip15,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"In order to shoot a Cannonball you need to place Gunpowder in at least one of the 2 slots on the sides of the Cannon.","color":"gray"}]
execute as @e[type=marker,tag=Tip16,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Gas Cannonballs leave a cloud of Gas that weaken and damage any players who get inside it.","color":"gray"}]
execute as @e[type=marker,tag=Tip17,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Bouncy Cannonballs will blow up randomly after bouncing around for a little bit.","color":"gray"}]
execute as @e[type=marker,tag=Tip18,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"10 Gunpowder is a good amount to keep in mind if you want to hit the hull of a ship.","color":"gray"}]
execute as @e[type=marker,tag=Tip19,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"You can remove Gunpowder from the Gunpowder slots of a Cannon by interacting with them while you're not holding Gunpowder in your hand.","color":"gray"}]
execute as @e[type=marker,tag=Tip20,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Tracer Cannonball shots don't consume any Gunpowder! You can use them to get a rough estimate of where your shot will land.","color":"gray"}]
execute as @e[type=marker,tag=Tip21,tag=Selected] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"text":"TIP!","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"text":"Chain Cannonballs and Cannonball Clusters are a bit less accurate than the other Cannonball types.","color":"gray"}]

execute as @e[type=marker,tag=TipSet,tag=Selected] as @a[tag=!hideTips,scores={GamesPlayed=2..}] run tellraw @s ["",{"text":"(Play ","color":"dark_aqua"},{"score":{"name":"@s","objective":"GamesPlayed"},"color":"dark_aqua"},{"text":" more games to be able to hide tips.)","color":"dark_aqua"}]
execute as @e[type=marker,tag=TipSet,tag=Selected] run tellraw @a[tag=!hideTips,scores={GamesPlayed=1}] ["",{"text":"(Play 1 more game to be able to hide tips.","color":"dark_aqua"}]
execute as @e[type=marker,tag=TipSet,tag=Selected] run tellraw @a[tag=!hideTips,scores={GamesPlayed=..0}] ["",{"text":"(Click ","color":"dark_aqua"},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger toggleTips"},"hoverEvent":{"action":"show_text","contents":["Click to disable tips!"]}},{"text":" to disable tips!)","color":"dark_aqua"}]

execute unless entity @e[type=marker,tag=TipSet,tag=!Selected] run function tutorial:newset
kill @e[type=marker,tag=TipSet,tag=Selected]


execute if score $Tip CmdData matches 1200.. run scoreboard players reset $Tip CmdData