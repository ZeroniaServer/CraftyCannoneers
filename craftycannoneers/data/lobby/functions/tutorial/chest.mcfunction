tag @s remove TutorialChest
scoreboard players add @s ChestTutorial 1
execute if entity @s[scores={ChestTutorial=10..}] run scoreboard players set @s ChestTutorial 1

execute if entity @s[scores={ChestTutorial=9}] run advancement grant @s only tutorial:objectives/treasure
execute if entity @s[scores={ChestTutorial=9}] run tellraw @s ["",{"text":"[✔] ","color":"gold"},{"translate":"teacher.chest.5","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=8}] run tellraw @s ["",{"text":"[8/9] ","color":"gray"},{"translate":"teacher.chest.4","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=7}] run tellraw @s ["",{"text":"[7/9] ","color":"gray"},{"translate":"teacher.chest.3","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=6}] run tellraw @s ["",{"text":"[6/9] ","color":"gray"},{"translate":"teacher.chest.skeleton","bold":true,"color":"dark_red"},{"text":": ","color":"green"},{"translate":"teacher.chest.skeleton.contents","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=5}] run tellraw @s ["",{"text":"[5/9] ","color":"gray"},{"translate":"teacher.chest.rare","bold":true,"color":"dark_purple"},{"text":": ","color":"green"},{"translate":"teacher.chest.rare.contents","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=4}] run tellraw @s ["",{"text":"[4/9] ","color":"gray"},{"translate":"teacher.chest.uncommon","bold":true,"color":"dark_aqua"},{"text":": ","color":"green"},{"translate":"teacher.chest.uncommon.contents","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=3}] run tellraw @s ["",{"text":"[3/9] ","color":"gray"},{"translate":"teacher.chest.common","bold":true,"color":"gray"},{"text":": ","color":"green"},{"translate":"teacher.chest.common.contents","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=2}] run tellraw @s ["",{"text":"[2/9] ","color":"gray"},{"translate":"teacher.chest.2","color":"green"},"\n"]
execute if entity @s[scores={ChestTutorial=1}] run tellraw @s ["",{"text":"[1/9] ","color":"gray"},{"translate":"teacher.chest.1","color":"green"},"\n"]

tag @s add TutorialChest
advancement revoke @s only lobby:chesttutorial