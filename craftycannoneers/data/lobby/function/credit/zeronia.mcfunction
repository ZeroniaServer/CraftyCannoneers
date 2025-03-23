tellraw @s ["\n",{text:"============ ",color:"gray"},{translate:"zeronia",color:"green"},{text:" ============",color:"gray"},"\n",{translate:"credits.zeronia",color:"yellow"},"\n",{translate:"credits.discord",underlined:true,color:"#7358FE",click_event:{action:"open_url",url:"https://discord.gg/X9bZgw7"}},"\n","\n",{translate:"credits.socials",color:"dark_gray"},"\n",{text:"> PlanetMinecraft",bold:true,color:"#6BC010",click_event:{action:"open_url",url:"https://www.planetminecraft.com/member/zeroniaserver/"}},"\n",{text:"> YouTube",bold:true,color:"red",click_event:{action:"open_url",url:"https://www.youtube.com/@Zeronia"}},"\n",{text:"> X          ",bold:true,color:"dark_aqua",click_event:{action:"open_url",url:"https://x.com/ZeroniaServer"}},"\n",{text:"================================",color:"gray"},"\n"]
playsound clickcredits master @s ~ ~ ~ 1 1.8
playsound clickzeronia master @s ~ ~ ~ 1 1
advancement grant @s only tutorial:zzzunlockables/credits
execute at @e[type=interaction,tag=ZeroniaCredit,limit=1] run particle block{block_state:"command_block"} ~ ~ ~ 0.2 0.2 0.2 0.1 50 normal @s
execute at @e[type=interaction,tag=ZeroniaCredit,limit=1] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal @s