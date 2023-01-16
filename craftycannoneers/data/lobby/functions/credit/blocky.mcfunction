tellraw @s ["\n",{"text":"==============","color":"gray"},"\n",{"text":"BlockyM_","color":"dark_purple"},"\n",{"translate":"credits.trailer_director","underlined":true,"color":"yellow"},"\n","\n",{"translate":"credits.socials","italic":true,"color":"dark_gray"},"\n",{"text":"> YouTube","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/c/BlockyM"}},"\n",{"text":"==============","color":"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.4
advancement revoke @s only lobby:blocky
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=BlockyDeco] run particle dust 1 0 1 1 ~ ~1 ~ 0.2 0.5 0.2 0.1 40 normal @s