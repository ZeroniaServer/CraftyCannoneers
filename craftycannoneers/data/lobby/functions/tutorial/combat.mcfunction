tag @s remove TutorialCombat
scoreboard players add @s CombatTutorial 1
execute if entity @s[scores={CombatTutorial=8..}] run scoreboard players set @s CombatTutorial 1
execute if entity @s[scores={CombatTutorial=7}] run advancement grant @s only tutorial:objectives/combat
execute if entity @s[scores={CombatTutorial=7}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.combat.7","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=6}] run tellraw @s ["",{"text":"[6/7] ","color":"gray"},{"translate":"teacher.combat.6","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=5}] run tellraw @s ["",{"text":"[5/7] ","color":"gray"},{"translate":"teacher.combat.5","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=4}] run tellraw @s ["",{"text":"[4/7] ","color":"gray"},{"translate":"teacher.combat.4","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=3}] run tellraw @s ["",{"text":"[3/7] ","color":"gray"},{"translate":"teacher.combat.3","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=2}] run tellraw @s ["",{"text":"[2/7] ","color":"gray"},{"translate":"teacher.combat.2","color":"green"},"\n"]
execute if entity @s[scores={CombatTutorial=1}] run tellraw @s ["",{"text":"[1/7] ","color":"gray"},{"translate":"teacher.combat.1","color":"green"},"\n"]

tag @s add TutorialCombat
advancement revoke @s only lobby:combattutorial