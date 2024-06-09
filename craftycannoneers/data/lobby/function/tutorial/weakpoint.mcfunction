tag @s remove TutorialWeakpoint
scoreboard players add @s WeakpointTutorial 1
scoreboard players set @s[scores={WeakpointTutorial=9..}] WeakpointTutorial 1
advancement grant @s[scores={WeakpointTutorial=8}] only tutorial:objectives/watchtower
tellraw @s[scores={WeakpointTutorial=8}] ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.weakpoint.8","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=7}] ["",{"text":"[7/8] ","color":"gray"},{"translate":"teacher.weakpoint.7","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=6}] ["",{"text":"[6/8] ","color":"gray"},{"translate":"teacher.weakpoint.6","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=5}] ["",{"text":"[5/8] ","color":"gray"},{"translate":"teacher.weakpoint.5","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=4}] ["",{"text":"[4/8] ","color":"gray"},{"translate":"teacher.weakpoint.4","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=3}] ["",{"text":"[3/8] ","color":"gray"},{"translate":"teacher.weakpoint.3","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=2}] ["",{"text":"[2/8] ","color":"gray"},{"translate":"teacher.weakpoint.2","color":"green"},"\n"]
tellraw @s[scores={WeakpointTutorial=1}] ["",{"text":"[1/8] ","color":"gray"},{"translate":"teacher.weakpoint.1","color":"green"},"\n"]

tag @s add TutorialWeakpoint