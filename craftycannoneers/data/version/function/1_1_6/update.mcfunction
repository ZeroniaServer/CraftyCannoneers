tellraw @a [{translate:"game.applied_updates",color:"green",with:[{translate:"game.name",with:[{translate:"game.crafty"},{translate:"game.cannoneers"}]},{text:"v1.1.6",color:"green"}]}]

execute as @e[type=armor_stand,tag=fakechest] run function chests:kill
execute as @e[type=item_display,tag=CargoBarrelFake] run function game:modifiers/lostcargo/killbarrel

#protect extra stuff
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
summon interaction -42 -28 13 {width:1.01f,height:1.01f,Tags:["protect116"]}
setblock -42 -28 13 minecraft:lectern[facing=north,has_book=false,powered=false]{}

#to fix trader nametags
function tutorial:initialize

#probably unnecessary but in case of live updates while people are in parkour
execute as @a[tag=inParkour] run function game:clearinventory
execute as @a[tag=inParkour] run item replace entity @s hotbar.3 with nautilus_shell[item_model=carrot_on_a_stick,custom_name={translate:"parkour.restart",color:"green",bold:true,italic:false},custom_model_data={floats:[1.0f]},custom_data={Restart:1b,NoDrop:1b},tooltip_display={hidden_components:["unbreakable"]},consumable={has_consume_particles:false,sound:"intentionally_empty",consume_seconds:2147483647}]
execute as @a[tag=inParkour] run item replace entity @s hotbar.5 with nautilus_shell[item_model=carrot_on_a_stick,unbreakable={},custom_name={translate:"parkour.quit",color:"red",bold:true,italic:false},custom_model_data={floats:[2.0f]},custom_data={Quit:1b,NoDrop:1b},tooltip_display={hidden_components:["unbreakable"]},consumable={has_consume_particles:false,sound:"intentionally_empty",consume_seconds:2147483647}]

#disable auto skull cache
schedule clear lobby:credit/skullcache/start
schedule clear lobby:credit/skullcache/async

#to fix air gaps
setblock 55 -33 15 sand strict
setblock 55 -37 17 sandstone strict
setblock 85 -37 -17 sandstone strict
fill 85 -36 -20 84 -36 -20 sand strict
setblock 91 -36 18 sand strict
setblock 83 -36 17 sand strict
setblock 101 -40 20 sand strict
setblock 104 -42 24 sand strict
fill 105 -42 22 106 -38 22 sand strict
fill 106 -42 23 102 -42 23 sand strict
setblock 102 -41 23 sand strict
setblock 104 -41 22 sand strict
fill 103 -41 21 101 -41 22 sand strict
fill 103 -40 21 102 -40 21 sand strict
setblock 103 -39 21 sand strict
setblock 91 -36 18 sand strict
setblock 83 -36 17 sand strict
fill 84 -36 -20 85 -36 -20 sand strict
fill -39 -40 -42 -41 -37 -42 sand strict
fill -28 -44 -37 -28 -43 -37 sand strict
fill -27 -50 -44 -25 -49 -44 sand strict
fill -23 -49 -41 -23 -48 -42 sand strict
fill -33 -52 -52 -32 -52 -52 sand strict
fill -20 -53 -44 -21 -50 -44 sand strict
setblock -40 -49 -53 sand strict
setblock -73 -41 -54 sand strict
setblock -75 -41 -55 sand strict
setblock -78 -34 -47 sand strict
setblock -85 -35 -47 sand strict
setblock -90 -36 -45 sand strict
setblock -103 -42 -38 sand strict
setblock -104 -41 -32 sand strict
setblock -102 -40 -19 sand strict
setblock -100 -39 -17 sand strict
setblock -20 -41 -12 sand strict
setblock -24 -44 41 sand strict
setblock -48 -38 52 sand strict
fill -55 -39 54 -51 -41 55 sand strict
fill -56 -40 56 -57 -39 55 sand strict
fill -58 -41 56 -58 -40 56 sand strict
fill -80 -46 47 -80 -45 47 sand strict
setblock -81 -43 40 sand strict
setblock -84 -43 34 sand strict
fill -76 -40 34 -76 -39 34 sand strict
setblock -86 -43 26 sand strict
setblock -83 -39 20 sand strict
setblock -89 -41 10 sand strict
fill -98 -42 -5 -98 -41 -5 sand strict
setblock -99 -42 -6 sand strict
fill -100 -42 -7 -100 -42 -8 sand strict
fill -93 -38 -11 -92 -35 -11 sand strict
fill -91 -35 -39 -91 -33 -38 sand strict
fill -94 -33 -31 -94 -33 -32 sand strict
fill -90 -44 20 -90 -42 20 sand strict
fill -91 -45 20 -91 -45 23 sand strict
setblock -91 -44 20 sand strict
fill -91 -46 24 -91 -46 26 sand strict
fill -70 -36 39 -68 -35 41 sand strict

scoreboard players set $WorldVersion CmdData 1160