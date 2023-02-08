tellraw @s ["\n","\n","\n","\n",{"text":"==============","color":"gray"},"\n",{"text":"Klariaon","color":"gold"},"\n",{"translate":"credits.builder","underlined":true,"color":"yellow"},"\n",{"text":"==============","color":"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.4
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=KlarDeco,limit=1] run particle dust 0.96 0.878 0.258 1 ~ ~1 ~ 0.2 0.5 0.2 0.1 40 normal @s