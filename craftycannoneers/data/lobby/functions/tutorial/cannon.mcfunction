tag @s remove TutorialCannon
scoreboard players add @s CannonTutorial 1
execute if entity @s[scores={CannonTutorial=8..}] run scoreboard players set @s CannonTutorial 1

execute if entity @s[scores={CannonTutorial=7}] run advancement grant @s only tutorial:objectives/cannon
execute if entity @s[scores={CannonTutorial=7}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.cannon.7","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=6}] run tellraw @s ["",{"text":"[6/7] ","color":"gray"},{"translate":"teacher.cannon.6","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=5}] run tellraw @s ["",{"text":"[5/7] ","color":"gray"},{"translate":"teacher.cannon.5","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=4}] run tellraw @s ["",{"text":"[4/7] ","color":"gray"},{"translate":"teacher.cannon.4","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=3}] run tellraw @s ["",{"text":"[3/7] ","color":"gray"},{"translate":"teacher.cannon.3","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=2}] run tellraw @s ["",{"text":"[2/7] ","color":"gray"},{"translate":"teacher.cannon.2","color":"green"},"\n"]
execute if entity @s[scores={CannonTutorial=1}] run tellraw @s ["",{"text":"[1/7] ","color":"gray"},{"translate":"teacher.cannon.1","color":"green"},"\n"]

tag @s add TutorialCannon
advancement revoke @s only lobby:cannontutorial
