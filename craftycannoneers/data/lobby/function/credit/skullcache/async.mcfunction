summon text_display 0 0 0 {Tags:["tempnameres"],alignment:"center"}
execute as @e[x=0,type=armor_stand,tag=LobbyAS,limit=6] at @s run function lobby:credit/skullcache/devs
kill @e[x=0,type=text_display,tag=tempnameres]
execute as @e[x=0,type=item_display,tag=SkullCache] at @s run function lobby:credit/skullcache/translators