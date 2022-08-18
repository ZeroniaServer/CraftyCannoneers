tp @s -264 -20 -21 -90 0
execute at @s run function tutorial:warppads/effects
advancement grant @s only tutorial:zzzunlockables/tutorial
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer
tag @s[advancements={tutorial:objectives/cannon=false}] add Newcomer

tellraw @s[tag=Newcomer] ["",{"text":"Welcome to the ","color":"dark_green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":"!","color":"dark_green"},"\n",{"text":"Here you can learn about important game mechanics by talking to the Pirate Teachers found at the island's points of interest as well as by playing around using the tools found in these areas.","color":"green"},"\n",{"text":"(Speak to all 4 Pirate Teachers on this island to get rid of the Newcomer Notifications!)","italic":true,"color":"dark_green"}]
tag @s remove Newcomer