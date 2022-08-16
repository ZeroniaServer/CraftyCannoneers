tag @s remove TutorialWeakpoint
scoreboard players add @s WeakpointTutorial 1
execute if entity @s[scores={WeakpointTutorial=8..}] run scoreboard players set @s WeakpointTutorial 1

execute if entity @s[scores={WeakpointTutorial=7}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"text":"Try it out! Use your Spotting Spyglass to expose some Weakpoints!","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=6}] run tellraw @s ["",{"text":"[6/6] ","color":"gray"},{"text":"Usually you can only see 1 Weakpoint at a time, but here in this Watchtower, you will be able to spot multiple of them, just so you can properly see what they look like.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=5}] run tellraw @s ["",{"text":"[5/6] ","color":"gray"},{"text":"Hitting exposed Weakpoints using any type of Cannonball will deal a lot of additional damage, so make sure to spot those Weakpoints and aim your shots to try and hit them.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=4}] run tellraw @s ["",{"text":"[4/6] ","color":"gray"},{"text":"Once a Weakpoint is exposed, it will be temporarily visible for your entire team, whether they use their Spotting Spyglass or not. The X shape will turn red and fade out over time, indicating that it's becoming unexposed.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=3}] run tellraw @s ["",{"text":"[3/6] ","color":"gray"},{"text":"While looking through the Spotting Spyglass, you'll notice a subtle white X shape on the enemy ship. In order to expose the Weakpoint, you need to look at this for 3 seconds.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=2}] run tellraw @s ["",{"text":"[2/6] ","color":"gray"},{"text":"This isn't just your ordinary Spyglass: you can use this to spot special Weakpoints on the enemy ship.","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=1}] run tellraw @s ["",{"text":"[1/6] ","color":"gray"},{"text":"All Pirates carry a Spotting Spyglass!","color":"green"},"\n"]

tag @s add TutorialWeakpoint
advancement revoke @s only lobby:weakpointtutorial
advancement grant @s only tutorial:zzzunlockables/tutorial