data modify storage craftycannoneers:skullcache yzero set from entity @s[tag=YZERODeco] equipment.head.components."minecraft:profile".name
execute if entity @s[tag=YZERODeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value {"storage":"craftycannoneers:skullcache","nbt":"yzero",color:"green"}
item replace entity @s[tag=YZEROdeco] armor.head from entity @e[type=item_display,tag=SkullCache,tag=yzero,limit=1] contents
execute at @s[tag=YZERODeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache stuffy set from entity @s[tag=StuffyDeco] equipment.head.components."minecraft:profile".name
execute if entity @s[tag=StuffyDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value {"storage":"craftycannoneers:skullcache","nbt":"stuffy",color:"aqua"}
item replace entity @s[tag=StuffyDeco] armor.head from entity @e[type=item_display,tag=SkullCache,tag=stuffy,limit=1] contents
execute at @s[tag=StuffyDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache evtema set from entity @s[tag=EvtemaDeco] equipment.head.components."minecraft:profile".name
execute if entity @s[tag=EvtemaDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value {"storage":"craftycannoneers:skullcache","nbt":"evtema",color:"red"}
item replace entity @s[tag=EvtemaDeco] armor.head from entity @e[type=item_display,tag=SkullCache,tag=evtema,limit=1] contents
execute at @s[tag=EvtemaDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache klar set from entity @s[tag=KlarDeco] equipment.head.components."minecraft:profile".name
execute if entity @s[tag=KlarDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value {"storage":"craftycannoneers:skullcache","nbt":"klar",color:"gold"}
item replace entity @s[tag=KlarDeco] armor.head from entity @e[type=item_display,tag=SkullCache,tag=klar,limit=1] contents
execute at @s[tag=KlarDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache carl set from entity @s[tag=CarlDeco] equipment.head.components."minecraft:profile".name
execute if entity @s[tag=CarlDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value {"storage":"craftycannoneers:skullcache","nbt":"carl",color:"dark_aqua"}
item replace entity @s[tag=CarlDeco] armor.head from entity @e[type=item_display,tag=SkullCache,tag=carl,limit=1] contents
execute at @s[tag=CarlDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache blocky set from entity @s[tag=BlockyDeco] equipment.head.components."minecraft:profile".name
execute if entity @s[tag=BlockyDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value {"storage":"craftycannoneers:skullcache","nbt":"blocky",color:"dark_purple"}
item replace entity @s[tag=BlockyDeco] armor.head from entity @e[type=item_display,tag=SkullCache,tag=blocky,limit=1] contents
execute at @s[tag=BlockyDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text