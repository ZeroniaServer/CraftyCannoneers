tag @s remove TutorialChest
scoreboard players add @s ChestTutorial 1
scoreboard players set @s[scores={ChestTutorial=10..}] ChestTutorial 1

advancement grant @s[scores={ChestTutorial=9}] only tutorial:objectives/treasure
tellraw @s[scores={ChestTutorial=9}] ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.chest.5","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=8}] ["",{"text":"[8/9] ","color":"gray"},{"translate":"teacher.chest.4","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=7}] ["",{"text":"[7/9] ","color":"gray"},{"translate":"teacher.chest.3","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=6}] ["",{"text":"[6/9] ","color":"gray"},{"translate":"teacher.chest.skeleton","bold":true,"color":"dark_red"},{"text":": ","color":"green"},{"translate":"teacher.chest.skeleton.contents","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=5}] ["",{"text":"[5/9] ","color":"gray"},{"translate":"teacher.chest.rare","bold":true,"color":"dark_purple"},{"text":": ","color":"green"},{"translate":"teacher.chest.rare.contents","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=4}] ["",{"text":"[4/9] ","color":"gray"},{"translate":"teacher.chest.uncommon","bold":true,"color":"dark_aqua"},{"text":": ","color":"green"},{"translate":"teacher.chest.uncommon.contents","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=3}] ["",{"text":"[3/9] ","color":"gray"},{"translate":"teacher.chest.common","bold":true,"color":"gray"},{"text":": ","color":"green"},{"translate":"teacher.chest.common.contents","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=2}] ["",{"text":"[2/9] ","color":"gray"},{"translate":"teacher.chest.2","color":"green"},"\n"]
tellraw @s[scores={ChestTutorial=1}] ["",{"text":"[1/9] ","color":"gray"},{"translate":"teacher.chest.1","color":"green"},"\n"]

tag @s add TutorialChest
advancement revoke @s only lobby:chesttutorial