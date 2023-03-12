tp @s -264 -20 -21 90 0
execute at @s run function tutorial:warppads/effects
advancement grant @s only tutorial:zzzunlockables/tutorial
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer

tellraw @s[tag=Newcomer,tag=!hideTips] ["",{"text":"Welcome to the ","color":"dark_green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":"!","color":"dark_green"},"\n",{"text":"Here you can learn about important game mechanics by talking to the Pirate Teachers at each area and trying things out for yourself!","color":"green"},"\n",{"text":"(Speak to all 4 Pirate Teachers on this island to get rid of these notifications.)\n","italic":true,"color":"dark_green"}]
tag @s remove Newcomer

execute unless score $fixedteachers CmdData matches 1 store success score $fixedteachers CmdData as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {CustomName:'["",{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]'}