tellraw @s ["\n",{"text":"==============","color":"gray"},"\n",{"storage":"craftycannoneers:skullcache","nbt":"stuffy","color":"aqua"},"\n",{"translate":"credits.producer","underlined":true,"color":"yellow"},"\n","\n",{"translate":"credits.socials","italic":true,"color":"dark_gray"},"\n",{"text":"> X          ","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://x.com/StuffyMC_"}},"\n",{"text":"> YouTube","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@Stuffyerface"}},"\n",{"text":"==============","color":"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.4
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=StuffyDeco,limit=1] run particle dust{color:[0.0,1.0,1.0],scale:1.0} ~ ~1 ~ 0.2 0.5 0.2 0.1 40 normal @s