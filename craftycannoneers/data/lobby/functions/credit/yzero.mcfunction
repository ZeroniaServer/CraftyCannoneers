tellraw @s ["\n",{"text":"==============","color":"gray"},"\n",{"text":"YZEROgame","color":"green"},"\n",{"text":"Game Developer","underlined":true,"color":"yellow"},"\n","\n",{"text":"Click here to visit socials:","italic":true,"color":"dark_gray"},"\n",{"text":"> YouTube","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},"\n",{"text":"> Twitter","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/yzerogame"}},"\n",{"text":"> Twitch","bold":true,"color":"#C039FE","clickEvent":{"action":"open_url","value":"https://www.twitch.tv/yzerogame"}},"\n",{"text":"==============","color":"gray"},"\n"]
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1.4
advancement revoke @s only lobby:yzero
execute at @e[type=armor_stand,tag=YZERODeco] run particle dust 0 1 0 1 ~ ~1 ~ 0.2 0.5 0.2 0.1 40 force @s