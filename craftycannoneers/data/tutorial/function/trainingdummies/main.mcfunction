#> Functionality
execute as @e[type=item_display,tag=TDDisplay] at @s run function tutorial:trainingdummies/functionality

#> Death Detection
execute as @e[type=area_effect_cloud,tag=NameTag] at @s unless entity @e[type=husk,tag=TDZombie,distance=..2] run data merge entity @s {CustomName:["",{text:"❤ ",color:"red"},{text:"00",color:"dark_red"},{text:"/",color:"gray"},{text:"20",color:"dark_green"}]}

#> Dead Item
execute as @e[type=item,tag=DummyDeadItem] run function tutorial:trainingdummies/deaditem

#> Respawn
execute as @e[type=marker,tag=DummyRespawn] at @s run function tutorial:trainingdummies/respawn