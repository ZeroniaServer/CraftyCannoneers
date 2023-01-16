tp @s -264 -20 -21 90 0
execute at @s run function tutorial:warppads/effects
advancement grant @s only tutorial:zzzunlockables/tutorial
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer

tellraw @s[tag=Newcomer,tag=!hideTips] ["",{"translate":"tutorial.welcome","color":"dark_green"},{"translate":"tutorial.training_island","bold":true,"color":"aqua"},{"text":"!","color":"dark_green"},"\n",{"text":"tutorial.description","color":"green"},"\n",{"translate":"tutorial.note","italic":true,"color":"dark_green"},{"text":"\n"}]
tag @s remove Newcomer