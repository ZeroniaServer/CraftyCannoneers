tellraw @a [{translate:"game.applied_updates",color:"green",with:[{translate:"game.name",with:[{translate:"game.crafty"},{translate:"game.cannoneers"}]},{text:"v1.1.6",color:"green"}]}]
execute as @e[type=armor_stand,tag=fakechest] run function chests:kill
execute as @e[type=item_display,tag=CargoBarrelFake] run function game:modifiers/lostcargo/killbarrel

kill @e[type=interaction,tag=protect116]
summon interaction -257 -25 -29 {width:0.5f,height:0.5f,Tags:["protect116"]}
setblock -257 -25 -29 minecraft:potted_fern
summon interaction -265 -25 -23 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -263 -24 -23 minecraft:lectern[facing=south,has_book=false,powered=false]{}
summon interaction -263 -24 -23 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -265 -25 -23 minecraft:lectern[facing=south,has_book=false,powered=false]{}
summon interaction -265 -25 -19 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -265 -25 -19 minecraft:lectern[facing=north,has_book=false,powered=false]{}
summon interaction -47 -25 -11 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -47 -25 -11 minecraft:lectern[facing=west,has_book=false,powered=false]{}
summon interaction -52 -25 0 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -52 -25 0 minecraft:lectern[facing=west,has_book=false,powered=false]{}
summon interaction -53 -25 -2 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -53 -25 -2 minecraft:lectern[facing=west,has_book=false,powered=false]{}
summon interaction -53 -25 2 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -53 -25 2 minecraft:lectern[facing=west,has_book=false,powered=false]{}
summon interaction -55 -25 4 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -55 -25 4 minecraft:lectern[facing=north,has_book=false,powered=false]{}
summon interaction -56 -25 2 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -56 -25 2 minecraft:lectern[facing=east,has_book=false,powered=false]{}
summon interaction -56 -25 2 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -56 -25 2 minecraft:lectern[facing=east,has_book=false,powered=false]{}
summon interaction -56 -25 -2 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -56 -25 -2 minecraft:lectern[facing=east,has_book=false,powered=false]{}

scoreboard players set $WorldVersion CmdData 1160