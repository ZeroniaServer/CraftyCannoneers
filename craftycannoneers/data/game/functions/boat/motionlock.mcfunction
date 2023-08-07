execute on passengers run kill @s[type=interaction]
execute on passengers run tag @s add passenger
execute at @s[tag=1,tag=Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","1"],width:0,height:0,response:0b}
execute at @s[tag=2,tag=Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","2"],width:0,height:0,response:0b}
execute at @s[tag=3,tag=Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","3"],width:0,height:0,response:0b}
execute at @s[tag=4,tag=Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","4"],width:0,height:0,response:0b}
execute at @s[tag=1,tag=!Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","1"],width:2,height:1,response:1b}
execute at @s[tag=2,tag=!Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","2"],width:2,height:1,response:1b}
execute at @s[tag=3,tag=!Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","3"],width:2,height:1,response:1b}
execute at @s[tag=4,tag=!Sailing] run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger","4"],width:2,height:1,response:1b}
execute on passengers run ride @s[type=!player] dismount
execute on passengers if entity @s[type=player] run function game:boat/mountlock
ride @e[type=interaction,tag=passenger,limit=1] mount @s
ride @e[type=item_display,tag=passenger,tag=BoatBanner,limit=1] mount @s
ride @e[type=item_display,tag=passenger,tag=BoatCannonCart,limit=1] mount @s
ride @e[type=item_display,tag=passenger,tag=BoatCannonBarrel,limit=1] mount @s
execute if score $BoatCannons CmdData matches 1 run ride @e[type=camel,tag=passenger,limit=1] mount @s
execute on passengers run tag @s remove passenger
execute on passengers on passengers run tag @s remove passenger
tag @s add motionlock