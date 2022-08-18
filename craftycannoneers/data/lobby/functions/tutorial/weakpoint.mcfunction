tag @s remove TutorialWeakpoint
scoreboard players add @s WeakpointTutorial 1
execute if entity @s[scores={WeakpointTutorial=9..}] run scoreboard players set @s WeakpointTutorial 1
execute if entity @s[scores={WeakpointTutorial=9}] run advancement grant @s only tutorial:objectives/watchtower
execute if entity @s[scores={WeakpointTutorial=8}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"Now it's your turn. Use your Spotting Spyglass to expose some Weakpoints!","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=7}] run tellraw @s ["",{"text":"[7/8] ","color":"gray"},{"text":"Note that you can only spot one Weakpoint at a time in a real game. However, here at the Watchtower, you can see multiple at once just so you can get a feel for exposing them.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=6}] run tellraw @s ["",{"text":"[6/8] ","color":"gray"},{"text":"Once you hit one Weakpoint, the next one becomes visible. Keep on spotting and hitting them until there are none left!","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=5}] run tellraw @s ["",{"text":"[5/8] ","color":"gray"},{"text":"Hitting exposed Weakpoints with any Cannonball (besides the Player and Tracer ones) will deal a ton of extra damage, so make sure to spot those Weakpoints and aim your shots to try and hit them!","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=4}] run tellraw @s ["",{"text":"[4/8] ","color":"gray"},{"text":"Once a Weakpoint is exposed, it will become temporarily visible for your entire team. The X shape will turn red and then fade to white over time, indicating that it's becoming unexposed. You can always spot it again to re-expose it.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=3}] run tellraw @s ["",{"text":"[3/8] ","color":"gray"},{"text":"While looking through the Spotting Spyglass, you'll notice a subtle white X shape on the enemy ship. In order to expose the Weakpoint, you need to look at the X for 3 seconds.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=2}] run tellraw @s ["",{"text":"[2/8] ","color":"gray"},{"text":"All Pirates carry a Spotting Spyglass. But this isn't just your ordinary Spyglass: you can use this one to spot special Weakpoints on the enemy ship.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=1}] run tellraw @s ["",{"text":"[1/8] ","color":"gray"},{"text":"Welcome to the Watchtower! Here, you can learn what Weakpoints are and how to spot them.","color":"green"},"\n"]

tag @s add TutorialWeakpoint
advancement revoke @s only lobby:weakpointtutorial