tellraw @s ["\n",{text:"==============",color:"gray"},"\n",{text:"Stuffy",color:"aqua"},"\n",{translate:"credits.producer",underlined:true,color:"yellow"},"\n","\n",{translate:"credits.socials",italic:true,color:"dark_gray"},"\n",{text:"> X          ",bold:true,color:"dark_aqua",click_event:{action:"open_url",url:"https://x.com/StuffyMC_"}},"\n",{text:"> YouTube",bold:true,color:"red",click_event:{action:"open_url",url:"https://www.youtube.com/@Stuffyerface"}},"\n",{text:"==============",color:"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.4
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=armor_stand,tag=StuffyDeco,limit=1] run particle dust{color:[0.0,1.0,1.0],scale:1.0} ~ ~1 ~ 0.2 0.5 0.2 0.1 40 normal @s