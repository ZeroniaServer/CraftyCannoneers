data modify storage craftycannoneers:skullcache yzero set from entity @s[tag=YZERODeco] ArmorItems[3].components."minecraft:profile".name
execute if entity @s[tag=YZERODeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value '{"storage":"craftycannoneers:skullcache","nbt":"yzero","color":"green"}'
execute at @s[tag=YZERODeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache stuffy set from entity @s[tag=StuffyDeco] ArmorItems[3].components."minecraft:profile".name
execute if entity @s[tag=StuffyDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value '{"storage":"craftycannoneers:skullcache","nbt":"stuffy","color":"aqua"}'
execute at @s[tag=StuffyDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache evtema set from entity @s[tag=EvtemaDeco] ArmorItems[3].components."minecraft:profile".name
execute if entity @s[tag=EvtemaDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value '{"storage":"craftycannoneers:skullcache","nbt":"evtema","color":"red"}'
execute at @s[tag=EvtemaDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache klar set from entity @s[tag=KlarDeco] ArmorItems[3].components."minecraft:profile".name
execute if entity @s[tag=KlarDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value '{"storage":"craftycannoneers:skullcache","nbt":"klar","color":"gold"}'
execute at @s[tag=KlarDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache carl set from entity @s[tag=CarlDeco] ArmorItems[3].components."minecraft:profile".name
execute if entity @s[tag=CarlDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value '{"storage":"craftycannoneers:skullcache","nbt":"carl","color":"dark_aqua"}'
execute at @s[tag=CarlDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text

data modify storage craftycannoneers:skullcache blocky set from entity @s[tag=BlockyDeco] ArmorItems[3].components."minecraft:profile".name
execute if entity @s[tag=BlockyDeco] run data modify entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text set value '{"storage":"craftycannoneers:skullcache","nbt":"blocky","color":"dark_purple"}'
execute at @s[tag=BlockyDeco] run return run data modify entity @n[type=area_effect_cloud,tag=CreditsName] CustomName set from entity @e[x=0,type=text_display,tag=tempnameres,limit=1] text