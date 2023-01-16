tag @s remove TutorialWeakpoint
scoreboard players add @s WeakpointTutorial 1
execute if entity @s[scores={WeakpointTutorial=9..}] run scoreboard players set @s WeakpointTutorial 1
execute if entity @s[scores={WeakpointTutorial=8}] run advancement grant @s only tutorial:objectives/watchtower
execute if entity @s[scores={WeakpointTutorial=8}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.weakpoint.8","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=7}] run tellraw @s ["",{"text":"[7/8] ","color":"gray"},{"translate":"teacher.weakpoint.7","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=6}] run tellraw @s ["",{"text":"[6/8] ","color":"gray"},{"translate":"teacher.weakpoint.6","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=5}] run tellraw @s ["",{"text":"[5/8] ","color":"gray"},{"translate":"teacher.weakpoint.5","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=4}] run tellraw @s ["",{"text":"[4/8] ","color":"gray"},{"translate":"teacher.weakpoint.4","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=3}] run tellraw @s ["",{"text":"[3/8] ","color":"gray"},{"translate":"teacher.weakpoint.3","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=2}] run tellraw @s ["",{"text":"[2/8] ","color":"gray"},{"translate":"teacher.weakpoint.2","color":"green"},"\n"]
execute if entity @s[scores={WeakpointTutorial=1}] run tellraw @s ["",{"text":"[1/8] ","color":"gray"},{"translate":"teacher.weakpoint.1","color":"green"},"\n"]

tag @s add TutorialWeakpoint
advancement revoke @s only lobby:weakpointtutorial