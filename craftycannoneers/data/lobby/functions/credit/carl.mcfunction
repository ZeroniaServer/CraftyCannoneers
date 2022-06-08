tellraw @s ["\n",{"text":"==============","color":"gray"},"\n",{"text":"Carl510","color":"dark_aqua"},"\n",{"text":"Builder/Logo Designer","underlined":true,"color":"yellow"},"\n","\n",{"text":"Click here to visit socials:","italic":true,"color":"dark_gray"},"\n",{"text":"> Twitter","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/Carloski557"}},"\n",{"text":"==============","color":"gray"},"\n"]
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1.4
advancement revoke @s only lobby:carl
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=CarlDeco] run particle dust 0 0.3 1 1 ~ ~1 ~ 0.2 0.5 0.2 0.1 40 force @s