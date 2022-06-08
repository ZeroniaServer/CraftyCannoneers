execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false}] unless entity @s[scores={notifyobjective=200..}] run scoreboard players add @s notifyobjective 1

execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=1}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"1/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Abandon your ship and make your way over to the center island.","color":"yellow"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=2}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"2/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Loot at least 10 Gunpowder and 10 Gold from Treasure Chests.","color":"yellow"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=3}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"3/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Return to your Ship.","color":"yellow"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=4}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"4/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Interact with a Trader on your Ship to view their offers. (If you don't have a Cannonball yet, buy one!)","color":"yellow"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=5}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"5/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Add some Gunpowder to one of your Cannon's Gunpowder Slots.","color":"yellow"},"\n",{"text":"(You can do this by holding Gunpowder in your hand and interacting with the 2 slots on the sides of a Cannon)","italic":true,"color":"gray"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=6}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"6/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Use a Tracer Cannonball to find out where your shot will land.","color":"yellow"},"\n",{"text":"(You can do this by holding a Tracer Cannonball in your hand and interacting with the back part of a Cannon)","italic":true,"color":"gray"},{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=7}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"7/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Fire a Cannon.","color":"yellow"},"\n",{"text":"(You can do this by holding any type of Cannonball in your hand and interacting with the back part of a Cannon)","italic":true,"color":"gray"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=8}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"8/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Store some items in the Team Chest located on your Ship.","color":"yellow"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=9}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"9/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Use your Spotting Spyglass to expose a Ship Weakpoint on the Enemy Ship.","color":"yellow"},"\n",{"text":"(You can do this by looking at an X shaped particle effect while using your Spotting Spyglass for 3 seconds)","italic":true,"color":"gray"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective10=false},scores={notifyobjective=200..,objectivecount=10}] run tellraw @s ["",{"text":"==============================","color":"dark_gray"},"\n",{"text":"Tutorial (","bold":true,"color":"green"},{"text":"10/10","italic":true,"color":"dark_green"},{"text":")","bold":true,"color":"green"},"\n",{"text":"Objective: ","color":"gold"},{"text":"Aim carefully and destroy an exposed Ship Weakpoint on the Enemy Ship.","color":"yellow"},"\n",{"text":"(You can use different amounts of Gunpowder and Tracer Cannonballs to try and aim a shot at the Weakpoint. Make sure the Weakpoint is exposed before you fire your Cannon!)","italic":true,"color":"gray"},"\n",{"text":"==============================","color":"dark_gray"},"\n"]

scoreboard players reset @a[scores={notifyobjective=200..}] notifyobjective