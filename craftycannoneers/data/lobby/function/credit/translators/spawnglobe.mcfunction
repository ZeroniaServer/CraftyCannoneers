kill @e[tag=TranslatorCredit]

summon text_display -35 -25.7 19 {Tags:["TranslatorCredit","GlobeText"],billboard:"center",transformation:{translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},text:[{translate:"credits.translators",color:"white"}],alignment:"center"}

summon minecraft:item_display -35 -27 19 {Tags:["TranslatorCredit","Stand"],item_display:"fixed",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[137.0f]}}},width:1f,height:1f}
summon minecraft:item_display -35 -26.2 19.55 {Tags:["TranslatorCredit","Globe"],Rotation:[0.0f, -22.5f],item_display:"fixed",width:1f,height:1f,item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjBhYmQ1N2Y2NGJhYTg4ZDZjOTgwMTk0YzQ3Y2QxOGI1Y2ViMjI5NWJlNTliZGMxN2E2Njc1NTljYjVkMDg2NyJ9fX0="}]}}}}
summon interaction -35 -27 19 {width:0.7f,height:1.3f,Tags:["TranslatorCredit"],response:1b}