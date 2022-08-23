#> Arena water
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s run function game:ingame/water
scoreboard players reset @a[scores={drowning=80..}] drowning
scoreboard players reset @a[team=!Purple,team=!Orange,scores={drowning=1..}] drowning

#> Team Chests
execute as @e[type=chest_minecart,tag=orangeteamchest,limit=1] at @s positioned 68.50 -28 60.50 rotated 0 0 run function game:teamchest/orange/main
execute as @e[type=chest_minecart,tag=purpleteamchest,limit=1] at @s positioned 72.50 -28 -59.50 rotated 0 0 run function game:teamchest/purple/main
fill 69 -29 60 67 -29 60 spruce_slab[type=top]
fill 71 -29 -60 73 -29 -60 spruce_slab[type=top]

#> Bossbars
bossbar set purpleship3 players @a[team=Spectator]
bossbar set purpleship players @a[team=!Lobby,team=!Spectator,team=!Orange]
bossbar set orangeship players @a[team=!Lobby,team=!Orange]
bossbar set orangeship2 players @a[team=Orange]
bossbar set purpleship2 players @a[team=Orange]

bossbar set purpleship name ["",{"text":"Purple (You): ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
bossbar set orangeship2 name ["",{"text":"Orange (You): ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
bossbar set purpleship3 name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]

execute store result bossbar purpleship max run scoreboard players get $ShipHP CmdData
execute store result bossbar purpleship2 max run scoreboard players get $ShipHP CmdData
execute store result bossbar purpleship3 max run scoreboard players get $ShipHP CmdData
execute store result bossbar orangeship max run scoreboard players get $ShipHP CmdData
execute store result bossbar orangeship2 max run scoreboard players get $ShipHP CmdData

execute if score $gamestate CmdData matches 3 run scoreboard players reset $DamagePurple CmdData
execute if score $gamestate CmdData matches 3 run scoreboard players reset $DamageOrange CmdData
execute if score $gamestate CmdData matches 3 run scoreboard players reset $CritPurple CmdData
execute if score $gamestate CmdData matches 3 run scoreboard players reset $CritOrange CmdData

execute unless score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship color purple
execute unless score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship2 color purple
execute unless score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship3 color purple
execute unless score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship color yellow
execute unless score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship2 color yellow

execute if score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship color white
execute if score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship2 color white
execute if score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship3 color white
execute if score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship color white
execute if score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship2 color white

execute if score $CritPurple CmdData matches 1.. run bossbar set purpleship color red
execute if score $CritPurple CmdData matches 1.. run bossbar set purpleship2 color red
execute if score $CritPurple CmdData matches 1.. run bossbar set purpleship3 color red
execute if score $CritOrange CmdData matches 1.. run bossbar set orangeship color red
execute if score $CritOrange CmdData matches 1.. run bossbar set orangeship2 color red

function game:trackdamage
function game:trackdamage
function game:trackdamage
function game:trackdamage