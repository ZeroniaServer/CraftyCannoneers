tellraw @s ["\n",{"text":"==============","color":"gray"},"\n",{"text":"Stuffy","color":"aqua"},"\n",{"translate":"credits.builder","underlined":true,"color":"yellow"},{"text":"/","underlined":true,"color":"yellow"},{"translate":"credits.level_designer","underlined":true,"color":"yellow"},"\n","\n",{"translate":"credits.socials","italic":true,"color":"dark_gray"},"\n",{"text":"> Twitter","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/StuffyMC_"}},"\n",{"text":"> YouTube","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@Stuffyerface"}},"\n",{"text":"==============","color":"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.4
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=StuffyDeco,limit=1] run particle dust 0 1 1 1 ~ ~1 ~ 0.2 0.5 0.2 0.1 40 normal @s