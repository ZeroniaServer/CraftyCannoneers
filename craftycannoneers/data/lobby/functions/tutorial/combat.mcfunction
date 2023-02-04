tag @s remove TutorialCombat
scoreboard players add @s CombatTutorial 1
scoreboard players set @s[scores={CombatTutorial=8..}] CombatTutorial 1
advancement grant @s[scores={CombatTutorial=7}] only tutorial:objectives/combat
tellraw @s[scores={CombatTutorial=7}] ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.combat.7","color":"green"},"\n"]
tellraw @s[scores={CombatTutorial=6}] ["",{"text":"[6/7] ","color":"gray"},{"translate":"teacher.combat.6","color":"green"},"\n"]
tellraw @s[scores={CombatTutorial=5}] ["",{"text":"[5/7] ","color":"gray"},{"translate":"teacher.combat.5","color":"green"},"\n"]
tellraw @s[scores={CombatTutorial=4}] ["",{"text":"[4/7] ","color":"gray"},{"translate":"teacher.combat.4","color":"green"},"\n"]
tellraw @s[scores={CombatTutorial=3}] ["",{"text":"[3/7] ","color":"gray"},{"translate":"teacher.combat.3","color":"green"},"\n"]
tellraw @s[scores={CombatTutorial=2}] ["",{"text":"[2/7] ","color":"gray"},{"translate":"teacher.combat.2","color":"green"},"\n"]
tellraw @s[scores={CombatTutorial=1}] ["",{"text":"[1/7] ","color":"gray"},{"translate":"teacher.combat.1","color":"green"},"\n"]

tag @s add TutorialCombat
advancement revoke @s only lobby:combattutorial