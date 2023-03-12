tp @s -264 -20 -21 90 0
execute at @s run function tutorial:warppads/effects
advancement grant @s only tutorial:zzzunlockables/tutorial
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer

tellraw @s[tag=Newcomer,tag=!hideTips] ["",{"translate":"tutorial.welcome","color":"dark_green","with":[{"translate":"tutorial.training_island","bold":true,"color":"aqua"}]},"\n",{"translate":"tutorial.description","color":"green"},"\n",{"translate":"tutorial.note","italic":true,"color":"dark_green"},{"text":"\n"}]
tag @s remove Newcomer

execute unless score $fixedteachers CmdData matches 1 store success score $fixedteachers CmdData as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {CustomName:'["",{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]'}