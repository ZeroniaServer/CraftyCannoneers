tellraw @s ["\n",{"text":"==============","color":"gray"},"\n",{"text":"Stuffy","color":"aqua"},"\n",{"text":"Builder","underlined":true,"color":"yellow"},"\n","\n",{"text":"Click here to visit socials:","italic":true,"color":"dark_gray"},"\n",{"text":"> Twitter","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/StuffyMC_"}},"\n",{"text":"==============","color":"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.4
advancement revoke @s only lobby:stuffy
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=StuffyDeco] run particle dust 0 1 1 1 ~ ~1 ~ 0.2 0.5 0.2 0.1 40 force @s