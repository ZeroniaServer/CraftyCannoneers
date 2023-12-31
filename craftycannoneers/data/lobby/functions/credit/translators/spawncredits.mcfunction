tag @e[tag=TranslatorCredit,tag=Credit] add Old
scoreboard players reset @e[tag=TranslatorCredit,tag=Old] CmdData


#> Page 1
#ZeroIceBear - Chinese
execute if score $TranslatorPage CmdData matches 1 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1447124829,-904897643,-1554500126,1107710998],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjA0ZTQxNTM1NzMzNTg2YTVkMzJjMzdjZjg0ZjA3MzZjNzZkOTk1YzY2ZDBlMjA3NDcyMmM1MDljNmE0ZDJhNCJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"ZeroIceBear","color":"#FFAA00"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_cn:","color":"white"}]',alignment:"center"}
#RedstoneYay - German
execute if score $TranslatorPage CmdData matches 1 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1277736027,1454528891,-1248103416,1618232066],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWU2M2ExMTQwYjgwNDg2YzIxODI3MjFkY2UwMDcwNTVlYmRhZDczODhhZDkzMDEzY2Q3NjQ2NjhjZGUzZTViOCJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"RedstoneYay","color":"#FF7FBF"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_de:","color":"white"}]',alignment:"center"}
#CapitaineMinus - French
execute if score $TranslatorPage CmdData matches 1 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1286228761,695294407,-1789579354,-318119072],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU4Y2ZkNDRhZTRhY2Y4ZTc2MDMxYmFhOTdkYjgzODBiNTdkYWE4YmQ4MTJmNjIzYTczYTUzY2UyNjVkZTNjZCJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"CapitaineMinus","color":"#C412FE"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 1 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_fr:","color":"white"}]',alignment:"center"}
#Globe Text
execute if score $TranslatorPage CmdData matches 1 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[1/3]","color":"white"}]',start_interpolation:0,background:0,billboard:"fixed",interpolation_duration:6,transformation:{translation:[0.0f,-1.0f,0.7f]}}

#> Page 2
#Pingoda - Italian
execute if score $TranslatorPage CmdData matches 2 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-151155328,-324971124,-2103666575,-508139281],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJmNTdjMzliNmI2NDgzNTBmM2JjZThhM2QxOGUxNzE3OTFjMzIwMGNlMGI3NzFmYjY1ZTBlYWM2NTllZTVlOCJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Pingoda","color":"#9100FF"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_it:","color":"white"}]',alignment:"center"}
#Louuuise - Danish
execute if score $TranslatorPage CmdData matches 2 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;883446245,1791906698,-1515707702,-392176625],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWZlMjg2NGQ1MzIzYmQ1NjAzMTJhOThmOGQ4MGFjM2NhOWUxMWQ0YWY1MWIzYTViODUwYTkzMjliMTM5ODMxMyJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Louuuise","color":"#DAE700"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_dk:","color":"white"}]',alignment:"center"}
#YZEROgame - Dutch
execute if score $TranslatorPage CmdData matches 2 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-635478174,1741053698,-1947560955,2058985768],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZmZjOWJmNWYyYThiMDU4NzcxODc1OTUxMDg1YTU0N2QxYjc1YzJkM2U2YTRhNWEzYWVlMTc1MjNjNzUyZCJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"YZEROgame","color":"#00ff00"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 2 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_nl:","color":"white"}]',alignment:"center"}
#Globe Text
execute if score $TranslatorPage CmdData matches 2 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[2/3]","color":"white"}]',start_interpolation:0,background:0,billboard:"fixed",interpolation_duration:6,transformation:{translation:[0.0f,-1.0f,0.7f]}}

#> Page 3
#Tai_zazanek - Japanese
execute if score $TranslatorPage CmdData matches 3 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1263501253,681657293,-1621306691,-898150073],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA3MzlhNWMxOTE3OWQ4MTAzNjVlYjY2NjljYTVhZTc4ZjEwNjBkYTU1ZGRkN2VlMWE1OTI4ZjkyMzRkMjUzYiJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Tai_zazanek","color":"#c0c0c0"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_jp:","color":"white"}]',alignment:"center"}
#Stuffy - Pirate Speak
execute if score $TranslatorPage CmdData matches 3 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1718583129,-1834787012,-1090139963,-643778899],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDg2NDQzNGI4ZWQwOThkMmY3MDMwMWE1NDUxMGE3ZGRjNjc5ZDQzNDIwNjA5NWEyZWViODZmMGJhNzczODU3YiJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Stuffy","color":"aqua"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":pirate_flag:","color":"white"}]',alignment:"center"}
#Evtema3 - Upsidedown English
execute if score $TranslatorPage CmdData matches 3 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;444916528,336090850,-1152046224,-1362953690],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI1YWVlNzMxOTI3ODVlNjBkY2QzN2U0YWNlMzkzMDUyOTI5ZDk5NDVhNWJkODU5YzU3NjE3MmRlMjMxYzFiYiJ9fX0="}]}}}}}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Name"],billboard:"fixed",transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"text":"Evtema3","color":"red"}]',alignment:"center"}
execute if score $TranslatorPage CmdData matches 3 run summon text_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Flag"],billboard:"fixed",background:0,transformation:{translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},text:'[{"translate":":flag_au:","color":"white"}]',alignment:"center"}
#Globe Text
execute if score $TranslatorPage CmdData matches 3 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[3/3]","color":"white"}]',start_interpolation:0,background:0,billboard:"fixed",interpolation_duration:6,transformation:{translation:[0.0f,-1.0f,0.7f]}}

execute as @e[tag=Name,tag=!Old] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.0f,0.0f,0.0f]}}



##> Template
##? - ?
#execute if score $TranslatorPage CmdData matches 69 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit1","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Question}}}
##? - ?
#execute if score $TranslatorPage CmdData matches 69 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit2","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Question}}}
##? - ?
#execute if score $TranslatorPage CmdData matches 69 run summon item_display -35 -26.2 19.7 {Tags:["TranslatorCredit","Credit","Credit3","Skull"],start_interpolation:0,interpolation_duration:0,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},item_display:"fixed",item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Question}}}
##Globe Text
#execute if score $TranslatorPage CmdData matches 69 run data merge entity @e[tag=GlobeText,limit=1] {text:'[{"text":"[0/0]","color":"white"}]'}