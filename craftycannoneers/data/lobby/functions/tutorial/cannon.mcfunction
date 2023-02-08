tag @s remove TutorialCannon
scoreboard players add @s CannonTutorial 1
scoreboard players set @s[scores={CannonTutorial=8..}] CannonTutorial 1

advancement grant @s[scores={CannonTutorial=7}] only tutorial:objectives/cannon
tellraw @s[scores={CannonTutorial=7}] ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.cannon.7","color":"green"},"\n"]
tellraw @s[scores={CannonTutorial=6}] ["",{"text":"[6/7] ","color":"gray"},{"translate":"teacher.cannon.6","color":"green"},"\n"]
tellraw @s[scores={CannonTutorial=5}] ["",{"text":"[5/7] ","color":"gray"},{"translate":"teacher.cannon.5","color":"green"},"\n"]
tellraw @s[scores={CannonTutorial=4}] ["",{"text":"[4/7] ","color":"gray"},{"translate":"teacher.cannon.4","color":"green"},"\n"]
tellraw @s[scores={CannonTutorial=3}] ["",{"text":"[3/7] ","color":"gray"},{"translate":"teacher.cannon.3","color":"green"},"\n"]
tellraw @s[scores={CannonTutorial=2}] ["",{"text":"[2/7] ","color":"gray"},{"translate":"teacher.cannon.2","color":"green"},"\n"]
tellraw @s[scores={CannonTutorial=1}] ["",{"text":"[1/7] ","color":"gray"},{"translate":"teacher.cannon.1","color":"green"},"\n"]

tag @s add TutorialCannon